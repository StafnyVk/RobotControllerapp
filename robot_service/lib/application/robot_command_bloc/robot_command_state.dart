part of 'robot_command_bloc.dart';

@freezed
class RobotCommandState with _$RobotCommandState {
  const RobotCommandState._();

  const factory RobotCommandState.idle() = _CIdle;
  const factory RobotCommandState.dispatching(String commandId) = _Dispatching;
  const factory RobotCommandState.succeeded(String commandId) = _Succeeded;
  const factory RobotCommandState.failed(
      String commandId, RobotFailure failure) = _CFailed;
  const factory RobotCommandState.queued(String commandId) = _Queued;

  int get queuedCount => 0; // TODO we can wire this properly
}
