import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/facade/robot_facade.dart';
import '../../domain/failure/robot_failure.dart';
import '../../domain/model/robot_status.dart';

part 'robot_telemetry_bloc.freezed.dart';
part 'robot_telemetry_event.dart';
part 'robot_telemetry_state.dart';

@injectable
class RobotTelemetryBloc
    extends Bloc<RobotTelemetryEvent, RobotTelemetryState> {
  RobotTelemetryBloc(this._facade)
      : super(const RobotTelemetryState.initial()) {
    on<_WatchStarted>(_onWatchStarted);
    on<_WatchStopped>(_onWatchStopped);
    on<_StatusReceived>(_onStatusReceived);
    on<_StreamErrored>(_onStreamErrored);
    on<_StaleDetected>(_onStaleDetected);
  }

  static const _staleThreshold = Duration(seconds: 5);

  final IRobotFacade _facade;
  StreamSubscription<RobotStatus>? _sub;
  Timer? _staleTimer;

  Future<void> _onWatchStarted(
    _WatchStarted event,
    Emitter<RobotTelemetryState> emit,
  ) async {
    await _sub?.cancel();
    _sub = _facade.telemetryStream().listen(
          (status) => add(RobotTelemetryEvent.statusReceived(status)),
          onError: (_) => add(const RobotTelemetryEvent.streamErrored(
            RobotFailure.invalidResponse(),
          )),
        );
  }

  Future<void> _onWatchStopped(
    _WatchStopped event,
    Emitter<RobotTelemetryState> emit,
  ) async {
    await _sub?.cancel();
    _staleTimer?.cancel();
  }

  void _onStatusReceived(
    _StatusReceived event,
    Emitter<RobotTelemetryState> emit,
  ) {
    _resetStaleTimer();
    emit(RobotTelemetryState.live(event.status));
  }

  void _onStreamErrored(
    _StreamErrored event,
    Emitter<RobotTelemetryState> emit,
  ) {
    emit(RobotTelemetryState.error(event.failure));
  }

  void _onStaleDetected(
    _StaleDetected event,
    Emitter<RobotTelemetryState> emit,
  ) {
    state.whenOrNull(
      live: (status) => emit(
        RobotTelemetryState.stale(status, DateTime.now()),
      ),
    );
  }

  void _resetStaleTimer() {
    _staleTimer?.cancel();
    _staleTimer = Timer(_staleThreshold, () {
      add(const RobotTelemetryEvent.staleDetected());
    });
  }

  @override
  Future<void> close() async {
    await _sub?.cancel();
    _staleTimer?.cancel();
    return super.close();
  }
}
