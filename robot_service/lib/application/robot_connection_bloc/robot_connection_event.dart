part of 'robot_connection_bloc.dart';

@freezed
class RobotConnectionEvent with _$RobotConnectionEvent {
  const factory RobotConnectionEvent.connect({String? url}) = _Connect;
  const factory RobotConnectionEvent.disconnect() = _Disconnect;
  const factory RobotConnectionEvent.autoReconnect() = _AutoReconnect;
  const factory RobotConnectionEvent.connectivityChanged(bool online) =
      _ConnectivityChanged;
}
