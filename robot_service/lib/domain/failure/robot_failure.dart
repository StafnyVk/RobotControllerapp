import 'package:freezed_annotation/freezed_annotation.dart';

part 'robot_failure.freezed.dart';

@freezed
abstract class RobotFailure with _$RobotFailure {
  const factory RobotFailure.notConnected() = NotConnected;
  const factory RobotFailure.connectFailed() = ConnectFailed;
  const factory RobotFailure.disconnectFailed() = DisconnectFailed;
  const factory RobotFailure.commandFailed(String reason) = CommandFailed;
  const factory RobotFailure.networkUnavailable() = NetworkUnavailable;
  const factory RobotFailure.timeout() = TimeoutFailure;
  const factory RobotFailure.invalidResponse() = InvalidResponse;
  const factory RobotFailure.lowBattery() = LowBattery;
  const factory RobotFailure.queuedOffline() = QueuedOffline;
  const factory RobotFailure.unexpected(String message) = UnexpectedFailure;
}
