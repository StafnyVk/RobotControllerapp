// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'robot_telemetry_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RobotTelemetryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function() watchStopped,
    required TResult Function(RobotStatus status) statusReceived,
    required TResult Function(RobotFailure failure) streamErrored,
    required TResult Function() staleDetected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchStarted,
    TResult? Function()? watchStopped,
    TResult? Function(RobotStatus status)? statusReceived,
    TResult? Function(RobotFailure failure)? streamErrored,
    TResult? Function()? staleDetected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function()? watchStopped,
    TResult Function(RobotStatus status)? statusReceived,
    TResult Function(RobotFailure failure)? streamErrored,
    TResult Function()? staleDetected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchStarted value) watchStarted,
    required TResult Function(_WatchStopped value) watchStopped,
    required TResult Function(_StatusReceived value) statusReceived,
    required TResult Function(_StreamErrored value) streamErrored,
    required TResult Function(_StaleDetected value) staleDetected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchStarted value)? watchStarted,
    TResult? Function(_WatchStopped value)? watchStopped,
    TResult? Function(_StatusReceived value)? statusReceived,
    TResult? Function(_StreamErrored value)? streamErrored,
    TResult? Function(_StaleDetected value)? staleDetected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchStarted value)? watchStarted,
    TResult Function(_WatchStopped value)? watchStopped,
    TResult Function(_StatusReceived value)? statusReceived,
    TResult Function(_StreamErrored value)? streamErrored,
    TResult Function(_StaleDetected value)? staleDetected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RobotTelemetryEventCopyWith<$Res> {
  factory $RobotTelemetryEventCopyWith(
          RobotTelemetryEvent value, $Res Function(RobotTelemetryEvent) then) =
      _$RobotTelemetryEventCopyWithImpl<$Res, RobotTelemetryEvent>;
}

/// @nodoc
class _$RobotTelemetryEventCopyWithImpl<$Res, $Val extends RobotTelemetryEvent>
    implements $RobotTelemetryEventCopyWith<$Res> {
  _$RobotTelemetryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RobotTelemetryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$WatchStartedImplCopyWith<$Res> {
  factory _$$WatchStartedImplCopyWith(
          _$WatchStartedImpl value, $Res Function(_$WatchStartedImpl) then) =
      __$$WatchStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WatchStartedImplCopyWithImpl<$Res>
    extends _$RobotTelemetryEventCopyWithImpl<$Res, _$WatchStartedImpl>
    implements _$$WatchStartedImplCopyWith<$Res> {
  __$$WatchStartedImplCopyWithImpl(
      _$WatchStartedImpl _value, $Res Function(_$WatchStartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotTelemetryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WatchStartedImpl implements _WatchStarted {
  const _$WatchStartedImpl();

  @override
  String toString() {
    return 'RobotTelemetryEvent.watchStarted()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WatchStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function() watchStopped,
    required TResult Function(RobotStatus status) statusReceived,
    required TResult Function(RobotFailure failure) streamErrored,
    required TResult Function() staleDetected,
  }) {
    return watchStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchStarted,
    TResult? Function()? watchStopped,
    TResult? Function(RobotStatus status)? statusReceived,
    TResult? Function(RobotFailure failure)? streamErrored,
    TResult? Function()? staleDetected,
  }) {
    return watchStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function()? watchStopped,
    TResult Function(RobotStatus status)? statusReceived,
    TResult Function(RobotFailure failure)? streamErrored,
    TResult Function()? staleDetected,
    required TResult orElse(),
  }) {
    if (watchStarted != null) {
      return watchStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchStarted value) watchStarted,
    required TResult Function(_WatchStopped value) watchStopped,
    required TResult Function(_StatusReceived value) statusReceived,
    required TResult Function(_StreamErrored value) streamErrored,
    required TResult Function(_StaleDetected value) staleDetected,
  }) {
    return watchStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchStarted value)? watchStarted,
    TResult? Function(_WatchStopped value)? watchStopped,
    TResult? Function(_StatusReceived value)? statusReceived,
    TResult? Function(_StreamErrored value)? streamErrored,
    TResult? Function(_StaleDetected value)? staleDetected,
  }) {
    return watchStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchStarted value)? watchStarted,
    TResult Function(_WatchStopped value)? watchStopped,
    TResult Function(_StatusReceived value)? statusReceived,
    TResult Function(_StreamErrored value)? streamErrored,
    TResult Function(_StaleDetected value)? staleDetected,
    required TResult orElse(),
  }) {
    if (watchStarted != null) {
      return watchStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchStarted implements RobotTelemetryEvent {
  const factory _WatchStarted() = _$WatchStartedImpl;
}

/// @nodoc
abstract class _$$WatchStoppedImplCopyWith<$Res> {
  factory _$$WatchStoppedImplCopyWith(
          _$WatchStoppedImpl value, $Res Function(_$WatchStoppedImpl) then) =
      __$$WatchStoppedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WatchStoppedImplCopyWithImpl<$Res>
    extends _$RobotTelemetryEventCopyWithImpl<$Res, _$WatchStoppedImpl>
    implements _$$WatchStoppedImplCopyWith<$Res> {
  __$$WatchStoppedImplCopyWithImpl(
      _$WatchStoppedImpl _value, $Res Function(_$WatchStoppedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotTelemetryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WatchStoppedImpl implements _WatchStopped {
  const _$WatchStoppedImpl();

  @override
  String toString() {
    return 'RobotTelemetryEvent.watchStopped()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WatchStoppedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function() watchStopped,
    required TResult Function(RobotStatus status) statusReceived,
    required TResult Function(RobotFailure failure) streamErrored,
    required TResult Function() staleDetected,
  }) {
    return watchStopped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchStarted,
    TResult? Function()? watchStopped,
    TResult? Function(RobotStatus status)? statusReceived,
    TResult? Function(RobotFailure failure)? streamErrored,
    TResult? Function()? staleDetected,
  }) {
    return watchStopped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function()? watchStopped,
    TResult Function(RobotStatus status)? statusReceived,
    TResult Function(RobotFailure failure)? streamErrored,
    TResult Function()? staleDetected,
    required TResult orElse(),
  }) {
    if (watchStopped != null) {
      return watchStopped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchStarted value) watchStarted,
    required TResult Function(_WatchStopped value) watchStopped,
    required TResult Function(_StatusReceived value) statusReceived,
    required TResult Function(_StreamErrored value) streamErrored,
    required TResult Function(_StaleDetected value) staleDetected,
  }) {
    return watchStopped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchStarted value)? watchStarted,
    TResult? Function(_WatchStopped value)? watchStopped,
    TResult? Function(_StatusReceived value)? statusReceived,
    TResult? Function(_StreamErrored value)? streamErrored,
    TResult? Function(_StaleDetected value)? staleDetected,
  }) {
    return watchStopped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchStarted value)? watchStarted,
    TResult Function(_WatchStopped value)? watchStopped,
    TResult Function(_StatusReceived value)? statusReceived,
    TResult Function(_StreamErrored value)? streamErrored,
    TResult Function(_StaleDetected value)? staleDetected,
    required TResult orElse(),
  }) {
    if (watchStopped != null) {
      return watchStopped(this);
    }
    return orElse();
  }
}

abstract class _WatchStopped implements RobotTelemetryEvent {
  const factory _WatchStopped() = _$WatchStoppedImpl;
}

/// @nodoc
abstract class _$$StatusReceivedImplCopyWith<$Res> {
  factory _$$StatusReceivedImplCopyWith(_$StatusReceivedImpl value,
          $Res Function(_$StatusReceivedImpl) then) =
      __$$StatusReceivedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RobotStatus status});

  $RobotStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$StatusReceivedImplCopyWithImpl<$Res>
    extends _$RobotTelemetryEventCopyWithImpl<$Res, _$StatusReceivedImpl>
    implements _$$StatusReceivedImplCopyWith<$Res> {
  __$$StatusReceivedImplCopyWithImpl(
      _$StatusReceivedImpl _value, $Res Function(_$StatusReceivedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotTelemetryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$StatusReceivedImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RobotStatus,
    ));
  }

  /// Create a copy of RobotTelemetryEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RobotStatusCopyWith<$Res> get status {
    return $RobotStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc

class _$StatusReceivedImpl implements _StatusReceived {
  const _$StatusReceivedImpl(this.status);

  @override
  final RobotStatus status;

  @override
  String toString() {
    return 'RobotTelemetryEvent.statusReceived(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusReceivedImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of RobotTelemetryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusReceivedImplCopyWith<_$StatusReceivedImpl> get copyWith =>
      __$$StatusReceivedImplCopyWithImpl<_$StatusReceivedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function() watchStopped,
    required TResult Function(RobotStatus status) statusReceived,
    required TResult Function(RobotFailure failure) streamErrored,
    required TResult Function() staleDetected,
  }) {
    return statusReceived(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchStarted,
    TResult? Function()? watchStopped,
    TResult? Function(RobotStatus status)? statusReceived,
    TResult? Function(RobotFailure failure)? streamErrored,
    TResult? Function()? staleDetected,
  }) {
    return statusReceived?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function()? watchStopped,
    TResult Function(RobotStatus status)? statusReceived,
    TResult Function(RobotFailure failure)? streamErrored,
    TResult Function()? staleDetected,
    required TResult orElse(),
  }) {
    if (statusReceived != null) {
      return statusReceived(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchStarted value) watchStarted,
    required TResult Function(_WatchStopped value) watchStopped,
    required TResult Function(_StatusReceived value) statusReceived,
    required TResult Function(_StreamErrored value) streamErrored,
    required TResult Function(_StaleDetected value) staleDetected,
  }) {
    return statusReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchStarted value)? watchStarted,
    TResult? Function(_WatchStopped value)? watchStopped,
    TResult? Function(_StatusReceived value)? statusReceived,
    TResult? Function(_StreamErrored value)? streamErrored,
    TResult? Function(_StaleDetected value)? staleDetected,
  }) {
    return statusReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchStarted value)? watchStarted,
    TResult Function(_WatchStopped value)? watchStopped,
    TResult Function(_StatusReceived value)? statusReceived,
    TResult Function(_StreamErrored value)? streamErrored,
    TResult Function(_StaleDetected value)? staleDetected,
    required TResult orElse(),
  }) {
    if (statusReceived != null) {
      return statusReceived(this);
    }
    return orElse();
  }
}

abstract class _StatusReceived implements RobotTelemetryEvent {
  const factory _StatusReceived(final RobotStatus status) =
      _$StatusReceivedImpl;

  RobotStatus get status;

  /// Create a copy of RobotTelemetryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StatusReceivedImplCopyWith<_$StatusReceivedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StreamErroredImplCopyWith<$Res> {
  factory _$$StreamErroredImplCopyWith(
          _$StreamErroredImpl value, $Res Function(_$StreamErroredImpl) then) =
      __$$StreamErroredImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RobotFailure failure});

  $RobotFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$StreamErroredImplCopyWithImpl<$Res>
    extends _$RobotTelemetryEventCopyWithImpl<$Res, _$StreamErroredImpl>
    implements _$$StreamErroredImplCopyWith<$Res> {
  __$$StreamErroredImplCopyWithImpl(
      _$StreamErroredImpl _value, $Res Function(_$StreamErroredImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotTelemetryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$StreamErroredImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as RobotFailure,
    ));
  }

  /// Create a copy of RobotTelemetryEvent
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

class _$StreamErroredImpl implements _StreamErrored {
  const _$StreamErroredImpl(this.failure);

  @override
  final RobotFailure failure;

  @override
  String toString() {
    return 'RobotTelemetryEvent.streamErrored(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreamErroredImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of RobotTelemetryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreamErroredImplCopyWith<_$StreamErroredImpl> get copyWith =>
      __$$StreamErroredImplCopyWithImpl<_$StreamErroredImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function() watchStopped,
    required TResult Function(RobotStatus status) statusReceived,
    required TResult Function(RobotFailure failure) streamErrored,
    required TResult Function() staleDetected,
  }) {
    return streamErrored(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchStarted,
    TResult? Function()? watchStopped,
    TResult? Function(RobotStatus status)? statusReceived,
    TResult? Function(RobotFailure failure)? streamErrored,
    TResult? Function()? staleDetected,
  }) {
    return streamErrored?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function()? watchStopped,
    TResult Function(RobotStatus status)? statusReceived,
    TResult Function(RobotFailure failure)? streamErrored,
    TResult Function()? staleDetected,
    required TResult orElse(),
  }) {
    if (streamErrored != null) {
      return streamErrored(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchStarted value) watchStarted,
    required TResult Function(_WatchStopped value) watchStopped,
    required TResult Function(_StatusReceived value) statusReceived,
    required TResult Function(_StreamErrored value) streamErrored,
    required TResult Function(_StaleDetected value) staleDetected,
  }) {
    return streamErrored(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchStarted value)? watchStarted,
    TResult? Function(_WatchStopped value)? watchStopped,
    TResult? Function(_StatusReceived value)? statusReceived,
    TResult? Function(_StreamErrored value)? streamErrored,
    TResult? Function(_StaleDetected value)? staleDetected,
  }) {
    return streamErrored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchStarted value)? watchStarted,
    TResult Function(_WatchStopped value)? watchStopped,
    TResult Function(_StatusReceived value)? statusReceived,
    TResult Function(_StreamErrored value)? streamErrored,
    TResult Function(_StaleDetected value)? staleDetected,
    required TResult orElse(),
  }) {
    if (streamErrored != null) {
      return streamErrored(this);
    }
    return orElse();
  }
}

abstract class _StreamErrored implements RobotTelemetryEvent {
  const factory _StreamErrored(final RobotFailure failure) =
      _$StreamErroredImpl;

  RobotFailure get failure;

  /// Create a copy of RobotTelemetryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreamErroredImplCopyWith<_$StreamErroredImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StaleDetectedImplCopyWith<$Res> {
  factory _$$StaleDetectedImplCopyWith(
          _$StaleDetectedImpl value, $Res Function(_$StaleDetectedImpl) then) =
      __$$StaleDetectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StaleDetectedImplCopyWithImpl<$Res>
    extends _$RobotTelemetryEventCopyWithImpl<$Res, _$StaleDetectedImpl>
    implements _$$StaleDetectedImplCopyWith<$Res> {
  __$$StaleDetectedImplCopyWithImpl(
      _$StaleDetectedImpl _value, $Res Function(_$StaleDetectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotTelemetryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StaleDetectedImpl implements _StaleDetected {
  const _$StaleDetectedImpl();

  @override
  String toString() {
    return 'RobotTelemetryEvent.staleDetected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StaleDetectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchStarted,
    required TResult Function() watchStopped,
    required TResult Function(RobotStatus status) statusReceived,
    required TResult Function(RobotFailure failure) streamErrored,
    required TResult Function() staleDetected,
  }) {
    return staleDetected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? watchStarted,
    TResult? Function()? watchStopped,
    TResult? Function(RobotStatus status)? statusReceived,
    TResult? Function(RobotFailure failure)? streamErrored,
    TResult? Function()? staleDetected,
  }) {
    return staleDetected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchStarted,
    TResult Function()? watchStopped,
    TResult Function(RobotStatus status)? statusReceived,
    TResult Function(RobotFailure failure)? streamErrored,
    TResult Function()? staleDetected,
    required TResult orElse(),
  }) {
    if (staleDetected != null) {
      return staleDetected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchStarted value) watchStarted,
    required TResult Function(_WatchStopped value) watchStopped,
    required TResult Function(_StatusReceived value) statusReceived,
    required TResult Function(_StreamErrored value) streamErrored,
    required TResult Function(_StaleDetected value) staleDetected,
  }) {
    return staleDetected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WatchStarted value)? watchStarted,
    TResult? Function(_WatchStopped value)? watchStopped,
    TResult? Function(_StatusReceived value)? statusReceived,
    TResult? Function(_StreamErrored value)? streamErrored,
    TResult? Function(_StaleDetected value)? staleDetected,
  }) {
    return staleDetected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchStarted value)? watchStarted,
    TResult Function(_WatchStopped value)? watchStopped,
    TResult Function(_StatusReceived value)? statusReceived,
    TResult Function(_StreamErrored value)? streamErrored,
    TResult Function(_StaleDetected value)? staleDetected,
    required TResult orElse(),
  }) {
    if (staleDetected != null) {
      return staleDetected(this);
    }
    return orElse();
  }
}

abstract class _StaleDetected implements RobotTelemetryEvent {
  const factory _StaleDetected() = _$StaleDetectedImpl;
}

/// @nodoc
mixin _$RobotTelemetryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(RobotStatus status) live,
    required TResult Function(RobotStatus last, DateTime lastSeen) stale,
    required TResult Function(RobotFailure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(RobotStatus status)? live,
    TResult? Function(RobotStatus last, DateTime lastSeen)? stale,
    TResult? Function(RobotFailure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(RobotStatus status)? live,
    TResult Function(RobotStatus last, DateTime lastSeen)? stale,
    TResult Function(RobotFailure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TInitial value) initial,
    required TResult Function(_Live value) live,
    required TResult Function(_Stale value) stale,
    required TResult Function(_TError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TInitial value)? initial,
    TResult? Function(_Live value)? live,
    TResult? Function(_Stale value)? stale,
    TResult? Function(_TError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TInitial value)? initial,
    TResult Function(_Live value)? live,
    TResult Function(_Stale value)? stale,
    TResult Function(_TError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RobotTelemetryStateCopyWith<$Res> {
  factory $RobotTelemetryStateCopyWith(
          RobotTelemetryState value, $Res Function(RobotTelemetryState) then) =
      _$RobotTelemetryStateCopyWithImpl<$Res, RobotTelemetryState>;
}

/// @nodoc
class _$RobotTelemetryStateCopyWithImpl<$Res, $Val extends RobotTelemetryState>
    implements $RobotTelemetryStateCopyWith<$Res> {
  _$RobotTelemetryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RobotTelemetryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TInitialImplCopyWith<$Res> {
  factory _$$TInitialImplCopyWith(
          _$TInitialImpl value, $Res Function(_$TInitialImpl) then) =
      __$$TInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TInitialImplCopyWithImpl<$Res>
    extends _$RobotTelemetryStateCopyWithImpl<$Res, _$TInitialImpl>
    implements _$$TInitialImplCopyWith<$Res> {
  __$$TInitialImplCopyWithImpl(
      _$TInitialImpl _value, $Res Function(_$TInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotTelemetryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TInitialImpl implements _TInitial {
  const _$TInitialImpl();

  @override
  String toString() {
    return 'RobotTelemetryState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(RobotStatus status) live,
    required TResult Function(RobotStatus last, DateTime lastSeen) stale,
    required TResult Function(RobotFailure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(RobotStatus status)? live,
    TResult? Function(RobotStatus last, DateTime lastSeen)? stale,
    TResult? Function(RobotFailure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(RobotStatus status)? live,
    TResult Function(RobotStatus last, DateTime lastSeen)? stale,
    TResult Function(RobotFailure failure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TInitial value) initial,
    required TResult Function(_Live value) live,
    required TResult Function(_Stale value) stale,
    required TResult Function(_TError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TInitial value)? initial,
    TResult? Function(_Live value)? live,
    TResult? Function(_Stale value)? stale,
    TResult? Function(_TError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TInitial value)? initial,
    TResult Function(_Live value)? live,
    TResult Function(_Stale value)? stale,
    TResult Function(_TError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _TInitial implements RobotTelemetryState {
  const factory _TInitial() = _$TInitialImpl;
}

/// @nodoc
abstract class _$$LiveImplCopyWith<$Res> {
  factory _$$LiveImplCopyWith(
          _$LiveImpl value, $Res Function(_$LiveImpl) then) =
      __$$LiveImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RobotStatus status});

  $RobotStatusCopyWith<$Res> get status;
}

/// @nodoc
class __$$LiveImplCopyWithImpl<$Res>
    extends _$RobotTelemetryStateCopyWithImpl<$Res, _$LiveImpl>
    implements _$$LiveImplCopyWith<$Res> {
  __$$LiveImplCopyWithImpl(_$LiveImpl _value, $Res Function(_$LiveImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotTelemetryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$LiveImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RobotStatus,
    ));
  }

  /// Create a copy of RobotTelemetryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RobotStatusCopyWith<$Res> get status {
    return $RobotStatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc

class _$LiveImpl implements _Live {
  const _$LiveImpl(this.status);

  @override
  final RobotStatus status;

  @override
  String toString() {
    return 'RobotTelemetryState.live(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LiveImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of RobotTelemetryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LiveImplCopyWith<_$LiveImpl> get copyWith =>
      __$$LiveImplCopyWithImpl<_$LiveImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(RobotStatus status) live,
    required TResult Function(RobotStatus last, DateTime lastSeen) stale,
    required TResult Function(RobotFailure failure) error,
  }) {
    return live(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(RobotStatus status)? live,
    TResult? Function(RobotStatus last, DateTime lastSeen)? stale,
    TResult? Function(RobotFailure failure)? error,
  }) {
    return live?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(RobotStatus status)? live,
    TResult Function(RobotStatus last, DateTime lastSeen)? stale,
    TResult Function(RobotFailure failure)? error,
    required TResult orElse(),
  }) {
    if (live != null) {
      return live(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TInitial value) initial,
    required TResult Function(_Live value) live,
    required TResult Function(_Stale value) stale,
    required TResult Function(_TError value) error,
  }) {
    return live(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TInitial value)? initial,
    TResult? Function(_Live value)? live,
    TResult? Function(_Stale value)? stale,
    TResult? Function(_TError value)? error,
  }) {
    return live?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TInitial value)? initial,
    TResult Function(_Live value)? live,
    TResult Function(_Stale value)? stale,
    TResult Function(_TError value)? error,
    required TResult orElse(),
  }) {
    if (live != null) {
      return live(this);
    }
    return orElse();
  }
}

abstract class _Live implements RobotTelemetryState {
  const factory _Live(final RobotStatus status) = _$LiveImpl;

  RobotStatus get status;

  /// Create a copy of RobotTelemetryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LiveImplCopyWith<_$LiveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StaleImplCopyWith<$Res> {
  factory _$$StaleImplCopyWith(
          _$StaleImpl value, $Res Function(_$StaleImpl) then) =
      __$$StaleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RobotStatus last, DateTime lastSeen});

  $RobotStatusCopyWith<$Res> get last;
}

/// @nodoc
class __$$StaleImplCopyWithImpl<$Res>
    extends _$RobotTelemetryStateCopyWithImpl<$Res, _$StaleImpl>
    implements _$$StaleImplCopyWith<$Res> {
  __$$StaleImplCopyWithImpl(
      _$StaleImpl _value, $Res Function(_$StaleImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotTelemetryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? last = null,
    Object? lastSeen = null,
  }) {
    return _then(_$StaleImpl(
      null == last
          ? _value.last
          : last // ignore: cast_nullable_to_non_nullable
              as RobotStatus,
      null == lastSeen
          ? _value.lastSeen
          : lastSeen // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  /// Create a copy of RobotTelemetryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RobotStatusCopyWith<$Res> get last {
    return $RobotStatusCopyWith<$Res>(_value.last, (value) {
      return _then(_value.copyWith(last: value));
    });
  }
}

/// @nodoc

class _$StaleImpl implements _Stale {
  const _$StaleImpl(this.last, this.lastSeen);

  @override
  final RobotStatus last;
  @override
  final DateTime lastSeen;

  @override
  String toString() {
    return 'RobotTelemetryState.stale(last: $last, lastSeen: $lastSeen)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaleImpl &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.lastSeen, lastSeen) ||
                other.lastSeen == lastSeen));
  }

  @override
  int get hashCode => Object.hash(runtimeType, last, lastSeen);

  /// Create a copy of RobotTelemetryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StaleImplCopyWith<_$StaleImpl> get copyWith =>
      __$$StaleImplCopyWithImpl<_$StaleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(RobotStatus status) live,
    required TResult Function(RobotStatus last, DateTime lastSeen) stale,
    required TResult Function(RobotFailure failure) error,
  }) {
    return stale(last, lastSeen);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(RobotStatus status)? live,
    TResult? Function(RobotStatus last, DateTime lastSeen)? stale,
    TResult? Function(RobotFailure failure)? error,
  }) {
    return stale?.call(last, lastSeen);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(RobotStatus status)? live,
    TResult Function(RobotStatus last, DateTime lastSeen)? stale,
    TResult Function(RobotFailure failure)? error,
    required TResult orElse(),
  }) {
    if (stale != null) {
      return stale(last, lastSeen);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TInitial value) initial,
    required TResult Function(_Live value) live,
    required TResult Function(_Stale value) stale,
    required TResult Function(_TError value) error,
  }) {
    return stale(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TInitial value)? initial,
    TResult? Function(_Live value)? live,
    TResult? Function(_Stale value)? stale,
    TResult? Function(_TError value)? error,
  }) {
    return stale?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TInitial value)? initial,
    TResult Function(_Live value)? live,
    TResult Function(_Stale value)? stale,
    TResult Function(_TError value)? error,
    required TResult orElse(),
  }) {
    if (stale != null) {
      return stale(this);
    }
    return orElse();
  }
}

abstract class _Stale implements RobotTelemetryState {
  const factory _Stale(final RobotStatus last, final DateTime lastSeen) =
      _$StaleImpl;

  RobotStatus get last;
  DateTime get lastSeen;

  /// Create a copy of RobotTelemetryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StaleImplCopyWith<_$StaleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TErrorImplCopyWith<$Res> {
  factory _$$TErrorImplCopyWith(
          _$TErrorImpl value, $Res Function(_$TErrorImpl) then) =
      __$$TErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RobotFailure failure});

  $RobotFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$TErrorImplCopyWithImpl<$Res>
    extends _$RobotTelemetryStateCopyWithImpl<$Res, _$TErrorImpl>
    implements _$$TErrorImplCopyWith<$Res> {
  __$$TErrorImplCopyWithImpl(
      _$TErrorImpl _value, $Res Function(_$TErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotTelemetryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$TErrorImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as RobotFailure,
    ));
  }

  /// Create a copy of RobotTelemetryState
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

class _$TErrorImpl implements _TError {
  const _$TErrorImpl(this.failure);

  @override
  final RobotFailure failure;

  @override
  String toString() {
    return 'RobotTelemetryState.error(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TErrorImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of RobotTelemetryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TErrorImplCopyWith<_$TErrorImpl> get copyWith =>
      __$$TErrorImplCopyWithImpl<_$TErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(RobotStatus status) live,
    required TResult Function(RobotStatus last, DateTime lastSeen) stale,
    required TResult Function(RobotFailure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(RobotStatus status)? live,
    TResult? Function(RobotStatus last, DateTime lastSeen)? stale,
    TResult? Function(RobotFailure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(RobotStatus status)? live,
    TResult Function(RobotStatus last, DateTime lastSeen)? stale,
    TResult Function(RobotFailure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TInitial value) initial,
    required TResult Function(_Live value) live,
    required TResult Function(_Stale value) stale,
    required TResult Function(_TError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TInitial value)? initial,
    TResult? Function(_Live value)? live,
    TResult? Function(_Stale value)? stale,
    TResult? Function(_TError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TInitial value)? initial,
    TResult Function(_Live value)? live,
    TResult Function(_Stale value)? stale,
    TResult Function(_TError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _TError implements RobotTelemetryState {
  const factory _TError(final RobotFailure failure) = _$TErrorImpl;

  RobotFailure get failure;

  /// Create a copy of RobotTelemetryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TErrorImplCopyWith<_$TErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
