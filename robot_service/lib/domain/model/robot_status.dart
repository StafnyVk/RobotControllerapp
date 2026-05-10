import 'package:freezed_annotation/freezed_annotation.dart';

import 'robot_command.dart';

part 'robot_status.freezed.dart';
part 'robot_status.g.dart';

@freezed
class RobotStatus with _$RobotStatus {
  const factory RobotStatus({
    required bool connected,
    required double battery,
    required bool moving,
    MoveDirection? direction,
    @Default(0) int signalStrength,
    required DateTime lastUpdated,
  }) = _RobotStatus;

  factory RobotStatus.fromJson(Map<String, dynamic> json) =>
      _$RobotStatusFromJson(json);

  factory RobotStatus.initial() => RobotStatus(
        connected: false,
        battery: 0,
        moving: false,
        lastUpdated: DateTime.fromMillisecondsSinceEpoch(0),
      );
}
