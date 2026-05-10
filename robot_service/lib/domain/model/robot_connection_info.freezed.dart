// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'robot_connection_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RobotConnectionInfo {
  String get baseUrl => throw _privateConstructorUsedError;
  String get websocketUrl => throw _privateConstructorUsedError;
  String? get sessionId => throw _privateConstructorUsedError;

  /// Create a copy of RobotConnectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RobotConnectionInfoCopyWith<RobotConnectionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RobotConnectionInfoCopyWith<$Res> {
  factory $RobotConnectionInfoCopyWith(
          RobotConnectionInfo value, $Res Function(RobotConnectionInfo) then) =
      _$RobotConnectionInfoCopyWithImpl<$Res, RobotConnectionInfo>;
  @useResult
  $Res call({String baseUrl, String websocketUrl, String? sessionId});
}

/// @nodoc
class _$RobotConnectionInfoCopyWithImpl<$Res, $Val extends RobotConnectionInfo>
    implements $RobotConnectionInfoCopyWith<$Res> {
  _$RobotConnectionInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RobotConnectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseUrl = null,
    Object? websocketUrl = null,
    Object? sessionId = freezed,
  }) {
    return _then(_value.copyWith(
      baseUrl: null == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      websocketUrl: null == websocketUrl
          ? _value.websocketUrl
          : websocketUrl // ignore: cast_nullable_to_non_nullable
              as String,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RobotConnectionInfoImplCopyWith<$Res>
    implements $RobotConnectionInfoCopyWith<$Res> {
  factory _$$RobotConnectionInfoImplCopyWith(_$RobotConnectionInfoImpl value,
          $Res Function(_$RobotConnectionInfoImpl) then) =
      __$$RobotConnectionInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String baseUrl, String websocketUrl, String? sessionId});
}

/// @nodoc
class __$$RobotConnectionInfoImplCopyWithImpl<$Res>
    extends _$RobotConnectionInfoCopyWithImpl<$Res, _$RobotConnectionInfoImpl>
    implements _$$RobotConnectionInfoImplCopyWith<$Res> {
  __$$RobotConnectionInfoImplCopyWithImpl(_$RobotConnectionInfoImpl _value,
      $Res Function(_$RobotConnectionInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RobotConnectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseUrl = null,
    Object? websocketUrl = null,
    Object? sessionId = freezed,
  }) {
    return _then(_$RobotConnectionInfoImpl(
      baseUrl: null == baseUrl
          ? _value.baseUrl
          : baseUrl // ignore: cast_nullable_to_non_nullable
              as String,
      websocketUrl: null == websocketUrl
          ? _value.websocketUrl
          : websocketUrl // ignore: cast_nullable_to_non_nullable
              as String,
      sessionId: freezed == sessionId
          ? _value.sessionId
          : sessionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RobotConnectionInfoImpl implements _RobotConnectionInfo {
  const _$RobotConnectionInfoImpl(
      {required this.baseUrl, required this.websocketUrl, this.sessionId});

  @override
  final String baseUrl;
  @override
  final String websocketUrl;
  @override
  final String? sessionId;

  @override
  String toString() {
    return 'RobotConnectionInfo(baseUrl: $baseUrl, websocketUrl: $websocketUrl, sessionId: $sessionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RobotConnectionInfoImpl &&
            (identical(other.baseUrl, baseUrl) || other.baseUrl == baseUrl) &&
            (identical(other.websocketUrl, websocketUrl) ||
                other.websocketUrl == websocketUrl) &&
            (identical(other.sessionId, sessionId) ||
                other.sessionId == sessionId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, baseUrl, websocketUrl, sessionId);

  /// Create a copy of RobotConnectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RobotConnectionInfoImplCopyWith<_$RobotConnectionInfoImpl> get copyWith =>
      __$$RobotConnectionInfoImplCopyWithImpl<_$RobotConnectionInfoImpl>(
          this, _$identity);
}

abstract class _RobotConnectionInfo implements RobotConnectionInfo {
  const factory _RobotConnectionInfo(
      {required final String baseUrl,
      required final String websocketUrl,
      final String? sessionId}) = _$RobotConnectionInfoImpl;

  @override
  String get baseUrl;
  @override
  String get websocketUrl;
  @override
  String? get sessionId;

  /// Create a copy of RobotConnectionInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RobotConnectionInfoImplCopyWith<_$RobotConnectionInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
