import 'package:freezed_annotation/freezed_annotation.dart';

part 'robot_command.freezed.dart';
part 'robot_command.g.dart';

enum MoveDirection {
  forward,
  back,
  left,
  right;

  String get api => name;

  static MoveDirection fromApi(String value) => MoveDirection.values.firstWhere(
        (d) => d.name == value,
        orElse: () => MoveDirection.forward,
      );
}

@freezed
class RobotCommand with _$RobotCommand {
  const factory RobotCommand.move(MoveDirection direction,
      {@Default(50) int speed}) = MoveCommand;
  const factory RobotCommand.stop() = StopCommand;
  const factory RobotCommand.connect() = ConnectCommand;
  const factory RobotCommand.disconnect() = DisconnectCommand;

  factory RobotCommand.fromJson(Map<String, dynamic> json) =>
      _$RobotCommandFromJson(json);
}
