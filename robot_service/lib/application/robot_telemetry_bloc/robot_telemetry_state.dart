part of 'robot_telemetry_bloc.dart';

@freezed
class RobotTelemetryState with _$RobotTelemetryState {
  const factory RobotTelemetryState.initial() = _TInitial;
  const factory RobotTelemetryState.live(RobotStatus status) = _Live;
  const factory RobotTelemetryState.stale(RobotStatus last, DateTime lastSeen) =
      _Stale;
  const factory RobotTelemetryState.error(RobotFailure failure) = _TError;
}
