// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'robot_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RobotStatus _$RobotStatusFromJson(Map<String, dynamic> json) {
  return _RobotStatus.fromJson(json);
}

/// @nodoc
mixin _$RobotStatus {
  bool get connected => throw _privateConstructorUsedError;
  double get battery => throw _privateConstructorUsedError;
  bool get moving => throw _privateConstructorUsedError;
  MoveDirection? get direction => throw _privateConstructorUsedError;
  int get signalStrength => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;

  /// Serializes this RobotStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RobotStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RobotStatusCopyWith<RobotStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RobotStatusCopyWith<$Res> {
  factory $RobotStatusCopyWith(
          RobotStatus value, $Res Function(RobotStatus) then) =
      _$RobotStatusCopyWithImpl<$Res, RobotStatus>;
  @useResult
  $Res call(
      {bool connected,
      double battery,
      bool moving,
      MoveDirection? direction,
      int signalStrength,
      DateTime lastUpdated});
}

/// @nodoc
class _$RobotStatusCopyWithImpl<$Res, $Val extends RobotStatus>
    implements $RobotStatusCopyWith<$Res> {
  _$RobotStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RobotStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connected = null,
    Object? battery = null,
    Object? moving = null,
    Object? direction = freezed,
    Object? signalStrength = null,
    Object? lastUpdated = null,
  }) {
    return _then(_value.copyWith(
      connected: null == connected
          ? _value.connected
          : connected // ignore: cast_nullable_to_non_nullable
              as bool,
      battery: null == battery
          ? _value.battery
          : battery // ignore: cast_nullable_to_non_nullable
              as double,
      moving: null == moving
          ? _value.moving
          : moving // ignore: cast_nullable_to_non_nullable
              as bool,
      direction: freezed == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as MoveDirection?,
      signalStrength: null == signalStrength
          ? _value.signalStrength
          : signalStrength // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RobotStatusImplCopyWith<$Res>
    implements $RobotStatusCopyWith<$Res> {
  factory _$$RobotStatusImplCopyWith(
          _$RobotStatusImpl value, $Res Function(_$RobotStatusImpl) then) =
      __$$RobotStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool connected,
      double battery,
      bool moving,
      MoveDirection? direction,
      int signalStrength,
      DateTime lastUpdated});
}

/// @nodoc
class __$$RobotStatusImplCopyWithImpl<$Res>
    extends _$RobotStatusCopyWithImpl<$Res, _$RobotStatusImpl>
    implements _$$RobotStatusImplCopyWith<$Res> {
  __$$RobotStatusImplCopyWithImpl(
      _$RobotStatusImpl _value, $Res Function(_$RobotStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connected = null,
    Object? battery = null,
    Object? moving = null,
    Object? direction = freezed,
    Object? signalStrength = null,
    Object? lastUpdated = null,
  }) {
    return _then(_$RobotStatusImpl(
      connected: null == connected
          ? _value.connected
          : connected // ignore: cast_nullable_to_non_nullable
              as bool,
      battery: null == battery
          ? _value.battery
          : battery // ignore: cast_nullable_to_non_nullable
              as double,
      moving: null == moving
          ? _value.moving
          : moving // ignore: cast_nullable_to_non_nullable
              as bool,
      direction: freezed == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as MoveDirection?,
      signalStrength: null == signalStrength
          ? _value.signalStrength
          : signalStrength // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RobotStatusImpl implements _RobotStatus {
  const _$RobotStatusImpl(
      {required this.connected,
      required this.battery,
      required this.moving,
      this.direction,
      this.signalStrength = 0,
      required this.lastUpdated});

  factory _$RobotStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$RobotStatusImplFromJson(json);

  @override
  final bool connected;
  @override
  final double battery;
  @override
  final bool moving;
  @override
  final MoveDirection? direction;
  @override
  @JsonKey()
  final int signalStrength;
  @override
  final DateTime lastUpdated;

  @override
  String toString() {
    return 'RobotStatus(connected: $connected, battery: $battery, moving: $moving, direction: $direction, signalStrength: $signalStrength, lastUpdated: $lastUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RobotStatusImpl &&
            (identical(other.connected, connected) ||
                other.connected == connected) &&
            (identical(other.battery, battery) || other.battery == battery) &&
            (identical(other.moving, moving) || other.moving == moving) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.signalStrength, signalStrength) ||
                other.signalStrength == signalStrength) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, connected, battery, moving,
      direction, signalStrength, lastUpdated);

  /// Create a copy of RobotStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RobotStatusImplCopyWith<_$RobotStatusImpl> get copyWith =>
      __$$RobotStatusImplCopyWithImpl<_$RobotStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RobotStatusImplToJson(
      this,
    );
  }
}

abstract class _RobotStatus implements RobotStatus {
  const factory _RobotStatus(
      {required final bool connected,
      required final double battery,
      required final bool moving,
      final MoveDirection? direction,
      final int signalStrength,
      required final DateTime lastUpdated}) = _$RobotStatusImpl;

  factory _RobotStatus.fromJson(Map<String, dynamic> json) =
      _$RobotStatusImpl.fromJson;

  @override
  bool get connected;
  @override
  double get battery;
  @override
  bool get moving;
  @override
  MoveDirection? get direction;
  @override
  int get signalStrength;
  @override
  DateTime get lastUpdated;

  /// Create a copy of RobotStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RobotStatusImplCopyWith<_$RobotStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
