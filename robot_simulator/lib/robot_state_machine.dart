import 'dart:async';
import 'dart:io';
import 'dart:math';

class RobotSnapshot {
  final bool connected;
  final double battery;
  final bool moving;
  final String? direction;
  final DateTime lastUpdated;
  final bool dead;

  const RobotSnapshot({
    required this.connected,
    required this.battery,
    required this.moving,
    required this.lastUpdated,
    this.direction,
    this.dead = false,
  });

  Map<String, dynamic> toJson() => {
        'connected': connected,
        'battery': double.parse(battery.toStringAsFixed(2)),
        'moving': moving,
        'direction': direction,
        'lastUpdated': lastUpdated.toUtc().toIso8601String(),
        'dead': dead,
      };

  RobotSnapshot copyWith({
    bool? connected,
    double? battery,
    bool? moving,
    String? direction,
    bool clearDirection = false,
    DateTime? lastUpdated,
    bool? dead,
  }) =>
      RobotSnapshot(
        connected: connected ?? this.connected,
        battery: battery ?? this.battery,
        moving: moving ?? this.moving,
        direction: clearDirection ? null : (direction ?? this.direction),
        lastUpdated: lastUpdated ?? DateTime.now(),
        dead: dead ?? this.dead,
      );
}

/// Owns the in-memory robot state and emits snapshots on every change + tick.
///
/// Battery drains at 0.25%/s (1% every 4 s) when connected.
/// Auto-disconnects every 8–20 s to simulate intermittent WiFi drops.
/// Performs autonomous movements so telemetry shows live robot activity.
/// When battery reaches 0 the robot enters a permanent `dead` state and
/// [onDead] is invoked so the server process can shut down.
class RobotStateMachine {
  RobotStateMachine({
    this.chaos = false,
    Random? random,
    void Function()? onDead,
  })  : _random = random ?? Random(),
        _onDead = onDead;

  final bool chaos;
  final Random _random;
  final void Function()? _onDead;

  RobotSnapshot _state = RobotSnapshot(
    connected: false,
    battery: 100,
    moving: false,
    lastUpdated: DateTime.now(),
  );

  final _controller = StreamController<RobotSnapshot>.broadcast();
  Timer? _tick;
  Timer? _autoDisconnectTimer;
  Timer? _autonomousMoveTimer;
  bool _deadCallbackFired = false;

  Stream<RobotSnapshot> get stream => _controller.stream;
  RobotSnapshot get state => _state;
  bool get isDead => _state.dead;

  void start() {
    _tick?.cancel();
    _tick = Timer.periodic(const Duration(seconds: 1), (_) => _onTick());
  }

  void _onTick() {
    if (_state.dead) return;

    var next = _state;

    if (next.connected) {
      // 1% every 4 seconds = 0.25% per 1-second tick
      const drain = 0.25;
      final newBattery = max(0.0, next.battery - drain);
      next = next.copyWith(battery: newBattery);

      if (newBattery <= 0) {
        _autoDisconnectTimer?.cancel();
        _autonomousMoveTimer?.cancel();
        next = next.copyWith(
          battery: 0,
          connected: false,
          moving: false,
          clearDirection: true,
          dead: true,
        );
        _state = next.copyWith(lastUpdated: DateTime.now());
        _controller.add(_state);
        _log('[DEAD] Battery at 0 — robot shut down.');
        if (!_deadCallbackFired) {
          _deadCallbackFired = true;
          Future<void>.delayed(const Duration(seconds: 2), () => _onDead?.call());
        }
        return;
      }

      // Force stop below 10%
      if (next.battery < 10 && next.moving) {
        next = next.copyWith(moving: false, clearDirection: true);
        _log('[LOW-BATT] Forced stop at ${next.battery.toStringAsFixed(1)}%');
      }
    }

    _state = next.copyWith(lastUpdated: DateTime.now());
    _controller.add(_state);
  }

  bool connect() {
    if (_state.dead) {
      _log('[CONNECT] Rejected — robot is dead (battery 0).');
      return false;
    }
    if (_shouldInjectFailure(probability: 0.02)) return false;

    _state = _state.copyWith(connected: true);
    _emit();
    _log('[CONNECT] Robot connected. Battery: ${_state.battery.toStringAsFixed(1)}%');
    _scheduleAutoDisconnect();
    _scheduleNextAutonomousMove();
    return true;
  }

  bool disconnect() {
    _autoDisconnectTimer?.cancel();
    _autonomousMoveTimer?.cancel();
    _state = _state.copyWith(
      connected: false,
      moving: false,
      clearDirection: true,
    );
    _emit();
    _log('[DISCONNECT] Robot disconnected.');
    return true;
  }

  bool move(String direction) {
    if (_state.dead) return false;
    if (!_state.connected) return false;
    if (_state.battery < 10) return false;
    if (_shouldInjectFailure(probability: 0.05)) return false;

    _state = _state.copyWith(moving: true, direction: direction);
    _emit();
    return true;
  }

  void stop() {
    _state = _state.copyWith(moving: false, clearDirection: true);
    _emit();
  }

  /// Auto-disconnect after 8–20 s to simulate intermittent WiFi drops.
  void _scheduleAutoDisconnect() {
    _autoDisconnectTimer?.cancel();
    final seconds = 8 + _random.nextInt(13); // 8–20 s
    _log('[AUTO-DC] Scheduled in ${seconds}s');
    _autoDisconnectTimer = Timer(Duration(seconds: seconds), () {
      if (_state.connected && !_state.dead) {
        _log('[AUTO-DC] Dropping connection (simulated drop after ${seconds}s)');
        disconnect();
      }
    });
  }

  /// Pick a random direction every 3–8 s and move for 1–3 s, then stop.
  void _scheduleNextAutonomousMove() {
    _autonomousMoveTimer?.cancel();
    if (!_state.connected || _state.dead) return;

    final delaySeconds = 3 + _random.nextInt(6); // 3–8 s
    _autonomousMoveTimer = Timer(Duration(seconds: delaySeconds), () {
      if (!_state.connected || _state.dead || _state.battery < 10) return;

      const directions = ['forward', 'back', 'left', 'right'];
      final dir = directions[_random.nextInt(directions.length)];
      _log('[AUTO-MOVE] Moving $dir');
      move(dir);

      final moveDuration = 1 + _random.nextInt(3); // 1–3 s
      Timer(Duration(seconds: moveDuration), () {
        if (_state.moving && !_state.dead) {
          stop();
          _scheduleNextAutonomousMove();
        }
      });
    });
  }

  bool _shouldInjectFailure({required double probability}) {
    if (!chaos) return false;
    return _random.nextDouble() < probability;
  }

  void _log(String msg) => stdout.writeln(msg);
  void _emit() => _controller.add(_state);

  Future<void> dispose() async {
    _tick?.cancel();
    _autoDisconnectTimer?.cancel();
    _autonomousMoveTimer?.cancel();
    await _controller.close();
  }
}
