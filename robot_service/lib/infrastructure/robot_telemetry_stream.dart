import 'dart:async';
import 'dart:convert';

import 'package:web_socket_channel/web_socket_channel.dart';

import '../domain/model/robot_status.dart';

/// Wraps a WebSocket connection with automatic exponential-backoff reconnection.
class RobotTelemetryStream {
  RobotTelemetryStream({required String url}) : _url = url;

  String _url;
  WebSocketChannel? _channel;
  StreamSubscription<dynamic>? _sub;
  Timer? _reconnectTimer;

  final _controller = StreamController<RobotStatus>.broadcast(sync: true);
  bool _closed = false;
  bool _active = false;

  static const _baseDelay = Duration(seconds: 1);
  static const _maxDelay = Duration(seconds: 30);
  Duration _currentDelay = _baseDelay;

  Stream<RobotStatus> get stream => _controller.stream;

  void updateUrl(String url) {
    _url = url;
    if (_active) {
      _reconnect();
    }
  }

  void start() {
    if (_closed) return;
    if (_active) return; // Already streaming — don't open a second socket.
    _active = true;
    _open();
  }

  void stop() {
    _active = false;
    _reconnectTimer?.cancel();
    _reconnectTimer = null;
    _sub?.cancel();
    _sub = null;
    _channel?.sink.close();
    _channel = null;
    _currentDelay = _baseDelay;
  }

  void _open() {
    if (_closed || !_active) return;
    try {
      final uri = Uri.parse(_url);
      _channel = WebSocketChannel.connect(uri);

      // Wait for the stream to emit or error instead of just connecting
      _sub = _channel!.stream.listen(
        _onData,
        onError: (Object error) {
          // Log or handle error silently to prevent crash
          _scheduleReconnect();
        },
        onDone: _scheduleReconnect,
        cancelOnError: true,
      );
      _currentDelay = _baseDelay;
    } catch (_) {
      _scheduleReconnect();
    }
  }

  void _onData(dynamic raw) {
    try {
      final json = jsonDecode(raw as String) as Map<String, dynamic>;
      _controller.add(RobotStatus.fromJson(json));
    } catch (_) {
      // swallow parse errors; next tick will include the latest state
    }
  }

  void _scheduleReconnect() {
    if (_closed || !_active) return;
    _reconnectTimer?.cancel();
    _sub?.cancel();
    _channel?.sink.close();
    _reconnectTimer = Timer(_currentDelay, _open);
    final next = _currentDelay * 2;
    _currentDelay = next > _maxDelay ? _maxDelay : next;
  }

  void _reconnect() {
    if (_closed || !_active) return;
    _reconnectTimer?.cancel();
    _sub?.cancel();
    _channel?.sink.close();
    _open();
  }

  Future<void> dispose() async {
    _closed = true;
    _reconnectTimer?.cancel();
    await _sub?.cancel();
    await _channel?.sink.close();
    await _controller.close();
  }
}
