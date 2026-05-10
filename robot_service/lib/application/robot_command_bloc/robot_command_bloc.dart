import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:uuid/uuid.dart';

import '../../domain/facade/robot_facade.dart';
import '../../domain/failure/robot_failure.dart';
import '../../domain/model/robot_command.dart';
import '../../infrastructure/offline_command_queue.dart';

part 'robot_command_bloc.freezed.dart';
part 'robot_command_event.dart';
part 'robot_command_state.dart';

@injectable
class RobotCommandBloc extends Bloc<RobotCommandEvent, RobotCommandState> {
  RobotCommandBloc(this._facade, this._queue)
      : super(const RobotCommandState.idle()) {
    on<_MoveRequested>(_onMove);
    on<_StopRequested>(_onStop);
    on<_FlushQueueRequested>(_onFlush);
  }

  static const _uuid = Uuid();
  final IRobotFacade _facade;
  final OfflineCommandQueue _queue;

  Future<void> _onMove(
    _MoveRequested event,
    Emitter<RobotCommandState> emit,
  ) async {
    final id = _uuid.v4();
    emit(RobotCommandState.dispatching(id));
    final res = await _facade.move(event.direction, speed: event.speed);
    await _resolve(id, RobotCommand.move(event.direction, speed: event.speed),
        res.isSuccess, res.failureOrNull, emit);
  }

  Future<void> _onStop(
    _StopRequested event,
    Emitter<RobotCommandState> emit,
  ) async {
    final id = _uuid.v4();
    emit(RobotCommandState.dispatching(id));
    final res = await _facade.stop();
    await _resolve(id, const RobotCommand.stop(), res.isSuccess,
        res.failureOrNull, emit);
  }

  Future<void> _resolve(
    String id,
    RobotCommand command,
    bool ok,
    RobotFailure? failure,
    Emitter<RobotCommandState> emit,
  ) async {
    if (ok) {
      emit(RobotCommandState.succeeded(id));
      return;
    }
    if (failure is NetworkUnavailable) {
      await _queue.enqueue(command);
      emit(RobotCommandState.queued(id));
      return;
    }
    emit(RobotCommandState.failed(id, failure ?? const RobotFailure.unexpected('')));
  }

  Future<void> _onFlush(
    _FlushQueueRequested event,
    Emitter<RobotCommandState> emit,
  ) async {
    while (true) {
      final next = await _queue.peek();
      if (next == null) break;
      final res = await next.command.when(
        move: (d, s) => _facade.move(d, speed: s),
        stop: () => _facade.stop(),
        connect: () => _facade.connect(),
        disconnect: () => _facade.disconnect(),
      );
      if (res.isFailure) {
        await _queue.incrementAttempt(next.id);
        break;
      }
      await _queue.removeById(next.id);
    }
  }
}

extension _DoExt<L, R> on dynamic {
  bool get isSuccess => (this as dynamic).fold<bool>(
        onSuccess: (_) => true,
        onFailure: (_) => false,
      );
  bool get isFailure => !isSuccess;
  RobotFailure? get failureOrNull => (this as dynamic).fold<RobotFailure?>(
        onSuccess: (_) => null,
        onFailure: (f) => f as RobotFailure,
      );
}
