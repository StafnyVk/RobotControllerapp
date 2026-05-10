import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/facade/robot_facade.dart';
import '../../domain/failure/robot_failure.dart';

part 'robot_connection_bloc.freezed.dart';
part 'robot_connection_event.dart';
part 'robot_connection_state.dart';

@injectable
class RobotConnectionBloc
    extends Bloc<RobotConnectionEvent, RobotConnectionState> {
  RobotConnectionBloc(this._facade)
      : super(const RobotConnectionState.initial()) {
    on<_Connect>(_onConnect);
    on<_Disconnect>(_onDisconnect);
    on<_AutoReconnect>(_onAutoReconnect);
    on<_ConnectivityChanged>(_onConnectivityChanged);
  }

  final IRobotFacade _facade;

  // Cap on per-attempt back-off delay (seconds).
  static const _maxBackoffSeconds = 10;

  Future<void> _onConnect(
    _Connect event,
    Emitter<RobotConnectionState> emit,
  ) async {
    emit(const RobotConnectionState.connecting());
    await Future<void>.delayed(const Duration(seconds: 2));
    if (event.url != null) {
      _facade.updateBaseUrl(event.url!);
    }
    final result = await _facade.connect();
    result.fold(
      onSuccess: (_) => emit(const RobotConnectionState.connected()),
      onFailure: (failure) => emit(RobotConnectionState.failed(failure)),
    );
  }

  Future<void> _onDisconnect(
    _Disconnect event,
    Emitter<RobotConnectionState> emit,
  ) async {
    emit(const RobotConnectionState.disconnecting());
    final result = await _facade.disconnect();
    result.fold(
      onSuccess: (_) => emit(const RobotConnectionState.disconnected()),
      onFailure: (failure) => emit(RobotConnectionState.failed(failure)),
    );
  }

  Future<void> _onAutoReconnect(
    _AutoReconnect event,
    Emitter<RobotConnectionState> emit,
  ) async {
    // Guard: exit only if the user deliberately disconnected — not if connected
    // (which means the session dropped while the bloc still thought it was up).
    final irrelevant = state.maybeWhen(
      disconnected: () => true,
      disconnecting: () => true,
      orElse: () => false,
    );
    if (irrelevant || isClosed) return;

    // Advance attempt counter from current reconnecting state, or start at 1.
    final attempt = state.maybeWhen(
      reconnecting: (a) => a + 1,
      orElse: () => 1,
    );
    emit(RobotConnectionState.reconnecting(attempt));

    // Hold the offline banner visible for at least 5 s on the first attempt,
    // then grow back-off by 1 s per subsequent attempt (capped).
    final delay = attempt == 1
        ? const Duration(seconds: 5)
        : Duration(seconds: attempt.clamp(2, _maxBackoffSeconds));
    await Future<void>.delayed(delay);

    if (isClosed) return;

    // Single attempt — handler then COMPLETES so queued events (e.g. disconnect)
    // can be processed before the next retry is scheduled.
    final res = await _facade.connect();
    if (isClosed) return;

    res.fold(
      onSuccess: (_) => emit(const RobotConnectionState.connected()),
      // Re-queue rather than looping — lets disconnect interrupt between retries.
      onFailure: (_) => add(const RobotConnectionEvent.autoReconnect()),
    );
  }

  Future<void> _onConnectivityChanged(
    _ConnectivityChanged event,
    Emitter<RobotConnectionState> emit,
  ) async {
    if (!event.online) {
      emit(const RobotConnectionState.disconnected());
    } else {
      add(const RobotConnectionEvent.autoReconnect());
    }
  }
}
