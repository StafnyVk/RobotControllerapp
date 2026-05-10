// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'robot_connection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RobotConnectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? url) connect,
    required TResult Function() disconnect,
    required TResult Function() autoReconnect,
    required TResult Function(bool online) connectivityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? url)? connect,
    TResult? Function()? disconnect,
    TResult? Function()? autoReconnect,
    TResult? Function(bool online)? connectivityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? url)? connect,
    TResult Function()? disconnect,
    TResult Function()? autoReconnect,
    TResult Function(bool online)? connectivityChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connect value) connect,
    required TResult Function(_Disconnect value) disconnect,
    required TResult Function(_AutoReconnect value) autoReconnect,
    required TResult Function(_ConnectivityChanged value) connectivityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connect value)? connect,
    TResult? Function(_Disconnect value)? disconnect,
    TResult? Function(_AutoReconnect value)? autoReconnect,
    TResult? Function(_ConnectivityChanged value)? connectivityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    TResult Function(_AutoReconnect value)? autoReconnect,
    TResult Function(_ConnectivityChanged value)? connectivityChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RobotConnectionEventCopyWith<$Res> {
  factory $RobotConnectionEventCopyWith(RobotConnectionEvent value,
          $Res Function(RobotConnectionEvent) then) =
      _$RobotConnectionEventCopyWithImpl<$Res, RobotConnectionEvent>;
}

/// @nodoc
class _$RobotConnectionEventCopyWithImpl<$Res,
        $Val extends RobotConnectionEvent>
    implements $RobotConnectionEventCopyWith<$Res> {
  _$RobotConnectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RobotConnectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ConnectImplCopyWith<$Res> {
  factory _$$ConnectImplCopyWith(
          _$ConnectImpl value, $Res Function(_$ConnectImpl) then) =
      __$$ConnectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? url});
}

/// @nodoc
class __$$ConnectImplCopyWithImpl<$Res>
    extends _$RobotConnectionEventCopyWithImpl<$Res, _$ConnectImpl>
    implements _$$ConnectImplCopyWith<$Res> {
  __$$ConnectImplCopyWithImpl(
      _$ConnectImpl _value, $Res Function(_$ConnectImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotConnectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$ConnectImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ConnectImpl implements _Connect {
  const _$ConnectImpl({this.url});

  @override
  final String? url;

  @override
  String toString() {
    return 'RobotConnectionEvent.connect(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of RobotConnectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectImplCopyWith<_$ConnectImpl> get copyWith =>
      __$$ConnectImplCopyWithImpl<_$ConnectImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? url) connect,
    required TResult Function() disconnect,
    required TResult Function() autoReconnect,
    required TResult Function(bool online) connectivityChanged,
  }) {
    return connect(url);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? url)? connect,
    TResult? Function()? disconnect,
    TResult? Function()? autoReconnect,
    TResult? Function(bool online)? connectivityChanged,
  }) {
    return connect?.call(url);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? url)? connect,
    TResult Function()? disconnect,
    TResult Function()? autoReconnect,
    TResult Function(bool online)? connectivityChanged,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(url);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connect value) connect,
    required TResult Function(_Disconnect value) disconnect,
    required TResult Function(_AutoReconnect value) autoReconnect,
    required TResult Function(_ConnectivityChanged value) connectivityChanged,
  }) {
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connect value)? connect,
    TResult? Function(_Disconnect value)? disconnect,
    TResult? Function(_AutoReconnect value)? autoReconnect,
    TResult? Function(_ConnectivityChanged value)? connectivityChanged,
  }) {
    return connect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    TResult Function(_AutoReconnect value)? autoReconnect,
    TResult Function(_ConnectivityChanged value)? connectivityChanged,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(this);
    }
    return orElse();
  }
}

abstract class _Connect implements RobotConnectionEvent {
  const factory _Connect({final String? url}) = _$ConnectImpl;

  String? get url;

  /// Create a copy of RobotConnectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectImplCopyWith<_$ConnectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisconnectImplCopyWith<$Res> {
  factory _$$DisconnectImplCopyWith(
          _$DisconnectImpl value, $Res Function(_$DisconnectImpl) then) =
      __$$DisconnectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisconnectImplCopyWithImpl<$Res>
    extends _$RobotConnectionEventCopyWithImpl<$Res, _$DisconnectImpl>
    implements _$$DisconnectImplCopyWith<$Res> {
  __$$DisconnectImplCopyWithImpl(
      _$DisconnectImpl _value, $Res Function(_$DisconnectImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotConnectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DisconnectImpl implements _Disconnect {
  const _$DisconnectImpl();

  @override
  String toString() {
    return 'RobotConnectionEvent.disconnect()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisconnectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? url) connect,
    required TResult Function() disconnect,
    required TResult Function() autoReconnect,
    required TResult Function(bool online) connectivityChanged,
  }) {
    return disconnect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? url)? connect,
    TResult? Function()? disconnect,
    TResult? Function()? autoReconnect,
    TResult? Function(bool online)? connectivityChanged,
  }) {
    return disconnect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? url)? connect,
    TResult Function()? disconnect,
    TResult Function()? autoReconnect,
    TResult Function(bool online)? connectivityChanged,
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
    required TResult Function(_Connect value) connect,
    required TResult Function(_Disconnect value) disconnect,
    required TResult Function(_AutoReconnect value) autoReconnect,
    required TResult Function(_ConnectivityChanged value) connectivityChanged,
  }) {
    return disconnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connect value)? connect,
    TResult? Function(_Disconnect value)? disconnect,
    TResult? Function(_AutoReconnect value)? autoReconnect,
    TResult? Function(_ConnectivityChanged value)? connectivityChanged,
  }) {
    return disconnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    TResult Function(_AutoReconnect value)? autoReconnect,
    TResult Function(_ConnectivityChanged value)? connectivityChanged,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect(this);
    }
    return orElse();
  }
}

abstract class _Disconnect implements RobotConnectionEvent {
  const factory _Disconnect() = _$DisconnectImpl;
}

/// @nodoc
abstract class _$$AutoReconnectImplCopyWith<$Res> {
  factory _$$AutoReconnectImplCopyWith(
          _$AutoReconnectImpl value, $Res Function(_$AutoReconnectImpl) then) =
      __$$AutoReconnectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AutoReconnectImplCopyWithImpl<$Res>
    extends _$RobotConnectionEventCopyWithImpl<$Res, _$AutoReconnectImpl>
    implements _$$AutoReconnectImplCopyWith<$Res> {
  __$$AutoReconnectImplCopyWithImpl(
      _$AutoReconnectImpl _value, $Res Function(_$AutoReconnectImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotConnectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AutoReconnectImpl implements _AutoReconnect {
  const _$AutoReconnectImpl();

  @override
  String toString() {
    return 'RobotConnectionEvent.autoReconnect()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AutoReconnectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? url) connect,
    required TResult Function() disconnect,
    required TResult Function() autoReconnect,
    required TResult Function(bool online) connectivityChanged,
  }) {
    return autoReconnect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? url)? connect,
    TResult? Function()? disconnect,
    TResult? Function()? autoReconnect,
    TResult? Function(bool online)? connectivityChanged,
  }) {
    return autoReconnect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? url)? connect,
    TResult Function()? disconnect,
    TResult Function()? autoReconnect,
    TResult Function(bool online)? connectivityChanged,
    required TResult orElse(),
  }) {
    if (autoReconnect != null) {
      return autoReconnect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connect value) connect,
    required TResult Function(_Disconnect value) disconnect,
    required TResult Function(_AutoReconnect value) autoReconnect,
    required TResult Function(_ConnectivityChanged value) connectivityChanged,
  }) {
    return autoReconnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connect value)? connect,
    TResult? Function(_Disconnect value)? disconnect,
    TResult? Function(_AutoReconnect value)? autoReconnect,
    TResult? Function(_ConnectivityChanged value)? connectivityChanged,
  }) {
    return autoReconnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    TResult Function(_AutoReconnect value)? autoReconnect,
    TResult Function(_ConnectivityChanged value)? connectivityChanged,
    required TResult orElse(),
  }) {
    if (autoReconnect != null) {
      return autoReconnect(this);
    }
    return orElse();
  }
}

abstract class _AutoReconnect implements RobotConnectionEvent {
  const factory _AutoReconnect() = _$AutoReconnectImpl;
}

/// @nodoc
abstract class _$$ConnectivityChangedImplCopyWith<$Res> {
  factory _$$ConnectivityChangedImplCopyWith(_$ConnectivityChangedImpl value,
          $Res Function(_$ConnectivityChangedImpl) then) =
      __$$ConnectivityChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool online});
}

/// @nodoc
class __$$ConnectivityChangedImplCopyWithImpl<$Res>
    extends _$RobotConnectionEventCopyWithImpl<$Res, _$ConnectivityChangedImpl>
    implements _$$ConnectivityChangedImplCopyWith<$Res> {
  __$$ConnectivityChangedImplCopyWithImpl(_$ConnectivityChangedImpl _value,
      $Res Function(_$ConnectivityChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotConnectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? online = null,
  }) {
    return _then(_$ConnectivityChangedImpl(
      null == online
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ConnectivityChangedImpl implements _ConnectivityChanged {
  const _$ConnectivityChangedImpl(this.online);

  @override
  final bool online;

  @override
  String toString() {
    return 'RobotConnectionEvent.connectivityChanged(online: $online)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectivityChangedImpl &&
            (identical(other.online, online) || other.online == online));
  }

  @override
  int get hashCode => Object.hash(runtimeType, online);

  /// Create a copy of RobotConnectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectivityChangedImplCopyWith<_$ConnectivityChangedImpl> get copyWith =>
      __$$ConnectivityChangedImplCopyWithImpl<_$ConnectivityChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? url) connect,
    required TResult Function() disconnect,
    required TResult Function() autoReconnect,
    required TResult Function(bool online) connectivityChanged,
  }) {
    return connectivityChanged(online);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? url)? connect,
    TResult? Function()? disconnect,
    TResult? Function()? autoReconnect,
    TResult? Function(bool online)? connectivityChanged,
  }) {
    return connectivityChanged?.call(online);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? url)? connect,
    TResult Function()? disconnect,
    TResult Function()? autoReconnect,
    TResult Function(bool online)? connectivityChanged,
    required TResult orElse(),
  }) {
    if (connectivityChanged != null) {
      return connectivityChanged(online);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connect value) connect,
    required TResult Function(_Disconnect value) disconnect,
    required TResult Function(_AutoReconnect value) autoReconnect,
    required TResult Function(_ConnectivityChanged value) connectivityChanged,
  }) {
    return connectivityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connect value)? connect,
    TResult? Function(_Disconnect value)? disconnect,
    TResult? Function(_AutoReconnect value)? autoReconnect,
    TResult? Function(_ConnectivityChanged value)? connectivityChanged,
  }) {
    return connectivityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    TResult Function(_AutoReconnect value)? autoReconnect,
    TResult Function(_ConnectivityChanged value)? connectivityChanged,
    required TResult orElse(),
  }) {
    if (connectivityChanged != null) {
      return connectivityChanged(this);
    }
    return orElse();
  }
}

abstract class _ConnectivityChanged implements RobotConnectionEvent {
  const factory _ConnectivityChanged(final bool online) =
      _$ConnectivityChangedImpl;

  bool get online;

  /// Create a copy of RobotConnectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConnectivityChangedImplCopyWith<_$ConnectivityChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RobotConnectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connecting,
    required TResult Function() connected,
    required TResult Function() disconnecting,
    required TResult Function() disconnected,
    required TResult Function(int attempt) reconnecting,
    required TResult Function(RobotFailure failure) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connecting,
    TResult? Function()? connected,
    TResult? Function()? disconnecting,
    TResult? Function()? disconnected,
    TResult? Function(int attempt)? reconnecting,
    TResult? Function(RobotFailure failure)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function()? disconnecting,
    TResult Function()? disconnected,
    TResult Function(int attempt)? reconnecting,
    TResult Function(RobotFailure failure)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Connecting value) connecting,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnecting value) disconnecting,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_Reconnecting value) reconnecting,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Connecting value)? connecting,
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Disconnecting value)? disconnecting,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_Reconnecting value)? reconnecting,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Connecting value)? connecting,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnecting value)? disconnecting,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_Reconnecting value)? reconnecting,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RobotConnectionStateCopyWith<$Res> {
  factory $RobotConnectionStateCopyWith(RobotConnectionState value,
          $Res Function(RobotConnectionState) then) =
      _$RobotConnectionStateCopyWithImpl<$Res, RobotConnectionState>;
}

/// @nodoc
class _$RobotConnectionStateCopyWithImpl<$Res,
        $Val extends RobotConnectionState>
    implements $RobotConnectionStateCopyWith<$Res> {
  _$RobotConnectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RobotConnectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RobotConnectionStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotConnectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'RobotConnectionState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connecting,
    required TResult Function() connected,
    required TResult Function() disconnecting,
    required TResult Function() disconnected,
    required TResult Function(int attempt) reconnecting,
    required TResult Function(RobotFailure failure) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connecting,
    TResult? Function()? connected,
    TResult? Function()? disconnecting,
    TResult? Function()? disconnected,
    TResult? Function(int attempt)? reconnecting,
    TResult? Function(RobotFailure failure)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function()? disconnecting,
    TResult Function()? disconnected,
    TResult Function(int attempt)? reconnecting,
    TResult Function(RobotFailure failure)? failed,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Connecting value) connecting,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnecting value) disconnecting,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_Reconnecting value) reconnecting,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Connecting value)? connecting,
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Disconnecting value)? disconnecting,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_Reconnecting value)? reconnecting,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Connecting value)? connecting,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnecting value)? disconnecting,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_Reconnecting value)? reconnecting,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RobotConnectionState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ConnectingImplCopyWith<$Res> {
  factory _$$ConnectingImplCopyWith(
          _$ConnectingImpl value, $Res Function(_$ConnectingImpl) then) =
      __$$ConnectingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectingImplCopyWithImpl<$Res>
    extends _$RobotConnectionStateCopyWithImpl<$Res, _$ConnectingImpl>
    implements _$$ConnectingImplCopyWith<$Res> {
  __$$ConnectingImplCopyWithImpl(
      _$ConnectingImpl _value, $Res Function(_$ConnectingImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotConnectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConnectingImpl implements _Connecting {
  const _$ConnectingImpl();

  @override
  String toString() {
    return 'RobotConnectionState.connecting()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connecting,
    required TResult Function() connected,
    required TResult Function() disconnecting,
    required TResult Function() disconnected,
    required TResult Function(int attempt) reconnecting,
    required TResult Function(RobotFailure failure) failed,
  }) {
    return connecting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connecting,
    TResult? Function()? connected,
    TResult? Function()? disconnecting,
    TResult? Function()? disconnected,
    TResult? Function(int attempt)? reconnecting,
    TResult? Function(RobotFailure failure)? failed,
  }) {
    return connecting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function()? disconnecting,
    TResult Function()? disconnected,
    TResult Function(int attempt)? reconnecting,
    TResult Function(RobotFailure failure)? failed,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Connecting value) connecting,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnecting value) disconnecting,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_Reconnecting value) reconnecting,
    required TResult Function(_Failed value) failed,
  }) {
    return connecting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Connecting value)? connecting,
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Disconnecting value)? disconnecting,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_Reconnecting value)? reconnecting,
    TResult? Function(_Failed value)? failed,
  }) {
    return connecting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Connecting value)? connecting,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnecting value)? disconnecting,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_Reconnecting value)? reconnecting,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting(this);
    }
    return orElse();
  }
}

abstract class _Connecting implements RobotConnectionState {
  const factory _Connecting() = _$ConnectingImpl;
}

/// @nodoc
abstract class _$$ConnectedImplCopyWith<$Res> {
  factory _$$ConnectedImplCopyWith(
          _$ConnectedImpl value, $Res Function(_$ConnectedImpl) then) =
      __$$ConnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectedImplCopyWithImpl<$Res>
    extends _$RobotConnectionStateCopyWithImpl<$Res, _$ConnectedImpl>
    implements _$$ConnectedImplCopyWith<$Res> {
  __$$ConnectedImplCopyWithImpl(
      _$ConnectedImpl _value, $Res Function(_$ConnectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotConnectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ConnectedImpl implements _Connected {
  const _$ConnectedImpl();

  @override
  String toString() {
    return 'RobotConnectionState.connected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connecting,
    required TResult Function() connected,
    required TResult Function() disconnecting,
    required TResult Function() disconnected,
    required TResult Function(int attempt) reconnecting,
    required TResult Function(RobotFailure failure) failed,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connecting,
    TResult? Function()? connected,
    TResult? Function()? disconnecting,
    TResult? Function()? disconnected,
    TResult? Function(int attempt)? reconnecting,
    TResult? Function(RobotFailure failure)? failed,
  }) {
    return connected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function()? disconnecting,
    TResult Function()? disconnected,
    TResult Function(int attempt)? reconnecting,
    TResult Function(RobotFailure failure)? failed,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Connecting value) connecting,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnecting value) disconnecting,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_Reconnecting value) reconnecting,
    required TResult Function(_Failed value) failed,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Connecting value)? connecting,
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Disconnecting value)? disconnecting,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_Reconnecting value)? reconnecting,
    TResult? Function(_Failed value)? failed,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Connecting value)? connecting,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnecting value)? disconnecting,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_Reconnecting value)? reconnecting,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class _Connected implements RobotConnectionState {
  const factory _Connected() = _$ConnectedImpl;
}

/// @nodoc
abstract class _$$DisconnectingImplCopyWith<$Res> {
  factory _$$DisconnectingImplCopyWith(
          _$DisconnectingImpl value, $Res Function(_$DisconnectingImpl) then) =
      __$$DisconnectingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisconnectingImplCopyWithImpl<$Res>
    extends _$RobotConnectionStateCopyWithImpl<$Res, _$DisconnectingImpl>
    implements _$$DisconnectingImplCopyWith<$Res> {
  __$$DisconnectingImplCopyWithImpl(
      _$DisconnectingImpl _value, $Res Function(_$DisconnectingImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotConnectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DisconnectingImpl implements _Disconnecting {
  const _$DisconnectingImpl();

  @override
  String toString() {
    return 'RobotConnectionState.disconnecting()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisconnectingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connecting,
    required TResult Function() connected,
    required TResult Function() disconnecting,
    required TResult Function() disconnected,
    required TResult Function(int attempt) reconnecting,
    required TResult Function(RobotFailure failure) failed,
  }) {
    return disconnecting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connecting,
    TResult? Function()? connected,
    TResult? Function()? disconnecting,
    TResult? Function()? disconnected,
    TResult? Function(int attempt)? reconnecting,
    TResult? Function(RobotFailure failure)? failed,
  }) {
    return disconnecting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function()? disconnecting,
    TResult Function()? disconnected,
    TResult Function(int attempt)? reconnecting,
    TResult Function(RobotFailure failure)? failed,
    required TResult orElse(),
  }) {
    if (disconnecting != null) {
      return disconnecting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Connecting value) connecting,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnecting value) disconnecting,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_Reconnecting value) reconnecting,
    required TResult Function(_Failed value) failed,
  }) {
    return disconnecting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Connecting value)? connecting,
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Disconnecting value)? disconnecting,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_Reconnecting value)? reconnecting,
    TResult? Function(_Failed value)? failed,
  }) {
    return disconnecting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Connecting value)? connecting,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnecting value)? disconnecting,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_Reconnecting value)? reconnecting,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (disconnecting != null) {
      return disconnecting(this);
    }
    return orElse();
  }
}

abstract class _Disconnecting implements RobotConnectionState {
  const factory _Disconnecting() = _$DisconnectingImpl;
}

/// @nodoc
abstract class _$$DisconnectedImplCopyWith<$Res> {
  factory _$$DisconnectedImplCopyWith(
          _$DisconnectedImpl value, $Res Function(_$DisconnectedImpl) then) =
      __$$DisconnectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisconnectedImplCopyWithImpl<$Res>
    extends _$RobotConnectionStateCopyWithImpl<$Res, _$DisconnectedImpl>
    implements _$$DisconnectedImplCopyWith<$Res> {
  __$$DisconnectedImplCopyWithImpl(
      _$DisconnectedImpl _value, $Res Function(_$DisconnectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotConnectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DisconnectedImpl implements _Disconnected {
  const _$DisconnectedImpl();

  @override
  String toString() {
    return 'RobotConnectionState.disconnected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DisconnectedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connecting,
    required TResult Function() connected,
    required TResult Function() disconnecting,
    required TResult Function() disconnected,
    required TResult Function(int attempt) reconnecting,
    required TResult Function(RobotFailure failure) failed,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connecting,
    TResult? Function()? connected,
    TResult? Function()? disconnecting,
    TResult? Function()? disconnected,
    TResult? Function(int attempt)? reconnecting,
    TResult? Function(RobotFailure failure)? failed,
  }) {
    return disconnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function()? disconnecting,
    TResult Function()? disconnected,
    TResult Function(int attempt)? reconnecting,
    TResult Function(RobotFailure failure)? failed,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Connecting value) connecting,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnecting value) disconnecting,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_Reconnecting value) reconnecting,
    required TResult Function(_Failed value) failed,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Connecting value)? connecting,
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Disconnecting value)? disconnecting,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_Reconnecting value)? reconnecting,
    TResult? Function(_Failed value)? failed,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Connecting value)? connecting,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnecting value)? disconnecting,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_Reconnecting value)? reconnecting,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class _Disconnected implements RobotConnectionState {
  const factory _Disconnected() = _$DisconnectedImpl;
}

/// @nodoc
abstract class _$$ReconnectingImplCopyWith<$Res> {
  factory _$$ReconnectingImplCopyWith(
          _$ReconnectingImpl value, $Res Function(_$ReconnectingImpl) then) =
      __$$ReconnectingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int attempt});
}

/// @nodoc
class __$$ReconnectingImplCopyWithImpl<$Res>
    extends _$RobotConnectionStateCopyWithImpl<$Res, _$ReconnectingImpl>
    implements _$$ReconnectingImplCopyWith<$Res> {
  __$$ReconnectingImplCopyWithImpl(
      _$ReconnectingImpl _value, $Res Function(_$ReconnectingImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotConnectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attempt = null,
  }) {
    return _then(_$ReconnectingImpl(
      null == attempt
          ? _value.attempt
          : attempt // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReconnectingImpl implements _Reconnecting {
  const _$ReconnectingImpl(this.attempt);

  @override
  final int attempt;

  @override
  String toString() {
    return 'RobotConnectionState.reconnecting(attempt: $attempt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReconnectingImpl &&
            (identical(other.attempt, attempt) || other.attempt == attempt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, attempt);

  /// Create a copy of RobotConnectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReconnectingImplCopyWith<_$ReconnectingImpl> get copyWith =>
      __$$ReconnectingImplCopyWithImpl<_$ReconnectingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connecting,
    required TResult Function() connected,
    required TResult Function() disconnecting,
    required TResult Function() disconnected,
    required TResult Function(int attempt) reconnecting,
    required TResult Function(RobotFailure failure) failed,
  }) {
    return reconnecting(attempt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connecting,
    TResult? Function()? connected,
    TResult? Function()? disconnecting,
    TResult? Function()? disconnected,
    TResult? Function(int attempt)? reconnecting,
    TResult? Function(RobotFailure failure)? failed,
  }) {
    return reconnecting?.call(attempt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function()? disconnecting,
    TResult Function()? disconnected,
    TResult Function(int attempt)? reconnecting,
    TResult Function(RobotFailure failure)? failed,
    required TResult orElse(),
  }) {
    if (reconnecting != null) {
      return reconnecting(attempt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Connecting value) connecting,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnecting value) disconnecting,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_Reconnecting value) reconnecting,
    required TResult Function(_Failed value) failed,
  }) {
    return reconnecting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Connecting value)? connecting,
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Disconnecting value)? disconnecting,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_Reconnecting value)? reconnecting,
    TResult? Function(_Failed value)? failed,
  }) {
    return reconnecting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Connecting value)? connecting,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnecting value)? disconnecting,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_Reconnecting value)? reconnecting,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (reconnecting != null) {
      return reconnecting(this);
    }
    return orElse();
  }
}

abstract class _Reconnecting implements RobotConnectionState {
  const factory _Reconnecting(final int attempt) = _$ReconnectingImpl;

  int get attempt;

  /// Create a copy of RobotConnectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReconnectingImplCopyWith<_$ReconnectingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RobotFailure failure});

  $RobotFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$RobotConnectionStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotConnectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FailedImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as RobotFailure,
    ));
  }

  /// Create a copy of RobotConnectionState
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

class _$FailedImpl implements _Failed {
  const _$FailedImpl(this.failure);

  @override
  final RobotFailure failure;

  @override
  String toString() {
    return 'RobotConnectionState.failed(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of RobotConnectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() connecting,
    required TResult Function() connected,
    required TResult Function() disconnecting,
    required TResult Function() disconnected,
    required TResult Function(int attempt) reconnecting,
    required TResult Function(RobotFailure failure) failed,
  }) {
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? connecting,
    TResult? Function()? connected,
    TResult? Function()? disconnecting,
    TResult? Function()? disconnected,
    TResult? Function(int attempt)? reconnecting,
    TResult? Function(RobotFailure failure)? failed,
  }) {
    return failed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? connecting,
    TResult Function()? connected,
    TResult Function()? disconnecting,
    TResult Function()? disconnected,
    TResult Function(int attempt)? reconnecting,
    TResult Function(RobotFailure failure)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Connecting value) connecting,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnecting value) disconnecting,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_Reconnecting value) reconnecting,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Connecting value)? connecting,
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Disconnecting value)? disconnecting,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_Reconnecting value)? reconnecting,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Connecting value)? connecting,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnecting value)? disconnecting,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_Reconnecting value)? reconnecting,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements RobotConnectionState {
  const factory _Failed(final RobotFailure failure) = _$FailedImpl;

  RobotFailure get failure;

  /// Create a copy of RobotConnectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
