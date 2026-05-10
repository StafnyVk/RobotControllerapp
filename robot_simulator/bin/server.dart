import 'dart:async';
import 'dart:io';

import 'package:args/args.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:shelf_router/shelf_router.dart';

import 'package:robot_simulator/simulator.dart';

Future<void> main(List<String> argv) async {
  final parser = ArgParser()
    ..addOption('port', abbr: 'p', defaultsTo: '8080')
    ..addOption(
      'latency',
      abbr: 'l',
      defaultsTo: '0',
      help: 'Artificial per-request latency in milliseconds.',
    )
    ..addFlag(
      'chaos',
      abbr: 'c',
      defaultsTo: false,
      help: 'Randomly fail 5% of commands and drop WS sockets every 45-75s.',
    )
    ..addFlag('help', abbr: 'h', negatable: false);

  final args = parser.parse(argv);
  if (args['help'] as bool) {
    stdout.writeln('Robot simulator server\n${parser.usage}');
    return;
  }

  final port = int.parse(args['port'] as String);
  final latencyMs = int.parse(args['latency'] as String);
  final chaos = args['chaos'] as bool;

  // Completer lets the onDead callback reference `server` after it is created.
  final deadCompleter = Completer<void>();

  final machine = RobotStateMachine(
    chaos: chaos,
    onDead: () {
      if (!deadCompleter.isCompleted) deadCompleter.complete();
    },
  )..start();

  final broadcaster = TelemetryBroadcaster(machine, chaos: chaos);

  final api = buildRouter(machine);
  final root = Router()
    ..mount('/', api)
    ..get('/ws/telemetry', broadcaster.handler);

  final pipeline = Pipeline()
      .addMiddleware(_logRequests())
      .addMiddleware(_injectLatency(latencyMs))
      .addHandler(root.call);

  final server = await shelf_io.serve(pipeline, InternetAddress.anyIPv4, port);
  server.autoCompress = true;

  stdout.writeln('Robot simulator listening on http://${server.address.host}:${server.port}');
  stdout.writeln('  GET  /status');
  stdout.writeln('  POST /connect | /disconnect | /move | /stop');
  stdout.writeln('  WS   /ws/telemetry');
  stdout.writeln('  chaos=$chaos  latency=${latencyMs}ms');
  stdout.writeln('  Battery drains 1% per 4 s. Auto-disconnect every 8-20 s. Autonomous moves active.');

  // Shut down when battery reaches 0.
  deadCompleter.future.then((_) async {
    stdout.writeln('');
    stdout.writeln('╔══════════════════════════════════════════════════════╗');
    stdout.writeln('║  ROBOT DEAD — Battery fully depleted.               ║');
    stdout.writeln('║  Shutting down server in 3 seconds...               ║');
    stdout.writeln('║  Restart the script to begin a new cycle.           ║');
    stdout.writeln('╚══════════════════════════════════════════════════════╝');
    await Future<void>.delayed(const Duration(seconds: 3));
    await machine.dispose();
    await server.close(force: true);
    exit(0);
  });

  // Graceful Ctrl-C shutdown.
  ProcessSignal.sigint.watch().listen((_) async {
    stdout.writeln('\nShutting down...');
    await machine.dispose();
    await server.close(force: true);
    exit(0);
  });
}

Middleware _logRequests() => (handler) => (req) async {
      final started = DateTime.now();
      final res = await handler(req);
      final elapsed = DateTime.now().difference(started).inMilliseconds;
      stdout.writeln(
          '${req.method.padRight(4)} ${req.requestedUri.path.padRight(24)} '
          '${res.statusCode} ${elapsed}ms');
      return res;
    };

Middleware _injectLatency(int ms) => (handler) => (req) async {
      if (ms > 0) await Future<void>.delayed(Duration(milliseconds: ms));
      return handler(req);
    };
