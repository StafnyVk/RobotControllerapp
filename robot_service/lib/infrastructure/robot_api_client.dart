import 'dart:convert';

import 'package:http/http.dart' as http;

import '../domain/model/robot_command.dart';
import '../domain/model/robot_status.dart';
import 'retry_policy.dart';

class RobotApiClient {
  RobotApiClient({
    required String baseUrl,
    http.Client? httpClient,
    RetryPolicy? retryPolicy,
  })  : _baseUrl = baseUrl,
        _client = httpClient ?? http.Client(),
        _retry = retryPolicy ?? const RetryPolicy();

  String _baseUrl;
  final http.Client _client;
  final RetryPolicy _retry;

  void updateBaseUrl(String baseUrl) => _baseUrl = baseUrl;

  Uri _uri(String path) => Uri.parse('$_baseUrl$path');

  Future<RobotStatus> getStatus() async {
    return _retry.run(() async {
      final res = await _client.get(_uri('/status'));
      if (res.statusCode != 200) {
        throw _HttpError('GET /status failed: ${res.statusCode}');
      }
      final body = jsonDecode(res.body) as Map<String, dynamic>;
      return RobotStatus.fromJson(body);
    });
  }

  Future<void> connect() => _post('/connect');
  Future<void> disconnect() => _post('/disconnect');
  Future<void> stop() => _post('/stop');

  Future<void> move(MoveDirection direction, {int speed = 50}) => _post(
        '/move',
        body: {'direction': direction.api, 'speed': speed},
      );

  Future<void> _post(String path, {Map<String, dynamic>? body}) async {
    return _retry.run(() async {
      final res = await _client.post(
        _uri(path),
        headers: {'Content-Type': 'application/json'},
        body: body == null ? '{}' : jsonEncode(body),
      );
      if (res.statusCode < 200 || res.statusCode >= 300) {
        throw _HttpError('POST $path failed: ${res.statusCode}');
      }
    });
  }

  void close() => _client.close();
}

class _HttpError implements Exception {
  final String message;
  _HttpError(this.message);
  @override
  String toString() => message;
}
