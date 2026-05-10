// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'robot_command_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RobotCommandEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MoveDirection direction, int speed) moveRequested,
    required TResult Function() stopRequested,
    required TResult Function() flushQueueRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MoveDirection direction, int speed)? moveRequested,
    TResult? Function()? stopRequested,
    TResult? Function()? flushQueueRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MoveDirection direction, int speed)? moveRequested,
    TResult Function()? stopRequested,
    TResult Function()? flushQueueRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MoveRequested value) moveRequested,
    required TResult Function(_StopRequested value) stopRequested,
    required TResult Function(_FlushQueueRequested value) flushQueueRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MoveRequested value)? moveRequested,
    TResult? Function(_StopRequested value)? stopRequested,
    TResult? Function(_FlushQueueRequested value)? flushQueueRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MoveRequested value)? moveRequested,
    TResult Function(_StopRequested value)? stopRequested,
    TResult Function(_FlushQueueRequested value)? flushQueueRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RobotCommandEventCopyWith<$Res> {
  factory $RobotCommandEventCopyWith(
          RobotCommandEvent value, $Res Function(RobotCommandEvent) then) =
      _$RobotCommandEventCopyWithImpl<$Res, RobotCommandEvent>;
}

/// @nodoc
class _$RobotCommandEventCopyWithImpl<$Res, $Val extends RobotCommandEvent>
    implements $RobotCommandEventCopyWith<$Res> {
  _$RobotCommandEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RobotCommandEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MoveRequestedImplCopyWith<$Res> {
  factory _$$MoveRequestedImplCopyWith(
          _$MoveRequestedImpl value, $Res Function(_$MoveRequestedImpl) then) =
      __$$MoveRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MoveDirection direction, int speed});
}

/// @nodoc
class __$$MoveRequestedImplCopyWithImpl<$Res>
    extends _$RobotCommandEventCopyWithImpl<$Res, _$MoveRequestedImpl>
    implements _$$MoveRequestedImplCopyWith<$Res> {
  __$$MoveRequestedImplCopyWithImpl(
      _$MoveRequestedImpl _value, $Res Function(_$MoveRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotCommandEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? direction = null,
    Object? speed = null,
  }) {
    return _then(_$MoveRequestedImpl(
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

class _$MoveRequestedImpl implements _MoveRequested {
  const _$MoveRequestedImpl(this.direction, {this.speed = 50});

  @override
  final MoveDirection direction;
  @override
  @JsonKey()
  final int speed;

  @override
  String toString() {
    return 'RobotCommandEvent.moveRequested(direction: $direction, speed: $speed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoveRequestedImpl &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.speed, speed) || other.speed == speed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, direction, speed);

  /// Create a copy of RobotCommandEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MoveRequestedImplCopyWith<_$MoveRequestedImpl> get copyWith =>
      __$$MoveRequestedImplCopyWithImpl<_$MoveRequestedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MoveDirection direction, int speed) moveRequested,
    required TResult Function() stopRequested,
    required TResult Function() flushQueueRequested,
  }) {
    return moveRequested(direction, speed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MoveDirection direction, int speed)? moveRequested,
    TResult? Function()? stopRequested,
    TResult? Function()? flushQueueRequested,
  }) {
    return moveRequested?.call(direction, speed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MoveDirection direction, int speed)? moveRequested,
    TResult Function()? stopRequested,
    TResult Function()? flushQueueRequested,
    required TResult orElse(),
  }) {
    if (moveRequested != null) {
      return moveRequested(direction, speed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MoveRequested value) moveRequested,
    required TResult Function(_StopRequested value) stopRequested,
    required TResult Function(_FlushQueueRequested value) flushQueueRequested,
  }) {
    return moveRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MoveRequested value)? moveRequested,
    TResult? Function(_StopRequested value)? stopRequested,
    TResult? Function(_FlushQueueRequested value)? flushQueueRequested,
  }) {
    return moveRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MoveRequested value)? moveRequested,
    TResult Function(_StopRequested value)? stopRequested,
    TResult Function(_FlushQueueRequested value)? flushQueueRequested,
    required TResult orElse(),
  }) {
    if (moveRequested != null) {
      return moveRequested(this);
    }
    return orElse();
  }
}

abstract class _MoveRequested implements RobotCommandEvent {
  const factory _MoveRequested(final MoveDirection direction,
      {final int speed}) = _$MoveRequestedImpl;

  MoveDirection get direction;
  int get speed;

  /// Create a copy of RobotCommandEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MoveRequestedImplCopyWith<_$MoveRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StopRequestedImplCopyWith<$Res> {
  factory _$$StopRequestedImplCopyWith(
          _$StopRequestedImpl value, $Res Function(_$StopRequestedImpl) then) =
      __$$StopRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopRequestedImplCopyWithImpl<$Res>
    extends _$RobotCommandEventCopyWithImpl<$Res, _$StopRequestedImpl>
    implements _$$StopRequestedImplCopyWith<$Res> {
  __$$StopRequestedImplCopyWithImpl(
      _$StopRequestedImpl _value, $Res Function(_$StopRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotCommandEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StopRequestedImpl implements _StopRequested {
  const _$StopRequestedImpl();

  @override
  String toString() {
    return 'RobotCommandEvent.stopRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MoveDirection direction, int speed) moveRequested,
    required TResult Function() stopRequested,
    required TResult Function() flushQueueRequested,
  }) {
    return stopRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MoveDirection direction, int speed)? moveRequested,
    TResult? Function()? stopRequested,
    TResult? Function()? flushQueueRequested,
  }) {
    return stopRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MoveDirection direction, int speed)? moveRequested,
    TResult Function()? stopRequested,
    TResult Function()? flushQueueRequested,
    required TResult orElse(),
  }) {
    if (stopRequested != null) {
      return stopRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MoveRequested value) moveRequested,
    required TResult Function(_StopRequested value) stopRequested,
    required TResult Function(_FlushQueueRequested value) flushQueueRequested,
  }) {
    return stopRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MoveRequested value)? moveRequested,
    TResult? Function(_StopRequested value)? stopRequested,
    TResult? Function(_FlushQueueRequested value)? flushQueueRequested,
  }) {
    return stopRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MoveRequested value)? moveRequested,
    TResult Function(_StopRequested value)? stopRequested,
    TResult Function(_FlushQueueRequested value)? flushQueueRequested,
    required TResult orElse(),
  }) {
    if (stopRequested != null) {
      return stopRequested(this);
    }
    return orElse();
  }
}

abstract class _StopRequested implements RobotCommandEvent {
  const factory _StopRequested() = _$StopRequestedImpl;
}

/// @nodoc
abstract class _$$FlushQueueRequestedImplCopyWith<$Res> {
  factory _$$FlushQueueRequestedImplCopyWith(_$FlushQueueRequestedImpl value,
          $Res Function(_$FlushQueueRequestedImpl) then) =
      __$$FlushQueueRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FlushQueueRequestedImplCopyWithImpl<$Res>
    extends _$RobotCommandEventCopyWithImpl<$Res, _$FlushQueueRequestedImpl>
    implements _$$FlushQueueRequestedImplCopyWith<$Res> {
  __$$FlushQueueRequestedImplCopyWithImpl(_$FlushQueueRequestedImpl _value,
      $Res Function(_$FlushQueueRequestedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotCommandEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FlushQueueRequestedImpl implements _FlushQueueRequested {
  const _$FlushQueueRequestedImpl();

  @override
  String toString() {
    return 'RobotCommandEvent.flushQueueRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlushQueueRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MoveDirection direction, int speed) moveRequested,
    required TResult Function() stopRequested,
    required TResult Function() flushQueueRequested,
  }) {
    return flushQueueRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MoveDirection direction, int speed)? moveRequested,
    TResult? Function()? stopRequested,
    TResult? Function()? flushQueueRequested,
  }) {
    return flushQueueRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MoveDirection direction, int speed)? moveRequested,
    TResult Function()? stopRequested,
    TResult Function()? flushQueueRequested,
    required TResult orElse(),
  }) {
    if (flushQueueRequested != null) {
      return flushQueueRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MoveRequested value) moveRequested,
    required TResult Function(_StopRequested value) stopRequested,
    required TResult Function(_FlushQueueRequested value) flushQueueRequested,
  }) {
    return flushQueueRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MoveRequested value)? moveRequested,
    TResult? Function(_StopRequested value)? stopRequested,
    TResult? Function(_FlushQueueRequested value)? flushQueueRequested,
  }) {
    return flushQueueRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MoveRequested value)? moveRequested,
    TResult Function(_StopRequested value)? stopRequested,
    TResult Function(_FlushQueueRequested value)? flushQueueRequested,
    required TResult orElse(),
  }) {
    if (flushQueueRequested != null) {
      return flushQueueRequested(this);
    }
    return orElse();
  }
}

abstract class _FlushQueueRequested implements RobotCommandEvent {
  const factory _FlushQueueRequested() = _$FlushQueueRequestedImpl;
}

/// @nodoc
mixin _$RobotCommandState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String commandId) dispatching,
    required TResult Function(String commandId) succeeded,
    required TResult Function(String commandId, RobotFailure failure) failed,
    required TResult Function(String commandId) queued,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String commandId)? dispatching,
    TResult? Function(String commandId)? succeeded,
    TResult? Function(String commandId, RobotFailure failure)? failed,
    TResult? Function(String commandId)? queued,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String commandId)? dispatching,
    TResult Function(String commandId)? succeeded,
    TResult Function(String commandId, RobotFailure failure)? failed,
    TResult Function(String commandId)? queued,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CIdle value) idle,
    required TResult Function(_Dispatching value) dispatching,
    required TResult Function(_Succeeded value) succeeded,
    required TResult Function(_CFailed value) failed,
    required TResult Function(_Queued value) queued,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CIdle value)? idle,
    TResult? Function(_Dispatching value)? dispatching,
    TResult? Function(_Succeeded value)? succeeded,
    TResult? Function(_CFailed value)? failed,
    TResult? Function(_Queued value)? queued,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CIdle value)? idle,
    TResult Function(_Dispatching value)? dispatching,
    TResult Function(_Succeeded value)? succeeded,
    TResult Function(_CFailed value)? failed,
    TResult Function(_Queued value)? queued,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RobotCommandStateCopyWith<$Res> {
  factory $RobotCommandStateCopyWith(
          RobotCommandState value, $Res Function(RobotCommandState) then) =
      _$RobotCommandStateCopyWithImpl<$Res, RobotCommandState>;
}

/// @nodoc
class _$RobotCommandStateCopyWithImpl<$Res, $Val extends RobotCommandState>
    implements $RobotCommandStateCopyWith<$Res> {
  _$RobotCommandStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RobotCommandState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CIdleImplCopyWith<$Res> {
  factory _$$CIdleImplCopyWith(
          _$CIdleImpl value, $Res Function(_$CIdleImpl) then) =
      __$$CIdleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CIdleImplCopyWithImpl<$Res>
    extends _$RobotCommandStateCopyWithImpl<$Res, _$CIdleImpl>
    implements _$$CIdleImplCopyWith<$Res> {
  __$$CIdleImplCopyWithImpl(
      _$CIdleImpl _value, $Res Function(_$CIdleImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotCommandState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CIdleImpl extends _CIdle {
  const _$CIdleImpl() : super._();

  @override
  String toString() {
    return 'RobotCommandState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CIdleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String commandId) dispatching,
    required TResult Function(String commandId) succeeded,
    required TResult Function(String commandId, RobotFailure failure) failed,
    required TResult Function(String commandId) queued,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String commandId)? dispatching,
    TResult? Function(String commandId)? succeeded,
    TResult? Function(String commandId, RobotFailure failure)? failed,
    TResult? Function(String commandId)? queued,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String commandId)? dispatching,
    TResult Function(String commandId)? succeeded,
    TResult Function(String commandId, RobotFailure failure)? failed,
    TResult Function(String commandId)? queued,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CIdle value) idle,
    required TResult Function(_Dispatching value) dispatching,
    required TResult Function(_Succeeded value) succeeded,
    required TResult Function(_CFailed value) failed,
    required TResult Function(_Queued value) queued,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CIdle value)? idle,
    TResult? Function(_Dispatching value)? dispatching,
    TResult? Function(_Succeeded value)? succeeded,
    TResult? Function(_CFailed value)? failed,
    TResult? Function(_Queued value)? queued,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CIdle value)? idle,
    TResult Function(_Dispatching value)? dispatching,
    TResult Function(_Succeeded value)? succeeded,
    TResult Function(_CFailed value)? failed,
    TResult Function(_Queued value)? queued,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _CIdle extends RobotCommandState {
  const factory _CIdle() = _$CIdleImpl;
  const _CIdle._() : super._();
}

/// @nodoc
abstract class _$$DispatchingImplCopyWith<$Res> {
  factory _$$DispatchingImplCopyWith(
          _$DispatchingImpl value, $Res Function(_$DispatchingImpl) then) =
      __$$DispatchingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String commandId});
}

/// @nodoc
class __$$DispatchingImplCopyWithImpl<$Res>
    extends _$RobotCommandStateCopyWithImpl<$Res, _$DispatchingImpl>
    implements _$$DispatchingImplCopyWith<$Res> {
  __$$DispatchingImplCopyWithImpl(
      _$DispatchingImpl _value, $Res Function(_$DispatchingImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotCommandState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commandId = null,
  }) {
    return _then(_$DispatchingImpl(
      null == commandId
          ? _value.commandId
          : commandId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DispatchingImpl extends _Dispatching {
  const _$DispatchingImpl(this.commandId) : super._();

  @override
  final String commandId;

  @override
  String toString() {
    return 'RobotCommandState.dispatching(commandId: $commandId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DispatchingImpl &&
            (identical(other.commandId, commandId) ||
                other.commandId == commandId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commandId);

  /// Create a copy of RobotCommandState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DispatchingImplCopyWith<_$DispatchingImpl> get copyWith =>
      __$$DispatchingImplCopyWithImpl<_$DispatchingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String commandId) dispatching,
    required TResult Function(String commandId) succeeded,
    required TResult Function(String commandId, RobotFailure failure) failed,
    required TResult Function(String commandId) queued,
  }) {
    return dispatching(commandId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String commandId)? dispatching,
    TResult? Function(String commandId)? succeeded,
    TResult? Function(String commandId, RobotFailure failure)? failed,
    TResult? Function(String commandId)? queued,
  }) {
    return dispatching?.call(commandId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String commandId)? dispatching,
    TResult Function(String commandId)? succeeded,
    TResult Function(String commandId, RobotFailure failure)? failed,
    TResult Function(String commandId)? queued,
    required TResult orElse(),
  }) {
    if (dispatching != null) {
      return dispatching(commandId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CIdle value) idle,
    required TResult Function(_Dispatching value) dispatching,
    required TResult Function(_Succeeded value) succeeded,
    required TResult Function(_CFailed value) failed,
    required TResult Function(_Queued value) queued,
  }) {
    return dispatching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CIdle value)? idle,
    TResult? Function(_Dispatching value)? dispatching,
    TResult? Function(_Succeeded value)? succeeded,
    TResult? Function(_CFailed value)? failed,
    TResult? Function(_Queued value)? queued,
  }) {
    return dispatching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CIdle value)? idle,
    TResult Function(_Dispatching value)? dispatching,
    TResult Function(_Succeeded value)? succeeded,
    TResult Function(_CFailed value)? failed,
    TResult Function(_Queued value)? queued,
    required TResult orElse(),
  }) {
    if (dispatching != null) {
      return dispatching(this);
    }
    return orElse();
  }
}

abstract class _Dispatching extends RobotCommandState {
  const factory _Dispatching(final String commandId) = _$DispatchingImpl;
  const _Dispatching._() : super._();

  String get commandId;

  /// Create a copy of RobotCommandState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DispatchingImplCopyWith<_$DispatchingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SucceededImplCopyWith<$Res> {
  factory _$$SucceededImplCopyWith(
          _$SucceededImpl value, $Res Function(_$SucceededImpl) then) =
      __$$SucceededImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String commandId});
}

/// @nodoc
class __$$SucceededImplCopyWithImpl<$Res>
    extends _$RobotCommandStateCopyWithImpl<$Res, _$SucceededImpl>
    implements _$$SucceededImplCopyWith<$Res> {
  __$$SucceededImplCopyWithImpl(
      _$SucceededImpl _value, $Res Function(_$SucceededImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotCommandState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commandId = null,
  }) {
    return _then(_$SucceededImpl(
      null == commandId
          ? _value.commandId
          : commandId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SucceededImpl extends _Succeeded {
  const _$SucceededImpl(this.commandId) : super._();

  @override
  final String commandId;

  @override
  String toString() {
    return 'RobotCommandState.succeeded(commandId: $commandId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SucceededImpl &&
            (identical(other.commandId, commandId) ||
                other.commandId == commandId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commandId);

  /// Create a copy of RobotCommandState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SucceededImplCopyWith<_$SucceededImpl> get copyWith =>
      __$$SucceededImplCopyWithImpl<_$SucceededImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String commandId) dispatching,
    required TResult Function(String commandId) succeeded,
    required TResult Function(String commandId, RobotFailure failure) failed,
    required TResult Function(String commandId) queued,
  }) {
    return succeeded(commandId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String commandId)? dispatching,
    TResult? Function(String commandId)? succeeded,
    TResult? Function(String commandId, RobotFailure failure)? failed,
    TResult? Function(String commandId)? queued,
  }) {
    return succeeded?.call(commandId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String commandId)? dispatching,
    TResult Function(String commandId)? succeeded,
    TResult Function(String commandId, RobotFailure failure)? failed,
    TResult Function(String commandId)? queued,
    required TResult orElse(),
  }) {
    if (succeeded != null) {
      return succeeded(commandId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CIdle value) idle,
    required TResult Function(_Dispatching value) dispatching,
    required TResult Function(_Succeeded value) succeeded,
    required TResult Function(_CFailed value) failed,
    required TResult Function(_Queued value) queued,
  }) {
    return succeeded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CIdle value)? idle,
    TResult? Function(_Dispatching value)? dispatching,
    TResult? Function(_Succeeded value)? succeeded,
    TResult? Function(_CFailed value)? failed,
    TResult? Function(_Queued value)? queued,
  }) {
    return succeeded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CIdle value)? idle,
    TResult Function(_Dispatching value)? dispatching,
    TResult Function(_Succeeded value)? succeeded,
    TResult Function(_CFailed value)? failed,
    TResult Function(_Queued value)? queued,
    required TResult orElse(),
  }) {
    if (succeeded != null) {
      return succeeded(this);
    }
    return orElse();
  }
}

abstract class _Succeeded extends RobotCommandState {
  const factory _Succeeded(final String commandId) = _$SucceededImpl;
  const _Succeeded._() : super._();

  String get commandId;

  /// Create a copy of RobotCommandState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SucceededImplCopyWith<_$SucceededImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CFailedImplCopyWith<$Res> {
  factory _$$CFailedImplCopyWith(
          _$CFailedImpl value, $Res Function(_$CFailedImpl) then) =
      __$$CFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String commandId, RobotFailure failure});

  $RobotFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$CFailedImplCopyWithImpl<$Res>
    extends _$RobotCommandStateCopyWithImpl<$Res, _$CFailedImpl>
    implements _$$CFailedImplCopyWith<$Res> {
  __$$CFailedImplCopyWithImpl(
      _$CFailedImpl _value, $Res Function(_$CFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotCommandState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commandId = null,
    Object? failure = null,
  }) {
    return _then(_$CFailedImpl(
      null == commandId
          ? _value.commandId
          : commandId // ignore: cast_nullable_to_non_nullable
              as String,
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as RobotFailure,
    ));
  }

  /// Create a copy of RobotCommandState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RobotFailureCopyWith<$Res> get failure {
    return $RobotFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$CFailedImpl extends _CFailed {
  const _$CFailedImpl(this.commandId, this.failure) : super._();

  @override
  final String commandId;
  @override
  final RobotFailure failure;

  @override
  String toString() {
    return 'RobotCommandState.failed(commandId: $commandId, failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CFailedImpl &&
            (identical(other.commandId, commandId) ||
                other.commandId == commandId) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commandId, failure);

  /// Create a copy of RobotCommandState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CFailedImplCopyWith<_$CFailedImpl> get copyWith =>
      __$$CFailedImplCopyWithImpl<_$CFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String commandId) dispatching,
    required TResult Function(String commandId) succeeded,
    required TResult Function(String commandId, RobotFailure failure) failed,
    required TResult Function(String commandId) queued,
  }) {
    return failed(commandId, failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String commandId)? dispatching,
    TResult? Function(String commandId)? succeeded,
    TResult? Function(String commandId, RobotFailure failure)? failed,
    TResult? Function(String commandId)? queued,
  }) {
    return failed?.call(commandId, failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String commandId)? dispatching,
    TResult Function(String commandId)? succeeded,
    TResult Function(String commandId, RobotFailure failure)? failed,
    TResult Function(String commandId)? queued,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(commandId, failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CIdle value) idle,
    required TResult Function(_Dispatching value) dispatching,
    required TResult Function(_Succeeded value) succeeded,
    required TResult Function(_CFailed value) failed,
    required TResult Function(_Queued value) queued,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CIdle value)? idle,
    TResult? Function(_Dispatching value)? dispatching,
    TResult? Function(_Succeeded value)? succeeded,
    TResult? Function(_CFailed value)? failed,
    TResult? Function(_Queued value)? queued,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CIdle value)? idle,
    TResult Function(_Dispatching value)? dispatching,
    TResult Function(_Succeeded value)? succeeded,
    TResult Function(_CFailed value)? failed,
    TResult Function(_Queued value)? queued,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _CFailed extends RobotCommandState {
  const factory _CFailed(final String commandId, final RobotFailure failure) =
      _$CFailedImpl;
  const _CFailed._() : super._();

  String get commandId;
  RobotFailure get failure;

  /// Create a copy of RobotCommandState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CFailedImplCopyWith<_$CFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QueuedImplCopyWith<$Res> {
  factory _$$QueuedImplCopyWith(
          _$QueuedImpl value, $Res Function(_$QueuedImpl) then) =
      __$$QueuedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String commandId});
}

/// @nodoc
class __$$QueuedImplCopyWithImpl<$Res>
    extends _$RobotCommandStateCopyWithImpl<$Res, _$QueuedImpl>
    implements _$$QueuedImplCopyWith<$Res> {
  __$$QueuedImplCopyWithImpl(
      _$QueuedImpl _value, $Res Function(_$QueuedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotCommandState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commandId = null,
  }) {
    return _then(_$QueuedImpl(
      null == commandId
          ? _value.commandId
          : commandId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QueuedImpl extends _Queued {
  const _$QueuedImpl(this.commandId) : super._();

  @override
  final String commandId;

  @override
  String toString() {
    return 'RobotCommandState.queued(commandId: $commandId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueuedImpl &&
            (identical(other.commandId, commandId) ||
                other.commandId == commandId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, commandId);

  /// Create a copy of RobotCommandState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$QueuedImplCopyWith<_$QueuedImpl> get copyWith =>
      __$$QueuedImplCopyWithImpl<_$QueuedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function(String commandId) dispatching,
    required TResult Function(String commandId) succeeded,
    required TResult Function(String commandId, RobotFailure failure) failed,
    required TResult Function(String commandId) queued,
  }) {
    return queued(commandId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function(String commandId)? dispatching,
    TResult? Function(String commandId)? succeeded,
    TResult? Function(String commandId, RobotFailure failure)? failed,
    TResult? Function(String commandId)? queued,
  }) {
    return queued?.call(commandId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function(String commandId)? dispatching,
    TResult Function(String commandId)? succeeded,
    TResult Function(String commandId, RobotFailure failure)? failed,
    TResult Function(String commandId)? queued,
    required TResult orElse(),
  }) {
    if (queued != null) {
      return queued(commandId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CIdle value) idle,
    required TResult Function(_Dispatching value) dispatching,
    required TResult Function(_Succeeded value) succeeded,
    required TResult Function(_CFailed value) failed,
    required TResult Function(_Queued value) queued,
  }) {
    return queued(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CIdle value)? idle,
    TResult? Function(_Dispatching value)? dispatching,
    TResult? Function(_Succeeded value)? succeeded,
    TResult? Function(_CFailed value)? failed,
    TResult? Function(_Queued value)? queued,
  }) {
    return queued?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CIdle value)? idle,
    TResult Function(_Dispatching value)? dispatching,
    TResult Function(_Succeeded value)? succeeded,
    TResult Function(_CFailed value)? failed,
    TResult Function(_Queued value)? queued,
    required TResult orElse(),
  }) {
    if (queued != null) {
      return queued(this);
    }
    return orElse();
  }
}

abstract class _Queued extends RobotCommandState {
  const factory _Queued(final String commandId) = _$QueuedImpl;
  const _Queued._() : super._();

  String get commandId;

  /// Create a copy of RobotCommandState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$QueuedImplCopyWith<_$QueuedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
