import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:shelf/shelf.dart';
import 'package:shelf_web_socket/shelf_web_socket.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'robot_state_machine.dart';

/// Broadcasts [RobotSnapshot] JSON frames to every connected WebSocket client.
///
/// Behaviour:
///   * Emits the latest snapshot on connect.
///   * Emits on every state change from the machine's stream.
///   * Emits a heartbeat every second so clients can detect staleness.
///   * In chaos mode, forcibly drops each socket roughly every 45-75s to
///     exercise the app's reconnect logic.
class TelemetryBroadcaster {
  TelemetryBroadcaster(this._machine, {this.chaos = false, Random? random})
      : _random = random ?? Random();

  final RobotStateMachine _machine;
  final bool chaos;
  final Random _random;

  Handler get handler => webSocketHandler(_onConnect);

  void _onConnect(WebSocketChannel socket, String? _) {
    socket.sink.add(jsonEncode(_machine.state.toJson()));

    final sub = _machine.stream.listen(
      (snap) => socket.sink.add(jsonEncode(snap.toJson())),
      onError: (_) => socket.sink.close(),
    );

    final heartbeat = Timer.periodic(const Duration(seconds: 1), (_) {
      socket.sink.add(jsonEncode(_machine.state.toJson()));
    });

    Timer? chaosTimer;
    if (chaos) {
      final dropAfterSeconds = 45 + _random.nextInt(31);
      chaosTimer = Timer(Duration(seconds: dropAfterSeconds), () {
        socket.sink.close(1011, 'chaos-drop');
      });
    }

    socket.stream.listen(
      (_) {},
      onDone: () {
        sub.cancel();
        heartbeat.cancel();
        chaosTimer?.cancel();
      },
      onError: (_) {
        sub.cancel();
        heartbeat.cancel();
        chaosTimer?.cancel();
      },
      cancelOnError: true,
    );
  }
}
