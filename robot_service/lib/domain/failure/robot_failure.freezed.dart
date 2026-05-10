// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'robot_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RobotFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notConnected,
    required TResult Function() connectFailed,
    required TResult Function() disconnectFailed,
    required TResult Function(String reason) commandFailed,
    required TResult Function() networkUnavailable,
    required TResult Function() timeout,
    required TResult Function() invalidResponse,
    required TResult Function() lowBattery,
    required TResult Function() queuedOffline,
    required TResult Function(String message) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notConnected,
    TResult? Function()? connectFailed,
    TResult? Function()? disconnectFailed,
    TResult? Function(String reason)? commandFailed,
    TResult? Function()? networkUnavailable,
    TResult? Function()? timeout,
    TResult? Function()? invalidResponse,
    TResult? Function()? lowBattery,
    TResult? Function()? queuedOffline,
    TResult? Function(String message)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notConnected,
    TResult Function()? connectFailed,
    TResult Function()? disconnectFailed,
    TResult Function(String reason)? commandFailed,
    TResult Function()? networkUnavailable,
    TResult Function()? timeout,
    TResult Function()? invalidResponse,
    TResult Function()? lowBattery,
    TResult Function()? queuedOffline,
    TResult Function(String message)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotConnected value) notConnected,
    required TResult Function(ConnectFailed value) connectFailed,
    required TResult Function(DisconnectFailed value) disconnectFailed,
    required TResult Function(CommandFailed value) commandFailed,
    required TResult Function(NetworkUnavailable value) networkUnavailable,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(InvalidResponse value) invalidResponse,
    required TResult Function(LowBattery value) lowBattery,
    required TResult Function(QueuedOffline value) queuedOffline,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotConnected value)? notConnected,
    TResult? Function(ConnectFailed value)? connectFailed,
    TResult? Function(DisconnectFailed value)? disconnectFailed,
    TResult? Function(CommandFailed value)? commandFailed,
    TResult? Function(NetworkUnavailable value)? networkUnavailable,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(InvalidResponse value)? invalidResponse,
    TResult? Function(LowBattery value)? lowBattery,
    TResult? Function(QueuedOffline value)? queuedOffline,
    TResult? Function(UnexpectedFailure value)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotConnected value)? notConnected,
    TResult Function(ConnectFailed value)? connectFailed,
    TResult Function(DisconnectFailed value)? disconnectFailed,
    TResult Function(CommandFailed value)? commandFailed,
    TResult Function(NetworkUnavailable value)? networkUnavailable,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(InvalidResponse value)? invalidResponse,
    TResult Function(LowBattery value)? lowBattery,
    TResult Function(QueuedOffline value)? queuedOffline,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RobotFailureCopyWith<$Res> {
  factory $RobotFailureCopyWith(
          RobotFailure value, $Res Function(RobotFailure) then) =
      _$RobotFailureCopyWithImpl<$Res, RobotFailure>;
}

/// @nodoc
class _$RobotFailureCopyWithImpl<$Res, $Val extends RobotFailure>
    implements $RobotFailureCopyWith<$Res> {
  _$RobotFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RobotFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NotConnectedImplCopyWith<$Res> {
  factory _$$NotConnectedImplCopyWith(
          _$NotConnectedImpl value, $Res Function(_$NotConnectedImpl) then) =
      __$$NotConnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotConnectedImplCopyWithImpl<$Res>
    extends _$RobotFailureCopyWithImpl<$Res, _$NotConnectedImpl>
    implements _$$NotConnectedImplCopyWith<$Res> {
  __$$NotConnectedImplCopyWithImpl(
      _$NotConnectedImpl _value, $Res Function(_$NotConnectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NotConnectedImpl implements NotConnected {
  const _$NotConnectedImpl();

  @override
  String toString() {
    return 'RobotFailure.notConnected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotConnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notConnected,
    required TResult Function() connectFailed,
    required TResult Function() disconnectFailed,
    required TResult Function(String reason) commandFailed,
    required TResult Function() networkUnavailable,
    required TResult Function() timeout,
    required TResult Function() invalidResponse,
    required TResult Function() lowBattery,
    required TResult Function() queuedOffline,
    required TResult Function(String message) unexpected,
  }) {
    return notConnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notConnected,
    TResult? Function()? connectFailed,
    TResult? Function()? disconnectFailed,
    TResult? Function(String reason)? commandFailed,
    TResult? Function()? networkUnavailable,
    TResult? Function()? timeout,
    TResult? Function()? invalidResponse,
    TResult? Function()? lowBattery,
    TResult? Function()? queuedOffline,
    TResult? Function(String message)? unexpected,
  }) {
    return notConnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notConnected,
    TResult Function()? connectFailed,
    TResult Function()? disconnectFailed,
    TResult Function(String reason)? commandFailed,
    TResult Function()? networkUnavailable,
    TResult Function()? timeout,
    TResult Function()? invalidResponse,
    TResult Function()? lowBattery,
    TResult Function()? queuedOffline,
    TResult Function(String message)? unexpected,
    required TResult orElse(),
  }) {
    if (notConnected != null) {
      return notConnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotConnected value) notConnected,
    required TResult Function(ConnectFailed value) connectFailed,
    required TResult Function(DisconnectFailed value) disconnectFailed,
    required TResult Function(CommandFailed value) commandFailed,
    required TResult Function(NetworkUnavailable value) networkUnavailable,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(InvalidResponse value) invalidResponse,
    required TResult Function(LowBattery value) lowBattery,
    required TResult Function(QueuedOffline value) queuedOffline,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) {
    return notConnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotConnected value)? notConnected,
    TResult? Function(ConnectFailed value)? connectFailed,
    TResult? Function(DisconnectFailed value)? disconnectFailed,
    TResult? Function(CommandFailed value)? commandFailed,
    TResult? Function(NetworkUnavailable value)? networkUnavailable,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(InvalidResponse value)? invalidResponse,
    TResult? Function(LowBattery value)? lowBattery,
    TResult? Function(QueuedOffline value)? queuedOffline,
    TResult? Function(UnexpectedFailure value)? unexpected,
  }) {
    return notConnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotConnected value)? notConnected,
    TResult Function(ConnectFailed value)? connectFailed,
    TResult Function(DisconnectFailed value)? disconnectFailed,
    TResult Function(CommandFailed value)? commandFailed,
    TResult Function(NetworkUnavailable value)? networkUnavailable,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(InvalidResponse value)? invalidResponse,
    TResult Function(LowBattery value)? lowBattery,
    TResult Function(QueuedOffline value)? queuedOffline,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (notConnected != null) {
      return notConnected(this);
    }
    return orElse();
  }
}

abstract class NotConnected implements RobotFailure {
  const factory NotConnected() = _$NotConnectedImpl;
}

/// @nodoc
abstract class _$$ConnectFailedImplCopyWith<$Res> {
  factory _$$ConnectFailedImplCopyWith(
          _$ConnectFailedImpl value, $Res Function(_$ConnectFailedImpl) then) =
      __$$ConnectFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectFailedImplCopyWithImpl<$Res>
    extends _$RobotFailureCopyWithImpl<$Res, _$ConnectFailedImpl>
    implements _$$ConnectFailedImplCopyWith<$Res> {
  __$$ConnectFailedImplCopyWithImpl(
      _$ConnectFailedImpl _value, $Res Function(_$ConnectFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConnectFailedImpl implements ConnectFailed {
  const _$ConnectFailedImpl();

  @override
  String toString() {
    return 'RobotFailure.connectFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notConnected,
    required TResult Function() connectFailed,
    required TResult Function() disconnectFailed,
    required TResult Function(String reason) commandFailed,
    required TResult Function() networkUnavailable,
    required TResult Function() timeout,
    required TResult Function() invalidResponse,
    required TResult Function() lowBattery,
    required TResult Function() queuedOffline,
    required TResult Function(String message) unexpected,
  }) {
    return connectFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notConnected,
    TResult? Function()? connectFailed,
    TResult? Function()? disconnectFailed,
    TResult? Function(String reason)? commandFailed,
    TResult? Function()? networkUnavailable,
    TResult? Function()? timeout,
    TResult? Function()? invalidResponse,
    TResult? Function()? lowBattery,
    TResult? Function()? queuedOffline,
    TResult? Function(String message)? unexpected,
  }) {
    return connectFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notConnected,
    TResult Function()? connectFailed,
    TResult Function()? disconnectFailed,
    TResult Function(String reason)? commandFailed,
    TResult Function()? networkUnavailable,
    TResult Function()? timeout,
    TResult Function()? invalidResponse,
    TResult Function()? lowBattery,
    TResult Function()? queuedOffline,
    TResult Function(String message)? unexpected,
    required TResult orElse(),
  }) {
    if (connectFailed != null) {
      return connectFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotConnected value) notConnected,
    required TResult Function(ConnectFailed value) connectFailed,
    required TResult Function(DisconnectFailed value) disconnectFailed,
    required TResult Function(CommandFailed value) commandFailed,
    required TResult Function(NetworkUnavailable value) networkUnavailable,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(InvalidResponse value) invalidResponse,
    required TResult Function(LowBattery value) lowBattery,
    required TResult Function(QueuedOffline value) queuedOffline,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) {
    return connectFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotConnected value)? notConnected,
    TResult? Function(ConnectFailed value)? connectFailed,
    TResult? Function(DisconnectFailed value)? disconnectFailed,
    TResult? Function(CommandFailed value)? commandFailed,
    TResult? Function(NetworkUnavailable value)? networkUnavailable,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(InvalidResponse value)? invalidResponse,
    TResult? Function(LowBattery value)? lowBattery,
    TResult? Function(QueuedOffline value)? queuedOffline,
    TResult? Function(UnexpectedFailure value)? unexpected,
  }) {
    return connectFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotConnected value)? notConnected,
    TResult Function(ConnectFailed value)? connectFailed,
    TResult Function(DisconnectFailed value)? disconnectFailed,
    TResult Function(CommandFailed value)? commandFailed,
    TResult Function(NetworkUnavailable value)? networkUnavailable,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(InvalidResponse value)? invalidResponse,
    TResult Function(LowBattery value)? lowBattery,
    TResult Function(QueuedOffline value)? queuedOffline,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (connectFailed != null) {
      return connectFailed(this);
    }
    return orElse();
  }
}

abstract class ConnectFailed implements RobotFailure {
  const factory ConnectFailed() = _$ConnectFailedImpl;
}

/// @nodoc
abstract class _$$DisconnectFailedImplCopyWith<$Res> {
  factory _$$DisconnectFailedImplCopyWith(_$DisconnectFailedImpl value,
          $Res Function(_$DisconnectFailedImpl) then) =
      __$$DisconnectFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisconnectFailedImplCopyWithImpl<$Res>
    extends _$RobotFailureCopyWithImpl<$Res, _$DisconnectFailedImpl>
    implements _$$DisconnectFailedImplCopyWith<$Res> {
  __$$DisconnectFailedImplCopyWithImpl(_$DisconnectFailedImpl _value,
      $Res Function(_$DisconnectFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DisconnectFailedImpl implements DisconnectFailed {
  const _$DisconnectFailedImpl();

  @override
  String toString() {
    return 'RobotFailure.disconnectFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisconnectFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notConnected,
    required TResult Function() connectFailed,
    required TResult Function() disconnectFailed,
    required TResult Function(String reason) commandFailed,
    required TResult Function() networkUnavailable,
    required TResult Function() timeout,
    required TResult Function() invalidResponse,
    required TResult Function() lowBattery,
    required TResult Function() queuedOffline,
    required TResult Function(String message) unexpected,
  }) {
    return disconnectFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notConnected,
    TResult? Function()? connectFailed,
    TResult? Function()? disconnectFailed,
    TResult? Function(String reason)? commandFailed,
    TResult? Function()? networkUnavailable,
    TResult? Function()? timeout,
    TResult? Function()? invalidResponse,
    TResult? Function()? lowBattery,
    TResult? Function()? queuedOffline,
    TResult? Function(String message)? unexpected,
  }) {
    return disconnectFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notConnected,
    TResult Function()? connectFailed,
    TResult Function()? disconnectFailed,
    TResult Function(String reason)? commandFailed,
    TResult Function()? networkUnavailable,
    TResult Function()? timeout,
    TResult Function()? invalidResponse,
    TResult Function()? lowBattery,
    TResult Function()? queuedOffline,
    TResult Function(String message)? unexpected,
    required TResult orElse(),
  }) {
    if (disconnectFailed != null) {
      return disconnectFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotConnected value) notConnected,
    required TResult Function(ConnectFailed value) connectFailed,
    required TResult Function(DisconnectFailed value) disconnectFailed,
    required TResult Function(CommandFailed value) commandFailed,
    required TResult Function(NetworkUnavailable value) networkUnavailable,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(InvalidResponse value) invalidResponse,
    required TResult Function(LowBattery value) lowBattery,
    required TResult Function(QueuedOffline value) queuedOffline,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) {
    return disconnectFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotConnected value)? notConnected,
    TResult? Function(ConnectFailed value)? connectFailed,
    TResult? Function(DisconnectFailed value)? disconnectFailed,
    TResult? Function(CommandFailed value)? commandFailed,
    TResult? Function(NetworkUnavailable value)? networkUnavailable,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(InvalidResponse value)? invalidResponse,
    TResult? Function(LowBattery value)? lowBattery,
    TResult? Function(QueuedOffline value)? queuedOffline,
    TResult? Function(UnexpectedFailure value)? unexpected,
  }) {
    return disconnectFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotConnected value)? notConnected,
    TResult Function(ConnectFailed value)? connectFailed,
    TResult Function(DisconnectFailed value)? disconnectFailed,
    TResult Function(CommandFailed value)? commandFailed,
    TResult Function(NetworkUnavailable value)? networkUnavailable,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(InvalidResponse value)? invalidResponse,
    TResult Function(LowBattery value)? lowBattery,
    TResult Function(QueuedOffline value)? queuedOffline,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (disconnectFailed != null) {
      return disconnectFailed(this);
    }
    return orElse();
  }
}

abstract class DisconnectFailed implements RobotFailure {
  const factory DisconnectFailed() = _$DisconnectFailedImpl;
}

/// @nodoc
abstract class _$$CommandFailedImplCopyWith<$Res> {
  factory _$$CommandFailedImplCopyWith(
          _$CommandFailedImpl value, $Res Function(_$CommandFailedImpl) then) =
      __$$CommandFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String reason});
}

/// @nodoc
class __$$CommandFailedImplCopyWithImpl<$Res>
    extends _$RobotFailureCopyWithImpl<$Res, _$CommandFailedImpl>
    implements _$$CommandFailedImplCopyWith<$Res> {
  __$$CommandFailedImplCopyWithImpl(
      _$CommandFailedImpl _value, $Res Function(_$CommandFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = null,
  }) {
    return _then(_$CommandFailedImpl(
      null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CommandFailedImpl implements CommandFailed {
  const _$CommandFailedImpl(this.reason);

  @override
  final String reason;

  @override
  String toString() {
    return 'RobotFailure.commandFailed(reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommandFailedImpl &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reason);

  /// Create a copy of RobotFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommandFailedImplCopyWith<_$CommandFailedImpl> get copyWith =>
      __$$CommandFailedImplCopyWithImpl<_$CommandFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notConnected,
    required TResult Function() connectFailed,
    required TResult Function() disconnectFailed,
    required TResult Function(String reason) commandFailed,
    required TResult Function() networkUnavailable,
    required TResult Function() timeout,
    required TResult Function() invalidResponse,
    required TResult Function() lowBattery,
    required TResult Function() queuedOffline,
    required TResult Function(String message) unexpected,
  }) {
    return commandFailed(reason);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notConnected,
    TResult? Function()? connectFailed,
    TResult? Function()? disconnectFailed,
    TResult? Function(String reason)? commandFailed,
    TResult? Function()? networkUnavailable,
    TResult? Function()? timeout,
    TResult? Function()? invalidResponse,
    TResult? Function()? lowBattery,
    TResult? Function()? queuedOffline,
    TResult? Function(String message)? unexpected,
  }) {
    return commandFailed?.call(reason);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notConnected,
    TResult Function()? connectFailed,
    TResult Function()? disconnectFailed,
    TResult Function(String reason)? commandFailed,
    TResult Function()? networkUnavailable,
    TResult Function()? timeout,
    TResult Function()? invalidResponse,
    TResult Function()? lowBattery,
    TResult Function()? queuedOffline,
    TResult Function(String message)? unexpected,
    required TResult orElse(),
  }) {
    if (commandFailed != null) {
      return commandFailed(reason);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotConnected value) notConnected,
    required TResult Function(ConnectFailed value) connectFailed,
    required TResult Function(DisconnectFailed value) disconnectFailed,
    required TResult Function(CommandFailed value) commandFailed,
    required TResult Function(NetworkUnavailable value) networkUnavailable,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(InvalidResponse value) invalidResponse,
    required TResult Function(LowBattery value) lowBattery,
    required TResult Function(QueuedOffline value) queuedOffline,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) {
    return commandFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotConnected value)? notConnected,
    TResult? Function(ConnectFailed value)? connectFailed,
    TResult? Function(DisconnectFailed value)? disconnectFailed,
    TResult? Function(CommandFailed value)? commandFailed,
    TResult? Function(NetworkUnavailable value)? networkUnavailable,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(InvalidResponse value)? invalidResponse,
    TResult? Function(LowBattery value)? lowBattery,
    TResult? Function(QueuedOffline value)? queuedOffline,
    TResult? Function(UnexpectedFailure value)? unexpected,
  }) {
    return commandFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotConnected value)? notConnected,
    TResult Function(ConnectFailed value)? connectFailed,
    TResult Function(DisconnectFailed value)? disconnectFailed,
    TResult Function(CommandFailed value)? commandFailed,
    TResult Function(NetworkUnavailable value)? networkUnavailable,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(InvalidResponse value)? invalidResponse,
    TResult Function(LowBattery value)? lowBattery,
    TResult Function(QueuedOffline value)? queuedOffline,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (commandFailed != null) {
      return commandFailed(this);
    }
    return orElse();
  }
}

abstract class CommandFailed implements RobotFailure {
  const factory CommandFailed(final String reason) = _$CommandFailedImpl;

  String get reason;

  /// Create a copy of RobotFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommandFailedImplCopyWith<_$CommandFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NetworkUnavailableImplCopyWith<$Res> {
  factory _$$NetworkUnavailableImplCopyWith(_$NetworkUnavailableImpl value,
          $Res Function(_$NetworkUnavailableImpl) then) =
      __$$NetworkUnavailableImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NetworkUnavailableImplCopyWithImpl<$Res>
    extends _$RobotFailureCopyWithImpl<$Res, _$NetworkUnavailableImpl>
    implements _$$NetworkUnavailableImplCopyWith<$Res> {
  __$$NetworkUnavailableImplCopyWithImpl(_$NetworkUnavailableImpl _value,
      $Res Function(_$NetworkUnavailableImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NetworkUnavailableImpl implements NetworkUnavailable {
  const _$NetworkUnavailableImpl();

  @override
  String toString() {
    return 'RobotFailure.networkUnavailable()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NetworkUnavailableImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notConnected,
    required TResult Function() connectFailed,
    required TResult Function() disconnectFailed,
    required TResult Function(String reason) commandFailed,
    required TResult Function() networkUnavailable,
    required TResult Function() timeout,
    required TResult Function() invalidResponse,
    required TResult Function() lowBattery,
    required TResult Function() queuedOffline,
    required TResult Function(String message) unexpected,
  }) {
    return networkUnavailable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notConnected,
    TResult? Function()? connectFailed,
    TResult? Function()? disconnectFailed,
    TResult? Function(String reason)? commandFailed,
    TResult? Function()? networkUnavailable,
    TResult? Function()? timeout,
    TResult? Function()? invalidResponse,
    TResult? Function()? lowBattery,
    TResult? Function()? queuedOffline,
    TResult? Function(String message)? unexpected,
  }) {
    return networkUnavailable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notConnected,
    TResult Function()? connectFailed,
    TResult Function()? disconnectFailed,
    TResult Function(String reason)? commandFailed,
    TResult Function()? networkUnavailable,
    TResult Function()? timeout,
    TResult Function()? invalidResponse,
    TResult Function()? lowBattery,
    TResult Function()? queuedOffline,
    TResult Function(String message)? unexpected,
    required TResult orElse(),
  }) {
    if (networkUnavailable != null) {
      return networkUnavailable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotConnected value) notConnected,
    required TResult Function(ConnectFailed value) connectFailed,
    required TResult Function(DisconnectFailed value) disconnectFailed,
    required TResult Function(CommandFailed value) commandFailed,
    required TResult Function(NetworkUnavailable value) networkUnavailable,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(InvalidResponse value) invalidResponse,
    required TResult Function(LowBattery value) lowBattery,
    required TResult Function(QueuedOffline value) queuedOffline,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) {
    return networkUnavailable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotConnected value)? notConnected,
    TResult? Function(ConnectFailed value)? connectFailed,
    TResult? Function(DisconnectFailed value)? disconnectFailed,
    TResult? Function(CommandFailed value)? commandFailed,
    TResult? Function(NetworkUnavailable value)? networkUnavailable,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(InvalidResponse value)? invalidResponse,
    TResult? Function(LowBattery value)? lowBattery,
    TResult? Function(QueuedOffline value)? queuedOffline,
    TResult? Function(UnexpectedFailure value)? unexpected,
  }) {
    return networkUnavailable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotConnected value)? notConnected,
    TResult Function(ConnectFailed value)? connectFailed,
    TResult Function(DisconnectFailed value)? disconnectFailed,
    TResult Function(CommandFailed value)? commandFailed,
    TResult Function(NetworkUnavailable value)? networkUnavailable,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(InvalidResponse value)? invalidResponse,
    TResult Function(LowBattery value)? lowBattery,
    TResult Function(QueuedOffline value)? queuedOffline,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (networkUnavailable != null) {
      return networkUnavailable(this);
    }
    return orElse();
  }
}

abstract class NetworkUnavailable implements RobotFailure {
  const factory NetworkUnavailable() = _$NetworkUnavailableImpl;
}

/// @nodoc
abstract class _$$TimeoutFailureImplCopyWith<$Res> {
  factory _$$TimeoutFailureImplCopyWith(_$TimeoutFailureImpl value,
          $Res Function(_$TimeoutFailureImpl) then) =
      __$$TimeoutFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimeoutFailureImplCopyWithImpl<$Res>
    extends _$RobotFailureCopyWithImpl<$Res, _$TimeoutFailureImpl>
    implements _$$TimeoutFailureImplCopyWith<$Res> {
  __$$TimeoutFailureImplCopyWithImpl(
      _$TimeoutFailureImpl _value, $Res Function(_$TimeoutFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TimeoutFailureImpl implements TimeoutFailure {
  const _$TimeoutFailureImpl();

  @override
  String toString() {
    return 'RobotFailure.timeout()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimeoutFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notConnected,
    required TResult Function() connectFailed,
    required TResult Function() disconnectFailed,
    required TResult Function(String reason) commandFailed,
    required TResult Function() networkUnavailable,
    required TResult Function() timeout,
    required TResult Function() invalidResponse,
    required TResult Function() lowBattery,
    required TResult Function() queuedOffline,
    required TResult Function(String message) unexpected,
  }) {
    return timeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notConnected,
    TResult? Function()? connectFailed,
    TResult? Function()? disconnectFailed,
    TResult? Function(String reason)? commandFailed,
    TResult? Function()? networkUnavailable,
    TResult? Function()? timeout,
    TResult? Function()? invalidResponse,
    TResult? Function()? lowBattery,
    TResult? Function()? queuedOffline,
    TResult? Function(String message)? unexpected,
  }) {
    return timeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notConnected,
    TResult Function()? connectFailed,
    TResult Function()? disconnectFailed,
    TResult Function(String reason)? commandFailed,
    TResult Function()? networkUnavailable,
    TResult Function()? timeout,
    TResult Function()? invalidResponse,
    TResult Function()? lowBattery,
    TResult Function()? queuedOffline,
    TResult Function(String message)? unexpected,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotConnected value) notConnected,
    required TResult Function(ConnectFailed value) connectFailed,
    required TResult Function(DisconnectFailed value) disconnectFailed,
    required TResult Function(CommandFailed value) commandFailed,
    required TResult Function(NetworkUnavailable value) networkUnavailable,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(InvalidResponse value) invalidResponse,
    required TResult Function(LowBattery value) lowBattery,
    required TResult Function(QueuedOffline value) queuedOffline,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotConnected value)? notConnected,
    TResult? Function(ConnectFailed value)? connectFailed,
    TResult? Function(DisconnectFailed value)? disconnectFailed,
    TResult? Function(CommandFailed value)? commandFailed,
    TResult? Function(NetworkUnavailable value)? networkUnavailable,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(InvalidResponse value)? invalidResponse,
    TResult? Function(LowBattery value)? lowBattery,
    TResult? Function(QueuedOffline value)? queuedOffline,
    TResult? Function(UnexpectedFailure value)? unexpected,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotConnected value)? notConnected,
    TResult Function(ConnectFailed value)? connectFailed,
    TResult Function(DisconnectFailed value)? disconnectFailed,
    TResult Function(CommandFailed value)? commandFailed,
    TResult Function(NetworkUnavailable value)? networkUnavailable,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(InvalidResponse value)? invalidResponse,
    TResult Function(LowBattery value)? lowBattery,
    TResult Function(QueuedOffline value)? queuedOffline,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class TimeoutFailure implements RobotFailure {
  const factory TimeoutFailure() = _$TimeoutFailureImpl;
}

/// @nodoc
abstract class _$$InvalidResponseImplCopyWith<$Res> {
  factory _$$InvalidResponseImplCopyWith(_$InvalidResponseImpl value,
          $Res Function(_$InvalidResponseImpl) then) =
      __$$InvalidResponseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidResponseImplCopyWithImpl<$Res>
    extends _$RobotFailureCopyWithImpl<$Res, _$InvalidResponseImpl>
    implements _$$InvalidResponseImplCopyWith<$Res> {
  __$$InvalidResponseImplCopyWithImpl(
      _$InvalidResponseImpl _value, $Res Function(_$InvalidResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InvalidResponseImpl implements InvalidResponse {
  const _$InvalidResponseImpl();

  @override
  String toString() {
    return 'RobotFailure.invalidResponse()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidResponseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notConnected,
    required TResult Function() connectFailed,
    required TResult Function() disconnectFailed,
    required TResult Function(String reason) commandFailed,
    required TResult Function() networkUnavailable,
    required TResult Function() timeout,
    required TResult Function() invalidResponse,
    required TResult Function() lowBattery,
    required TResult Function() queuedOffline,
    required TResult Function(String message) unexpected,
  }) {
    return invalidResponse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notConnected,
    TResult? Function()? connectFailed,
    TResult? Function()? disconnectFailed,
    TResult? Function(String reason)? commandFailed,
    TResult? Function()? networkUnavailable,
    TResult? Function()? timeout,
    TResult? Function()? invalidResponse,
    TResult? Function()? lowBattery,
    TResult? Function()? queuedOffline,
    TResult? Function(String message)? unexpected,
  }) {
    return invalidResponse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notConnected,
    TResult Function()? connectFailed,
    TResult Function()? disconnectFailed,
    TResult Function(String reason)? commandFailed,
    TResult Function()? networkUnavailable,
    TResult Function()? timeout,
    TResult Function()? invalidResponse,
    TResult Function()? lowBattery,
    TResult Function()? queuedOffline,
    TResult Function(String message)? unexpected,
    required TResult orElse(),
  }) {
    if (invalidResponse != null) {
      return invalidResponse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotConnected value) notConnected,
    required TResult Function(ConnectFailed value) connectFailed,
    required TResult Function(DisconnectFailed value) disconnectFailed,
    required TResult Function(CommandFailed value) commandFailed,
    required TResult Function(NetworkUnavailable value) networkUnavailable,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(InvalidResponse value) invalidResponse,
    required TResult Function(LowBattery value) lowBattery,
    required TResult Function(QueuedOffline value) queuedOffline,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) {
    return invalidResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotConnected value)? notConnected,
    TResult? Function(ConnectFailed value)? connectFailed,
    TResult? Function(DisconnectFailed value)? disconnectFailed,
    TResult? Function(CommandFailed value)? commandFailed,
    TResult? Function(NetworkUnavailable value)? networkUnavailable,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(InvalidResponse value)? invalidResponse,
    TResult? Function(LowBattery value)? lowBattery,
    TResult? Function(QueuedOffline value)? queuedOffline,
    TResult? Function(UnexpectedFailure value)? unexpected,
  }) {
    return invalidResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotConnected value)? notConnected,
    TResult Function(ConnectFailed value)? connectFailed,
    TResult Function(DisconnectFailed value)? disconnectFailed,
    TResult Function(CommandFailed value)? commandFailed,
    TResult Function(NetworkUnavailable value)? networkUnavailable,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(InvalidResponse value)? invalidResponse,
    TResult Function(LowBattery value)? lowBattery,
    TResult Function(QueuedOffline value)? queuedOffline,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (invalidResponse != null) {
      return invalidResponse(this);
    }
    return orElse();
  }
}

abstract class InvalidResponse implements RobotFailure {
  const factory InvalidResponse() = _$InvalidResponseImpl;
}

/// @nodoc
abstract class _$$LowBatteryImplCopyWith<$Res> {
  factory _$$LowBatteryImplCopyWith(
          _$LowBatteryImpl value, $Res Function(_$LowBatteryImpl) then) =
      __$$LowBatteryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LowBatteryImplCopyWithImpl<$Res>
    extends _$RobotFailureCopyWithImpl<$Res, _$LowBatteryImpl>
    implements _$$LowBatteryImplCopyWith<$Res> {
  __$$LowBatteryImplCopyWithImpl(
      _$LowBatteryImpl _value, $Res Function(_$LowBatteryImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LowBatteryImpl implements LowBattery {
  const _$LowBatteryImpl();

  @override
  String toString() {
    return 'RobotFailure.lowBattery()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LowBatteryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notConnected,
    required TResult Function() connectFailed,
    required TResult Function() disconnectFailed,
    required TResult Function(String reason) commandFailed,
    required TResult Function() networkUnavailable,
    required TResult Function() timeout,
    required TResult Function() invalidResponse,
    required TResult Function() lowBattery,
    required TResult Function() queuedOffline,
    required TResult Function(String message) unexpected,
  }) {
    return lowBattery();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notConnected,
    TResult? Function()? connectFailed,
    TResult? Function()? disconnectFailed,
    TResult? Function(String reason)? commandFailed,
    TResult? Function()? networkUnavailable,
    TResult? Function()? timeout,
    TResult? Function()? invalidResponse,
    TResult? Function()? lowBattery,
    TResult? Function()? queuedOffline,
    TResult? Function(String message)? unexpected,
  }) {
    return lowBattery?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notConnected,
    TResult Function()? connectFailed,
    TResult Function()? disconnectFailed,
    TResult Function(String reason)? commandFailed,
    TResult Function()? networkUnavailable,
    TResult Function()? timeout,
    TResult Function()? invalidResponse,
    TResult Function()? lowBattery,
    TResult Function()? queuedOffline,
    TResult Function(String message)? unexpected,
    required TResult orElse(),
  }) {
    if (lowBattery != null) {
      return lowBattery();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotConnected value) notConnected,
    required TResult Function(ConnectFailed value) connectFailed,
    required TResult Function(DisconnectFailed value) disconnectFailed,
    required TResult Function(CommandFailed value) commandFailed,
    required TResult Function(NetworkUnavailable value) networkUnavailable,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(InvalidResponse value) invalidResponse,
    required TResult Function(LowBattery value) lowBattery,
    required TResult Function(QueuedOffline value) queuedOffline,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) {
    return lowBattery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotConnected value)? notConnected,
    TResult? Function(ConnectFailed value)? connectFailed,
    TResult? Function(DisconnectFailed value)? disconnectFailed,
    TResult? Function(CommandFailed value)? commandFailed,
    TResult? Function(NetworkUnavailable value)? networkUnavailable,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(InvalidResponse value)? invalidResponse,
    TResult? Function(LowBattery value)? lowBattery,
    TResult? Function(QueuedOffline value)? queuedOffline,
    TResult? Function(UnexpectedFailure value)? unexpected,
  }) {
    return lowBattery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotConnected value)? notConnected,
    TResult Function(ConnectFailed value)? connectFailed,
    TResult Function(DisconnectFailed value)? disconnectFailed,
    TResult Function(CommandFailed value)? commandFailed,
    TResult Function(NetworkUnavailable value)? networkUnavailable,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(InvalidResponse value)? invalidResponse,
    TResult Function(LowBattery value)? lowBattery,
    TResult Function(QueuedOffline value)? queuedOffline,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (lowBattery != null) {
      return lowBattery(this);
    }
    return orElse();
  }
}

abstract class LowBattery implements RobotFailure {
  const factory LowBattery() = _$LowBatteryImpl;
}

/// @nodoc
abstract class _$$QueuedOfflineImplCopyWith<$Res> {
  factory _$$QueuedOfflineImplCopyWith(
          _$QueuedOfflineImpl value, $Res Function(_$QueuedOfflineImpl) then) =
      __$$QueuedOfflineImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QueuedOfflineImplCopyWithImpl<$Res>
    extends _$RobotFailureCopyWithImpl<$Res, _$QueuedOfflineImpl>
    implements _$$QueuedOfflineImplCopyWith<$Res> {
  __$$QueuedOfflineImplCopyWithImpl(
      _$QueuedOfflineImpl _value, $Res Function(_$QueuedOfflineImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotFailure
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$QueuedOfflineImpl implements QueuedOffline {
  const _$QueuedOfflineImpl();

  @override
  String toString() {
    return 'RobotFailure.queuedOffline()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$QueuedOfflineImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notConnected,
    required TResult Function() connectFailed,
    required TResult Function() disconnectFailed,
    required TResult Function(String reason) commandFailed,
    required TResult Function() networkUnavailable,
    required TResult Function() timeout,
    required TResult Function() invalidResponse,
    required TResult Function() lowBattery,
    required TResult Function() queuedOffline,
    required TResult Function(String message) unexpected,
  }) {
    return queuedOffline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notConnected,
    TResult? Function()? connectFailed,
    TResult? Function()? disconnectFailed,
    TResult? Function(String reason)? commandFailed,
    TResult? Function()? networkUnavailable,
    TResult? Function()? timeout,
    TResult? Function()? invalidResponse,
    TResult? Function()? lowBattery,
    TResult? Function()? queuedOffline,
    TResult? Function(String message)? unexpected,
  }) {
    return queuedOffline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notConnected,
    TResult Function()? connectFailed,
    TResult Function()? disconnectFailed,
    TResult Function(String reason)? commandFailed,
    TResult Function()? networkUnavailable,
    TResult Function()? timeout,
    TResult Function()? invalidResponse,
    TResult Function()? lowBattery,
    TResult Function()? queuedOffline,
    TResult Function(String message)? unexpected,
    required TResult orElse(),
  }) {
    if (queuedOffline != null) {
      return queuedOffline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotConnected value) notConnected,
    required TResult Function(ConnectFailed value) connectFailed,
    required TResult Function(DisconnectFailed value) disconnectFailed,
    required TResult Function(CommandFailed value) commandFailed,
    required TResult Function(NetworkUnavailable value) networkUnavailable,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(InvalidResponse value) invalidResponse,
    required TResult Function(LowBattery value) lowBattery,
    required TResult Function(QueuedOffline value) queuedOffline,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) {
    return queuedOffline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotConnected value)? notConnected,
    TResult? Function(ConnectFailed value)? connectFailed,
    TResult? Function(DisconnectFailed value)? disconnectFailed,
    TResult? Function(CommandFailed value)? commandFailed,
    TResult? Function(NetworkUnavailable value)? networkUnavailable,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(InvalidResponse value)? invalidResponse,
    TResult? Function(LowBattery value)? lowBattery,
    TResult? Function(QueuedOffline value)? queuedOffline,
    TResult? Function(UnexpectedFailure value)? unexpected,
  }) {
    return queuedOffline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotConnected value)? notConnected,
    TResult Function(ConnectFailed value)? connectFailed,
    TResult Function(DisconnectFailed value)? disconnectFailed,
    TResult Function(CommandFailed value)? commandFailed,
    TResult Function(NetworkUnavailable value)? networkUnavailable,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(InvalidResponse value)? invalidResponse,
    TResult Function(LowBattery value)? lowBattery,
    TResult Function(QueuedOffline value)? queuedOffline,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (queuedOffline != null) {
      return queuedOffline(this);
    }
    return orElse();
  }
}

abstract class QueuedOffline implements RobotFailure {
  const factory QueuedOffline() = _$QueuedOfflineImpl;
}

/// @nodoc
abstract class _$$UnexpectedFailureImplCopyWith<$Res> {
  factory _$$UnexpectedFailureImplCopyWith(_$UnexpectedFailureImpl value,
          $Res Function(_$UnexpectedFailureImpl) then) =
      __$$UnexpectedFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnexpectedFailureImplCopyWithImpl<$Res>
    extends _$RobotFailureCopyWithImpl<$Res, _$UnexpectedFailureImpl>
    implements _$$UnexpectedFailureImplCopyWith<$Res> {
  __$$UnexpectedFailureImplCopyWithImpl(_$UnexpectedFailureImpl _value,
      $Res Function(_$UnexpectedFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotFailure
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnexpectedFailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnexpectedFailureImpl implements UnexpectedFailure {
  const _$UnexpectedFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'RobotFailure.unexpected(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnexpectedFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of RobotFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnexpectedFailureImplCopyWith<_$UnexpectedFailureImpl> get copyWith =>
      __$$UnexpectedFailureImplCopyWithImpl<_$UnexpectedFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notConnected,
    required TResult Function() connectFailed,
    required TResult Function() disconnectFailed,
    required TResult Function(String reason) commandFailed,
    required TResult Function() networkUnavailable,
    required TResult Function() timeout,
    required TResult Function() invalidResponse,
    required TResult Function() lowBattery,
    required TResult Function() queuedOffline,
    required TResult Function(String message) unexpected,
  }) {
    return unexpected(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notConnected,
    TResult? Function()? connectFailed,
    TResult? Function()? disconnectFailed,
    TResult? Function(String reason)? commandFailed,
    TResult? Function()? networkUnavailable,
    TResult? Function()? timeout,
    TResult? Function()? invalidResponse,
    TResult? Function()? lowBattery,
    TResult? Function()? queuedOffline,
    TResult? Function(String message)? unexpected,
  }) {
    return unexpected?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notConnected,
    TResult Function()? connectFailed,
    TResult Function()? disconnectFailed,
    TResult Function(String reason)? commandFailed,
    TResult Function()? networkUnavailable,
    TResult Function()? timeout,
    TResult Function()? invalidResponse,
    TResult Function()? lowBattery,
    TResult Function()? queuedOffline,
    TResult Function(String message)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NotConnected value) notConnected,
    required TResult Function(ConnectFailed value) connectFailed,
    required TResult Function(DisconnectFailed value) disconnectFailed,
    required TResult Function(CommandFailed value) commandFailed,
    required TResult Function(NetworkUnavailable value) networkUnavailable,
    required TResult Function(TimeoutFailure value) timeout,
    required TResult Function(InvalidResponse value) invalidResponse,
    required TResult Function(LowBattery value) lowBattery,
    required TResult Function(QueuedOffline value) queuedOffline,
    required TResult Function(UnexpectedFailure value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NotConnected value)? notConnected,
    TResult? Function(ConnectFailed value)? connectFailed,
    TResult? Function(DisconnectFailed value)? disconnectFailed,
    TResult? Function(CommandFailed value)? commandFailed,
    TResult? Function(NetworkUnavailable value)? networkUnavailable,
    TResult? Function(TimeoutFailure value)? timeout,
    TResult? Function(InvalidResponse value)? invalidResponse,
    TResult? Function(LowBattery value)? lowBattery,
    TResult? Function(QueuedOffline value)? queuedOffline,
    TResult? Function(UnexpectedFailure value)? unexpected,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NotConnected value)? notConnected,
    TResult Function(ConnectFailed value)? connectFailed,
    TResult Function(DisconnectFailed value)? disconnectFailed,
    TResult Function(CommandFailed value)? commandFailed,
    TResult Function(NetworkUnavailable value)? networkUnavailable,
    TResult Function(TimeoutFailure value)? timeout,
    TResult Function(InvalidResponse value)? invalidResponse,
    TResult Function(LowBattery value)? lowBattery,
    TResult Function(QueuedOffline value)? queuedOffline,
    TResult Function(UnexpectedFailure value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class UnexpectedFailure implements RobotFailure {
  const factory UnexpectedFailure(final String message) =
      _$UnexpectedFailureImpl;

  String get message;

  /// Create a copy of RobotFailure
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnexpectedFailureImplCopyWith<_$UnexpectedFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
