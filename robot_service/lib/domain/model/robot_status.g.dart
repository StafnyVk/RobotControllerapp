// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'robot_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RobotStatusImpl _$$RobotStatusImplFromJson(Map<String, dynamic> json) =>
    _$RobotStatusImpl(
      connected: json['connected'] as bool,
      battery: (json['battery'] as num).toDouble(),
      moving: json['moving'] as bool,
      direction: $enumDecodeNullable(_$MoveDirectionEnumMap, json['direction']),
      signalStrength: (json['signalStrength'] as num?)?.toInt() ?? 0,
      lastUpdated: DateTime.parse(json['lastUpdated'] as String),
    );

Map<String, dynamic> _$$RobotStatusImplToJson(_$RobotStatusImpl instance) =>
    <String, dynamic>{
      'connected': instance.connected,
      'battery': instance.battery,
      'moving': instance.moving,
      'direction': _$MoveDirectionEnumMap[instance.direction],
      'signalStrength': instance.signalStrength,
      'lastUpdated': instance.lastUpdated.toIso8601String(),
    };

const _$MoveDirectionEnumMap = {
  MoveDirection.forward: 'forward',
  MoveDirection.back: 'back',
  MoveDirection.left: 'left',
  MoveDirection.right: 'right',
};
