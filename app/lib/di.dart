import 'package:robot_service/di/di.dart' as rs;
import 'package:robot_service/domain/facade/robot_facade.dart';

Future<void> bootstrap({required String env, required String baseUrl}) async {
  await rs.configureDependencies(env: env);
  rs.getIt<IRobotFacade>().updateBaseUrl(baseUrl);
}
