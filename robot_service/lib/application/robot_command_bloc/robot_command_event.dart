part of 'robot_command_bloc.dart';

@freezed
class RobotCommandEvent with _$RobotCommandEvent {
  const factory RobotCommandEvent.moveRequested(
    MoveDirection direction, {
    @Default(50) int speed,
  }) = _MoveRequested;
  const factory RobotCommandEvent.stopRequested() = _StopRequested;
  const factory RobotCommandEvent.flushQueueRequested() = _FlushQueueRequested;
}
