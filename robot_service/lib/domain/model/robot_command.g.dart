// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'robot_command.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoveCommandImpl _$$MoveCommandImplFromJson(Map<String, dynamic> json) =>
    _$MoveCommandImpl(
      $enumDecode(_$MoveDirectionEnumMap, json['direction']),
      speed: (json['speed'] as num?)?.toInt() ?? 50,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$MoveCommandImplToJson(_$MoveCommandImpl instance) =>
    <String, dynamic>{
      'direction': _$MoveDirectionEnumMap[instance.direction]!,
      'speed': instance.speed,
      'runtimeType': instance.$type,
    };

const _$MoveDirectionEnumMap = {
  MoveDirection.forward: 'forward',
  MoveDirection.back: 'back',
  MoveDirection.left: 'left',
  MoveDirection.right: 'right',
};

_$StopCommandImpl _$$StopCommandImplFromJson(Map<String, dynamic> json) =>
    _$StopCommandImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$StopCommandImplToJson(_$StopCommandImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ConnectCommandImpl _$$ConnectCommandImplFromJson(Map<String, dynamic> json) =>
    _$ConnectCommandImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ConnectCommandImplToJson(
        _$ConnectCommandImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$DisconnectCommandImpl _$$DisconnectCommandImplFromJson(
        Map<String, dynamic> json) =>
    _$DisconnectCommandImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$DisconnectCommandImplToJson(
        _$DisconnectCommandImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
