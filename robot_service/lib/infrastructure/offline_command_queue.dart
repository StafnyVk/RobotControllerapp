import 'dart:async';
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

import '../domain/model/queued_command.dart';
import '../domain/model/robot_command.dart';

/// Persisted FIFO queue of commands awaiting network availability.
/// Safety invariant: enqueueing a `stop` supersedes any pending `move`s.
class OfflineCommandQueue {
  OfflineCommandQueue(this._prefs);

  static const _storageKey = 'robot.offline_queue.v1';
  static const _uuid = Uuid();

  final SharedPreferences _prefs;
  final _controller = StreamController<List<QueuedCommand>>.broadcast();

  Stream<List<QueuedCommand>> get stream => _controller.stream;

  List<QueuedCommand> snapshot() {
    final raw = _prefs.getString(_storageKey);
    if (raw == null) return [];
    final list = (jsonDecode(raw) as List<dynamic>).cast<Map<String, dynamic>>();
    return list.map(QueuedCommand.fromJson).toList();
  }

  Future<QueuedCommand> enqueue(RobotCommand command) async {
    var current = snapshot();
    if (command is StopCommand) {
      current = current
          .where((q) => q.command is! MoveCommand)
          .toList(growable: true);
    }
    final q = QueuedCommand(
      id: _uuid.v4(),
      command: command,
      enqueuedAt: DateTime.now(),
    );
    current.add(q);
    await _persist(current);
    return q;
  }

  Future<QueuedCommand?> peek() async {
    final current = snapshot();
    return current.isEmpty ? null : current.first;
  }

  Future<void> removeById(String id) async {
    final current = snapshot()..removeWhere((q) => q.id == id);
    await _persist(current);
  }

  Future<void> clear() => _persist(const []);

  Future<void> incrementAttempt(String id) async {
    final current = snapshot();
    final idx = current.indexWhere((q) => q.id == id);
    if (idx == -1) return;
    current[idx] = current[idx].copyWith(attempts: current[idx].attempts + 1);
    await _persist(current);
  }

  Future<void> _persist(List<QueuedCommand> items) async {
    await _prefs.setString(
      _storageKey,
      jsonEncode(items.map((e) => e.toJson()).toList()),
    );
    _controller.add(items);
  }

  Future<void> dispose() => _controller.close();
}
