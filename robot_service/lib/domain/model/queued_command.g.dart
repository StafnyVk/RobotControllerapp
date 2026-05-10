// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queued_command.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QueuedCommandImpl _$$QueuedCommandImplFromJson(Map<String, dynamic> json) =>
    _$QueuedCommandImpl(
      id: json['id'] as String,
      command: RobotCommand.fromJson(json['command'] as Map<String, dynamic>),
      enqueuedAt: DateTime.parse(json['enqueuedAt'] as String),
      attempts: (json['attempts'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$QueuedCommandImplToJson(_$QueuedCommandImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'command': instance.command,
      'enqueuedAt': instance.enqueuedAt.toIso8601String(),
      'attempts': instance.attempts,
    };
