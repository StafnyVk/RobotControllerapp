// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:robot_service/application/robot_command_bloc/robot_command_bloc.dart'
    as _i297;
import 'package:robot_service/application/robot_connection_bloc/robot_connection_bloc.dart'
    as _i45;
import 'package:robot_service/application/robot_telemetry_bloc/robot_telemetry_bloc.dart'
    as _i249;
import 'package:robot_service/di/di.dart' as _i1007;
import 'package:robot_service/domain/facade/robot_facade.dart' as _i989;
import 'package:robot_service/infrastructure/offline_command_queue.dart'
    as _i217;
import 'package:robot_service/infrastructure/robot_facade_impl.dart' as _i370;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final robotServiceModule = _$RobotServiceModule();
    await gh.lazySingletonAsync<_i460.SharedPreferences>(
      () => robotServiceModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i217.OfflineCommandQueue>(() => robotServiceModule.queue);
    gh.lazySingleton<_i989.IRobotFacade>(() => _i370.RobotFacadeImpl.create());
    gh.factory<_i45.RobotConnectionBloc>(
        () => _i45.RobotConnectionBloc(gh<_i989.IRobotFacade>()));
    gh.factory<_i249.RobotTelemetryBloc>(
        () => _i249.RobotTelemetryBloc(gh<_i989.IRobotFacade>()));
    gh.factory<_i297.RobotCommandBloc>(() => _i297.RobotCommandBloc(
          gh<_i989.IRobotFacade>(),
          gh<_i217.OfflineCommandQueue>(),
        ));
    return this;
  }
}

class _$RobotServiceModule extends _i1007.RobotServiceModule {}
