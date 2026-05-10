// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'robot_command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RobotCommand _$RobotCommandFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'move':
      return MoveCommand.fromJson(json);
    case 'stop':
      return StopCommand.fromJson(json);
    case 'connect':
      return ConnectCommand.fromJson(json);
    case 'disconnect':
      return DisconnectCommand.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'RobotCommand',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$RobotCommand {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MoveDirection direction, int speed) move,
    required TResult Function() stop,
    required TResult Function() connect,
    required TResult Function() disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MoveDirection direction, int speed)? move,
    TResult? Function()? stop,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MoveDirection direction, int speed)? move,
    TResult Function()? stop,
    TResult Function()? connect,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoveCommand value) move,
    required TResult Function(StopCommand value) stop,
    required TResult Function(ConnectCommand value) connect,
    required TResult Function(DisconnectCommand value) disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoveCommand value)? move,
    TResult? Function(StopCommand value)? stop,
    TResult? Function(ConnectCommand value)? connect,
    TResult? Function(DisconnectCommand value)? disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoveCommand value)? move,
    TResult Function(StopCommand value)? stop,
    TResult Function(ConnectCommand value)? connect,
    TResult Function(DisconnectCommand value)? disconnect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this RobotCommand to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RobotCommandCopyWith<$Res> {
  factory $RobotCommandCopyWith(
          RobotCommand value, $Res Function(RobotCommand) then) =
      _$RobotCommandCopyWithImpl<$Res, RobotCommand>;
}

/// @nodoc
class _$RobotCommandCopyWithImpl<$Res, $Val extends RobotCommand>
    implements $RobotCommandCopyWith<$Res> {
  _$RobotCommandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RobotCommand
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MoveCommandImplCopyWith<$Res> {
  factory _$$MoveCommandImplCopyWith(
          _$MoveCommandImpl value, $Res Function(_$MoveCommandImpl) then) =
      __$$MoveCommandImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MoveDirection direction, int speed});
}

/// @nodoc
class __$$MoveCommandImplCopyWithImpl<$Res>
    extends _$RobotCommandCopyWithImpl<$Res, _$MoveCommandImpl>
    implements _$$MoveCommandImplCopyWith<$Res> {
  __$$MoveCommandImplCopyWithImpl(
      _$MoveCommandImpl _value, $Res Function(_$MoveCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotCommand
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direction = null,
    Object? speed = null,
  }) {
    return _then(_$MoveCommandImpl(
      null == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as MoveDirection,
      speed: null == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoveCommandImpl implements MoveCommand {
  const _$MoveCommandImpl(this.direction,
      {this.speed = 50, final String? $type})
      : $type = $type ?? 'move';

  factory _$MoveCommandImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoveCommandImplFromJson(json);

  @override
  final MoveDirection direction;
  @override
  @JsonKey()
  final int speed;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RobotCommand.move(direction: $direction, speed: $speed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoveCommandImpl &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.speed, speed) || other.speed == speed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, direction, speed);

  /// Create a copy of RobotCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoveCommandImplCopyWith<_$MoveCommandImpl> get copyWith =>
      __$$MoveCommandImplCopyWithImpl<_$MoveCommandImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MoveDirection direction, int speed) move,
    required TResult Function() stop,
    required TResult Function() connect,
    required TResult Function() disconnect,
  }) {
    return move(direction, speed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MoveDirection direction, int speed)? move,
    TResult? Function()? stop,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
  }) {
    return move?.call(direction, speed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MoveDirection direction, int speed)? move,
    TResult Function()? stop,
    TResult Function()? connect,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (move != null) {
      return move(direction, speed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoveCommand value) move,
    required TResult Function(StopCommand value) stop,
    required TResult Function(ConnectCommand value) connect,
    required TResult Function(DisconnectCommand value) disconnect,
  }) {
    return move(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoveCommand value)? move,
    TResult? Function(StopCommand value)? stop,
    TResult? Function(ConnectCommand value)? connect,
    TResult? Function(DisconnectCommand value)? disconnect,
  }) {
    return move?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoveCommand value)? move,
    TResult Function(StopCommand value)? stop,
    TResult Function(ConnectCommand value)? connect,
    TResult Function(DisconnectCommand value)? disconnect,
    required TResult orElse(),
  }) {
    if (move != null) {
      return move(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MoveCommandImplToJson(
      this,
    );
  }
}

abstract class MoveCommand implements RobotCommand {
  const factory MoveCommand(final MoveDirection direction, {final int speed}) =
      _$MoveCommandImpl;

  factory MoveCommand.fromJson(Map<String, dynamic> json) =
      _$MoveCommandImpl.fromJson;

  MoveDirection get direction;
  int get speed;

  /// Create a copy of RobotCommand
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoveCommandImplCopyWith<_$MoveCommandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StopCommandImplCopyWith<$Res> {
  factory _$$StopCommandImplCopyWith(
          _$StopCommandImpl value, $Res Function(_$StopCommandImpl) then) =
      __$$StopCommandImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopCommandImplCopyWithImpl<$Res>
    extends _$RobotCommandCopyWithImpl<$Res, _$StopCommandImpl>
    implements _$$StopCommandImplCopyWith<$Res> {
  __$$StopCommandImplCopyWithImpl(
      _$StopCommandImpl _value, $Res Function(_$StopCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotCommand
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$StopCommandImpl implements StopCommand {
  const _$StopCommandImpl({final String? $type}) : $type = $type ?? 'stop';

  factory _$StopCommandImpl.fromJson(Map<String, dynamic> json) =>
      _$$StopCommandImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RobotCommand.stop()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopCommandImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MoveDirection direction, int speed) move,
    required TResult Function() stop,
    required TResult Function() connect,
    required TResult Function() disconnect,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MoveDirection direction, int speed)? move,
    TResult? Function()? stop,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MoveDirection direction, int speed)? move,
    TResult Function()? stop,
    TResult Function()? connect,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoveCommand value) move,
    required TResult Function(StopCommand value) stop,
    required TResult Function(ConnectCommand value) connect,
    required TResult Function(DisconnectCommand value) disconnect,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoveCommand value)? move,
    TResult? Function(StopCommand value)? stop,
    TResult? Function(ConnectCommand value)? connect,
    TResult? Function(DisconnectCommand value)? disconnect,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoveCommand value)? move,
    TResult Function(StopCommand value)? stop,
    TResult Function(ConnectCommand value)? connect,
    TResult Function(DisconnectCommand value)? disconnect,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StopCommandImplToJson(
      this,
    );
  }
}

abstract class StopCommand implements RobotCommand {
  const factory StopCommand() = _$StopCommandImpl;

  factory StopCommand.fromJson(Map<String, dynamic> json) =
      _$StopCommandImpl.fromJson;
}

/// @nodoc
abstract class _$$ConnectCommandImplCopyWith<$Res> {
  factory _$$ConnectCommandImplCopyWith(_$ConnectCommandImpl value,
          $Res Function(_$ConnectCommandImpl) then) =
      __$$ConnectCommandImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectCommandImplCopyWithImpl<$Res>
    extends _$RobotCommandCopyWithImpl<$Res, _$ConnectCommandImpl>
    implements _$$ConnectCommandImplCopyWith<$Res> {
  __$$ConnectCommandImplCopyWithImpl(
      _$ConnectCommandImpl _value, $Res Function(_$ConnectCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotCommand
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$ConnectCommandImpl implements ConnectCommand {
  const _$ConnectCommandImpl({final String? $type})
      : $type = $type ?? 'connect';

  factory _$ConnectCommandImpl.fromJson(Map<String, dynamic> json) =>
      _$$ConnectCommandImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RobotCommand.connect()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectCommandImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MoveDirection direction, int speed) move,
    required TResult Function() stop,
    required TResult Function() connect,
    required TResult Function() disconnect,
  }) {
    return connect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MoveDirection direction, int speed)? move,
    TResult? Function()? stop,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
  }) {
    return connect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MoveDirection direction, int speed)? move,
    TResult Function()? stop,
    TResult Function()? connect,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoveCommand value) move,
    required TResult Function(StopCommand value) stop,
    required TResult Function(ConnectCommand value) connect,
    required TResult Function(DisconnectCommand value) disconnect,
  }) {
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoveCommand value)? move,
    TResult? Function(StopCommand value)? stop,
    TResult? Function(ConnectCommand value)? connect,
    TResult? Function(DisconnectCommand value)? disconnect,
  }) {
    return connect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoveCommand value)? move,
    TResult Function(StopCommand value)? stop,
    TResult Function(ConnectCommand value)? connect,
    TResult Function(DisconnectCommand value)? disconnect,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ConnectCommandImplToJson(
      this,
    );
  }
}

abstract class ConnectCommand implements RobotCommand {
  const factory ConnectCommand() = _$ConnectCommandImpl;

  factory ConnectCommand.fromJson(Map<String, dynamic> json) =
      _$ConnectCommandImpl.fromJson;
}

/// @nodoc
abstract class _$$DisconnectCommandImplCopyWith<$Res> {
  factory _$$DisconnectCommandImplCopyWith(_$DisconnectCommandImpl value,
          $Res Function(_$DisconnectCommandImpl) then) =
      __$$DisconnectCommandImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisconnectCommandImplCopyWithImpl<$Res>
    extends _$RobotCommandCopyWithImpl<$Res, _$DisconnectCommandImpl>
    implements _$$DisconnectCommandImplCopyWith<$Res> {
  __$$DisconnectCommandImplCopyWithImpl(_$DisconnectCommandImpl _value,
      $Res Function(_$DisconnectCommandImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotCommand
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$DisconnectCommandImpl implements DisconnectCommand {
  const _$DisconnectCommandImpl({final String? $type})
      : $type = $type ?? 'disconnect';

  factory _$DisconnectCommandImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisconnectCommandImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RobotCommand.disconnect()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisconnectCommandImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MoveDirection direction, int speed) move,
    required TResult Function() stop,
    required TResult Function() connect,
    required TResult Function() disconnect,
  }) {
    return disconnect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MoveDirection direction, int speed)? move,
    TResult? Function()? stop,
    TResult? Function()? connect,
    TResult? Function()? disconnect,
  }) {
    return disconnect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MoveDirection direction, int speed)? move,
    TResult Function()? stop,
    TResult Function()? connect,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoveCommand value) move,
    required TResult Function(StopCommand value) stop,
    required TResult Function(ConnectCommand value) connect,
    required TResult Function(DisconnectCommand value) disconnect,
  }) {
    return disconnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MoveCommand value)? move,
    TResult? Function(StopCommand value)? stop,
    TResult? Function(ConnectCommand value)? connect,
    TResult? Function(DisconnectCommand value)? disconnect,
  }) {
    return disconnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoveCommand value)? move,
    TResult Function(StopCommand value)? stop,
    TResult Function(ConnectCommand value)? connect,
    TResult Function(DisconnectCommand value)? disconnect,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DisconnectCommandImplToJson(
      this,
    );
  }
}

abstract class DisconnectCommand implements RobotCommand {
  const factory DisconnectCommand() = _$DisconnectCommandImpl;

  factory DisconnectCommand.fromJson(Map<String, dynamic> json) =
      _$DisconnectCommandImpl.fromJson;
}
