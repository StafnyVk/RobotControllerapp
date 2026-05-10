part of 'robot_connection_bloc.dart';

@freezed
class RobotConnectionState with _$RobotConnectionState {
  const factory RobotConnectionState.initial() = _Initial;
  const factory RobotConnectionState.connecting() = _Connecting;
  const factory RobotConnectionState.connected() = _Connected;
  const factory RobotConnectionState.disconnecting() = _Disconnecting;
  const factory RobotConnectionState.disconnected() = _Disconnected;
  const factory RobotConnectionState.reconnecting(int attempt) = _Reconnecting;
  const factory RobotConnectionState.failed(RobotFailure failure) = _Failed;
}
