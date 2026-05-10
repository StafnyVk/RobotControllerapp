import 'dart:async';

import 'package:flutter/services.dart';
import 'package:robot_service/domain/model/robot_status.dart';

/// Thin Dart side of the Android foreground notification that mirrors the iOS
/// Live Activity. Bridges to Kotlin via a MethodChannel.
///
/// Call [init] once (e.g. in [RobotApp.initState]) to register the stop
/// callback, then [start] on first connect, [update] on each telemetry tick,
/// and [stop] on disconnect.
class RobotForegroundService {
  static const _channel =
      MethodChannel('engineeredarts/robot/foreground_service');

  bool _running = false;
  final _stopRequests = StreamController<void>.broadcast();

  /// Emits whenever the user taps STOP on the persistent notification.
  Stream<void> get stopRequestsFromWidget => _stopRequests.stream;

  /// Register the native → Dart callback. Call once at app startup.
  void init() {
    _channel.setMethodCallHandler((call) async {
      if (call.method == 'stopRequested') _stopRequests.add(null);
    });
  }

  Future<void> start(RobotStatus s) async {
    _running = true;
    await _channel.invokeMethod('start', _args(s, isUpdate: false));
  }

  Future<void> update(RobotStatus s) async {
    if (!_running) return;
    await _channel.invokeMethod('update', _args(s, isUpdate: true));
  }

  Future<void> stop() async {
    _running = false;
    await _channel.invokeMethod('stop');
  }

  Map<String, dynamic> _args(RobotStatus s, {required bool isUpdate}) => {
        'battery': s.battery,
        'moving': s.moving,
        'direction': s.direction?.toString().split('.').last ?? '',
        'is_update': isUpdate,
      };

  void dispose() {
    _stopRequests.close();
  }
}
