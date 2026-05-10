import 'package:robot_simulator/robot_state_machine.dart';
import 'package:test/test.dart';

void main() {
  group('RobotStateMachine', () {
    test('move fails until connected', () {
      final m = RobotStateMachine();
      expect(m.move('forward'), isFalse);
      expect(m.connect(), isTrue);
      expect(m.move('forward'), isTrue);
      expect(m.state.moving, isTrue);
      expect(m.state.direction, 'forward');
    });

    test('disconnect clears motion', () {
      final m = RobotStateMachine()
        ..connect()
        ..move('left');
      expect(m.state.moving, isTrue);
      m.disconnect();
      expect(m.state.moving, isFalse);
      expect(m.state.direction, isNull);
      expect(m.state.connected, isFalse);
    });

    test('stop halts without disconnecting', () {
      final m = RobotStateMachine()
        ..connect()
        ..move('forward');
      m.stop();
      expect(m.state.moving, isFalse);
      expect(m.state.direction, isNull);
      expect(m.state.connected, isTrue);
    });
  });
}
