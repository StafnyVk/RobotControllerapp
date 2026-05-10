import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import 'robot_state_machine.dart';

Router buildRouter(RobotStateMachine machine) {
  final router = Router();

  router.get('/status', (Request req) {
    return _json(200, machine.state.toJson());
  });

  router.post('/connect', (Request req) async {
    if (machine.isDead) {
      return _json(503, {
        'error': 'dead_battery',
        'message': 'Robot battery is depleted. Restart the simulator script.',
      });
    }
    final ok = machine.connect();
    return ok
        ? _json(200, {
            'ok': true,
            'sessionId': DateTime.now().microsecondsSinceEpoch.toString(),
          })
        : _json(500, {'error': 'connect_failed'});
  });

  router.post('/disconnect', (Request req) async {
    if (machine.isDead) return _json(200, {'ok': true});
    final ok = machine.disconnect();
    return ok
        ? _json(200, {'ok': true})
        : _json(500, {'error': 'disconnect_failed'});
  });

  router.post('/move', (Request req) async {
    if (machine.isDead) {
      return _json(503, {'error': 'dead_battery'});
    }
    final body = await req.readAsString();
    final data = body.isEmpty
        ? <String, dynamic>{}
        : jsonDecode(body) as Map<String, dynamic>;
    final direction = data['direction'] as String? ?? 'forward';

    final ok = machine.move(direction);
    if (ok) return _json(200, {'ok': true});

    if (!machine.state.connected) {
      return _json(403, {'error': 'not_connected'});
    }
    if (machine.state.battery < 10) {
      return _json(409, {'error': 'cannot_move', 'reason': 'low_battery'});
    }
    return _json(500, {'error': 'command_failed'});
  });

  router.post('/stop', (Request req) async {
    if (!machine.isDead) machine.stop();
    return _json(200, {'ok': true});
  });

  return router;
}

Response _json(int status, Map<String, dynamic> body) => Response(
      status,
      headers: {'content-type': 'application/json'},
      body: jsonEncode(body),
    );
