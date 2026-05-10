import 'dart:async';

import 'package:doso/doso.dart';
import 'package:injectable/injectable.dart';

import '../domain/core/unit.dart';
import '../domain/facade/robot_facade.dart';
import '../domain/failure/robot_failure.dart';
import '../domain/model/robot_command.dart';
import '../domain/model/robot_connection_info.dart';
import '../domain/model/robot_status.dart';
import 'connectivity_gate.dart';
import 'robot_api_client.dart';
import 'robot_telemetry_stream.dart';

@LazySingleton(as: IRobotFacade)
class RobotFacadeImpl implements IRobotFacade {
  @factoryMethod
  static RobotFacadeImpl create() => RobotFacadeImpl();

  RobotFacadeImpl({
    RobotConnectionInfo? connectionInfo,
    RobotApiClient? apiClient,
    RobotTelemetryStream? telemetryStream,
    ConnectivityGate? connectivity,
  })  : _connectionInfo = connectionInfo ?? RobotConnectionInfo.defaultLocal(),
        _apiClient = apiClient ??
            RobotApiClient(
              baseUrl: (connectionInfo ?? RobotConnectionInfo.defaultLocal())
                  .baseUrl,
            ),
        _telemetry = telemetryStream ??
            RobotTelemetryStream(
              url: (connectionInfo ?? RobotConnectionInfo.defaultLocal())
                  .websocketUrl,
            ),
        _connectivity = connectivity ?? ConnectivityGate() {
    _connectivity.start();
    _connectionState.add(ConnectionLifecycle.disconnected);

    // Watch telemetry so we detect when the backend drops the robot session
    // (e.g. auto-disconnect or battery dead) without an explicit disconnect call.
    _telemetrySub = _telemetry.stream.listen((status) {
      if (_sessionConnected && !status.connected) {
        _sessionConnected = false;
      }
    });
  }

  RobotConnectionInfo _connectionInfo;
  final RobotApiClient _apiClient;
  final RobotTelemetryStream _telemetry;
  final ConnectivityGate _connectivity;
  final _connectionState = StreamController<ConnectionLifecycle>.broadcast();

  // Tracks whether the backend robot session is active.
  // When false, move/stop return networkUnavailable so commands are queued.
  bool _sessionConnected = false;
  StreamSubscription<RobotStatus>? _telemetrySub;

  @override
  Future<Do<RobotFailure, Unit>> connect() async {
    if (!await _connectivity.isOnline()) {
      return const Do.failure(RobotFailure.networkUnavailable());
    }
    _connectionState.add(ConnectionLifecycle.connecting);
    try {
      await _apiClient.connect();
      _sessionConnected = true;
      _telemetry.start();
      _connectionState.add(ConnectionLifecycle.connected);
      return const Do.success(unit);
    } catch (_) {
      _connectionState.add(ConnectionLifecycle.disconnected);
      return const Do.failure(RobotFailure.connectFailed());
    }
  }

  @override
  Future<Do<RobotFailure, Unit>> disconnect() async {
    _sessionConnected = false;
    try {
      _telemetry.stop();
      await _apiClient.disconnect();
    } catch (_) {
      // Ignore API failure for disconnect - local state should be cleared anyway.
    } finally {
      _connectionState.add(ConnectionLifecycle.disconnected);
    }
    return const Do.success(unit);
  }

  @override
  Future<Do<RobotFailure, RobotStatus>> fetchStatus() async {
    try {
      final status = await _apiClient.getStatus();
      return Do.success(status);
    } on TimeoutException {
      return const Do.failure(RobotFailure.timeout());
    } catch (e) {
      return Do.failure(RobotFailure.unexpected(e.toString()));
    }
  }

  @override
  Future<Do<RobotFailure, Unit>> move(
    MoveDirection direction, {
    int speed = 50,
  }) async {
    // Queue the command if WiFi is down OR robot session is not active.
    if (!await _connectivity.isOnline() || !_sessionConnected) {
      return const Do.failure(RobotFailure.networkUnavailable());
    }
    try {
      await _apiClient.move(direction, speed: speed);
      return const Do.success(unit);
    } catch (e) {
      return Do.failure(RobotFailure.commandFailed(e.toString()));
    }
  }

  @override
  Future<Do<RobotFailure, Unit>> stop() async {
    // Queue the stop if the session is down so it executes on reconnect.
    if (!_sessionConnected) {
      return const Do.failure(RobotFailure.networkUnavailable());
    }
    try {
      await _apiClient.stop();
      return const Do.success(unit);
    } catch (e) {
      return Do.failure(RobotFailure.commandFailed(e.toString()));
    }
  }

  @override
  Stream<RobotStatus> telemetryStream() => _telemetry.stream;

  @override
  Stream<ConnectionLifecycle> connectionStateStream() =>
      _connectionState.stream;

  @override
  void updateBaseUrl(String baseUrl) {
    _connectionInfo = RobotConnectionInfo(
      baseUrl: baseUrl,
      websocketUrl: baseUrl.replaceFirst('http', 'ws') + '/ws/telemetry',
    );
    _apiClient.updateBaseUrl(_connectionInfo.baseUrl);
    _telemetry.updateUrl(_connectionInfo.websocketUrl);
  }

  @override
  void dispose() {
    _telemetrySub?.cancel();
    _apiClient.close();
    _telemetry.dispose();
    _connectivity.dispose();
    _connectionState.close();
  }
}
