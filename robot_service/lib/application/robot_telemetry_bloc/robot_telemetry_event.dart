part of 'robot_telemetry_bloc.dart';

@freezed
class RobotTelemetryEvent with _$RobotTelemetryEvent {
  const factory RobotTelemetryEvent.watchStarted() = _WatchStarted;
  const factory RobotTelemetryEvent.watchStopped() = _WatchStopped;
  const factory RobotTelemetryEvent.statusReceived(RobotStatus status) =
      _StatusReceived;
  const factory RobotTelemetryEvent.streamErrored(RobotFailure failure) =
      _StreamErrored;
  const factory RobotTelemetryEvent.staleDetected() = _StaleDetected;
}
