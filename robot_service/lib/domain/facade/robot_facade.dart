import 'package:doso/doso.dart';

import '../core/unit.dart';
import '../failure/robot_failure.dart';
import '../model/robot_command.dart';
import '../model/robot_status.dart';

enum ConnectionLifecycle { disconnected, connecting, connected, reconnecting }

abstract class IRobotFacade {
  Future<Do<RobotFailure, Unit>> connect();
  Future<Do<RobotFailure, Unit>> disconnect();
  Future<Do<RobotFailure, RobotStatus>> fetchStatus();
  Future<Do<RobotFailure, Unit>> move(MoveDirection direction, {int speed = 50});
  Future<Do<RobotFailure, Unit>> stop();

  Stream<RobotStatus> telemetryStream();
  Stream<ConnectionLifecycle> connectionStateStream();

  void updateBaseUrl(String baseUrl);
  void dispose();
}
