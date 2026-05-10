import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../domain/facade/robot_facade.dart';
import '../infrastructure/offline_command_queue.dart';
import '../infrastructure/robot_facade_impl.dart';
import 'di.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies(
    {required String env, bool isTest = false}) async {
  await getIt.init(environment: env);
  if (isTest) {
    getIt.allowReassignment = true;
  }
}

@module
abstract class RobotServiceModule {
  @preResolve
  @lazySingleton
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @lazySingleton
  OfflineCommandQueue get queue =>
      OfflineCommandQueue(getIt<SharedPreferences>());
}
