import 'package:flutter_test/flutter_test.dart';
import 'package:robot_service/domain/model/robot_command.dart';
import 'package:robot_service/infrastructure/offline_command_queue.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  setUp(() => SharedPreferences.setMockInitialValues({}));

  test('enqueueing a Stop supersedes pending Moves (safety invariant)',
      () async {
    final prefs = await SharedPreferences.getInstance();
    final queue = OfflineCommandQueue(prefs);

    await queue.enqueue(const RobotCommand.move(MoveDirection.forward));
    await queue.enqueue(const RobotCommand.move(MoveDirection.left));
    await queue.enqueue(const RobotCommand.stop());

    final snapshot = queue.snapshot();
    expect(snapshot.length, 1);
    expect(snapshot.single.command, isA<StopCommand>());
  });

  test('FIFO ordering preserved on peek/removeById', () async {
    final prefs = await SharedPreferences.getInstance();
    final queue = OfflineCommandQueue(prefs);

    final a = await queue.enqueue(
      const RobotCommand.move(MoveDirection.forward),
    );
    final b = await queue.enqueue(
      const RobotCommand.move(MoveDirection.back),
    );

    final head = await queue.peek();
    expect(head?.id, a.id);

    await queue.removeById(a.id);
    final nextHead = await queue.peek();
    expect(nextHead?.id, b.id);
  });

  test('incrementAttempt bumps the counter without reordering', () async {
    final prefs = await SharedPreferences.getInstance();
    final queue = OfflineCommandQueue(prefs);

    final q = await queue.enqueue(const RobotCommand.stop());
    await queue.incrementAttempt(q.id);
    await queue.incrementAttempt(q.id);

    expect(queue.snapshot().single.attempts, 2);
  });
}
