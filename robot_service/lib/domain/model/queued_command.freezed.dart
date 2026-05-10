// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'queued_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QueuedCommand _$QueuedCommandFromJson(Map<String, dynamic> json) {
  return _QueuedCommand.fromJson(json);
}

/// @nodoc
mixin _$QueuedCommand {
  String get id => throw _privateConstructorUsedError;
  RobotCommand get command => throw _privateConstructorUsedError;
  DateTime get enqueuedAt => throw _privateConstructorUsedError;
  int get attempts => throw _privateConstructorUsedError;

  /// Serializes this QueuedCommand to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of QueuedCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $QueuedCommandCopyWith<QueuedCommand> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueuedCommandCopyWith<$Res> {
  factory $QueuedCommandCopyWith(
          QueuedCommand value, $Res Function(QueuedCommand) then) =
      _$QueuedCommandCopyWithImpl<$Res, QueuedCommand>;
  @useResult
  $Res call(
      {String id, RobotCommand command, DateTime enqueuedAt, int attempts});

  $RobotCommandCopyWith<$Res> get command;
}

/// @nodoc
class _$QueuedCommandCopyWithImpl<$Res, $Val extends QueuedCommand>
    implements $QueuedCommandCopyWith<$Res> {
  _$QueuedCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of QueuedCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? command = null,
    Object? enqueuedAt = null,
    Object? attempts = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      command: null == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as RobotCommand,
      enqueuedAt: null == enqueuedAt
          ? _value.enqueuedAt
          : enqueuedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      attempts: null == attempts
          ? _value.attempts
          : attempts // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of QueuedCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RobotCommandCopyWith<$Res> get command {
    return $RobotCommandCopyWith<$Res>(_value.command, (value) {
      return _then(_value.copyWith(command: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QueuedCommandImplCopyWith<$Res>
    implements $QueuedCommandCopyWith<$Res> {
  factory _$$QueuedCommandImplCopyWith(
          _$QueuedCommandImpl value, $Res Function(_$QueuedCommandImpl) then) =
      __$$QueuedCommandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, RobotCommand command, DateTime enqueuedAt, int attempts});

  @override
  $RobotCommandCopyWith<$Res> get command;
}

/// @nodoc
class __$$QueuedCommandImplCopyWithImpl<$Res>
    extends _$QueuedCommandCopyWithImpl<$Res, _$QueuedCommandImpl>
    implements _$$QueuedCommandImplCopyWith<$Res> {
  __$$QueuedCommandImplCopyWithImpl(
      _$QueuedCommandImpl _value, $Res Function(_$QueuedCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of QueuedCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? command = null,
    Object? enqueuedAt = null,
    Object? attempts = null,
  }) {
    return _then(_$QueuedCommandImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      command: null == command
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as RobotCommand,
      enqueuedAt: null == enqueuedAt
          ? _value.enqueuedAt
          : enqueuedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      attempts: null == attempts
          ? _value.attempts
          : attempts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QueuedCommandImpl implements _QueuedCommand {
  const _$QueuedCommandImpl(
      {required this.id,
      required this.command,
      required this.enqueuedAt,
      this.attempts = 0});

  factory _$QueuedCommandImpl.fromJson(Map<String, dynamic> json) =>
      _$$QueuedCommandImplFromJson(json);

  @override
  final String id;
  @override
  final RobotCommand command;
  @override
  final DateTime enqueuedAt;
  @override
  @JsonKey()
  final int attempts;

  @override
  String toString() {
    return 'QueuedCommand(id: $id, command: $command, enqueuedAt: $enqueuedAt, attempts: $attempts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueuedCommandImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.command, command) || other.command == command) &&
            (identical(other.enqueuedAt, enqueuedAt) ||
                other.enqueuedAt == enqueuedAt) &&
            (identical(other.attempts, attempts) ||
                other.attempts == attempts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, command, enqueuedAt, attempts);

  /// Create a copy of QueuedCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QueuedCommandImplCopyWith<_$QueuedCommandImpl> get copyWith =>
      __$$QueuedCommandImplCopyWithImpl<_$QueuedCommandImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QueuedCommandImplToJson(
      this,
    );
  }
}

abstract class _QueuedCommand implements QueuedCommand {
  const factory _QueuedCommand(
      {required final String id,
      required final RobotCommand command,
      required final DateTime enqueuedAt,
      final int attempts}) = _$QueuedCommandImpl;

  factory _QueuedCommand.fromJson(Map<String, dynamic> json) =
      _$QueuedCommandImpl.fromJson;

  @override
  String get id;
  @override
  RobotCommand get command;
  @override
  DateTime get enqueuedAt;
  @override
  int get attempts;

  /// Create a copy of QueuedCommand
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QueuedCommandImplCopyWith<_$QueuedCommandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
