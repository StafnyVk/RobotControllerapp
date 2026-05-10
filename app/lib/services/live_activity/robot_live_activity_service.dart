import 'dart:async';

import 'package:flutter/services.dart';
import 'package:live_activities/live_activities.dart';
import 'package:robot_service/domain/model/robot_status.dart';

/// Bridges [RobotStatus] updates into an iOS 16.2+ Live Activity and surfaces
/// the widget's Stop button taps back into Dart via the App Group MethodChannel.
///
/// The [AppDelegate] polls the App Group UserDefaults and calls
/// `stopRequested` on the channel registered here.
class RobotLiveActivityService {
  RobotLiveActivityService()
      : _la = LiveActivities(),
        _channel = const MethodChannel('engineeredarts/robot/live_activity');

  final LiveActivities _la;
  final MethodChannel _channel;
  String? _activityId;
  bool _started = false;
  final _stopRequests = StreamController<void>.broadcast();

  Stream<void> get stopRequestsFromWidget => _stopRequests.stream;

  Future<void> init({required String appGroupId}) async {
    try {
      final supported = await _la.areActivitiesEnabled();
      if (!supported) {
        // Device/OS doesn't support Live Activities, or user disabled them,
        // or App Groups aren't provisioned (free Apple ID). Silently no-op.
        return;
      }
      await _la.init(appGroupId: appGroupId);
      _channel.setMethodCallHandler((call) async {
        if (call.method == 'stopRequested') _stopRequests.add(null);
      });
    } catch (e) {
      // ignore: avoid_print
      print('[RobotLiveActivity] init failed (no paid developer account?): $e');
    }
  }

  /// Starts a Live Activity for the first time. Idempotent.
  Future<void> start(RobotStatus s) async {
    if (_started) return;
    _started =
        true; // prevent retrying continuously on every telemetry tick if creation fails
    try {
      _activityId = await _la.createActivity(
        'robot-live-activity',
        {
          'robotName': 'Ameca',
          ..._payload(s),
        },
      );
    } catch (e) {
      // Log but don't crash — Live Activities are a non-critical enhancement.
      // ignore: avoid_print
      print('[RobotLiveActivity] createActivity failed: $e');
    }
  }

  /// Pushes a content-state update to the running activity.
  Future<void> update(RobotStatus s) async {
    final id = _activityId;
    if (id != null) await _la.updateActivity(id, _payload(s));
  }

  /// Ends the Live Activity and resets state.
  Future<void> stop() async {
    final id = _activityId;
    if (id != null) {
      await _la.endActivity(id);
    }
    _activityId = null;
    _started = false;
  }

  Map<String, dynamic> _payload(RobotStatus s) => {
        'connected': s.connected,
        'battery': s.battery,
        'moving': s.moving,
        'direction': s.direction?.toString().split('.').last ?? '',
      };

  void dispose() {
    _stopRequests.close();
  }
}
