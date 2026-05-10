import 'package:freezed_annotation/freezed_annotation.dart';

import 'robot_command.dart';

part 'queued_command.freezed.dart';
part 'queued_command.g.dart';

@freezed
class QueuedCommand with _$QueuedCommand {
  const factory QueuedCommand({
    required String id,
    required RobotCommand command,
    required DateTime enqueuedAt,
    @Default(0) int attempts,
  }) = _QueuedCommand;

  factory QueuedCommand.fromJson(Map<String, dynamic> json) =>
      _$QueuedCommandFromJson(json);
}
