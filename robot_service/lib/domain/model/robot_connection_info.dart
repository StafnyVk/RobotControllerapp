import 'package:freezed_annotation/freezed_annotation.dart';

part 'robot_connection_info.freezed.dart';

@freezed
class RobotConnectionInfo with _$RobotConnectionInfo {
  const factory RobotConnectionInfo({
    required String baseUrl,
    required String websocketUrl,
    String? sessionId,
  }) = _RobotConnectionInfo;

  factory RobotConnectionInfo.defaultLocal() => const RobotConnectionInfo(
        baseUrl: 'http://192.168.0.107:8080',
        websocketUrl: 'ws://192.168.0.107:8080/ws/telemetry',
      );
}
