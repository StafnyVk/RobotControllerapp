import 'dart:io';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:robot_service/application/robot_command_bloc/robot_command_bloc.dart';
import 'package:robot_service/application/robot_connection_bloc/robot_connection_bloc.dart';
import 'package:robot_service/application/robot_telemetry_bloc/robot_telemetry_bloc.dart';
import 'package:robot_service/di/di.dart' as rs;

import 'routing/app_router.dart';
import 'services/android_notification/robot_foreground_service.dart';

class RobotApp extends StatefulWidget {
  const RobotApp({super.key});

  @override
  State<RobotApp> createState() => _RobotAppState();
}

class _RobotAppState extends State<RobotApp> {
  final _appRouter = AppRouter();

  // ── Native notification surfaces ──────────────────────────────────────────
  final _foregroundService = RobotForegroundService();

  /// Tracks whether we have already navigated to HomeRoute so that
  /// auto-reconnects do not wipe tab state.
  bool _atHome = false;

  @override
  void initState() {
    super.initState();
    
    if (Platform.isAndroid) {
      _foregroundService.init();
      _foregroundService.stopRequestsFromWidget.listen((_) {
        rs
            .getIt<RobotCommandBloc>()
            .add(const RobotCommandEvent.stopRequested());
      });
    }
  }

  @override
  void dispose() {
    _foregroundService.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => rs.getIt<RobotConnectionBloc>()),
        BlocProvider(create: (_) => rs.getIt<RobotTelemetryBloc>()),
        BlocProvider(create: (_) => rs.getIt<RobotCommandBloc>()),
      ],
      child: MultiBlocListener(
        listeners: [
          // ── Connection lifecycle → start / stop native surfaces ────────
          BlocListener<RobotConnectionBloc, RobotConnectionState>(
            listener: (ctx, state) {
              state.whenOrNull(
                connected: () {
                  // Start telemetry stream and flush the offline queue.
                  ctx.read<RobotTelemetryBloc>().add(
                        const RobotTelemetryEvent.watchStarted(),
                      );
                  ctx.read<RobotCommandBloc>().add(
                        const RobotCommandEvent.flushQueueRequested(),
                      );
                  // Navigate to HomeRoute only on the first connection.
                  if (!_atHome) {
                    _atHome = true;
                    _appRouter.replace(const HomeRoute());
                  }
                },
                disconnected: () {
                  _atHome = false;
                  ctx.read<RobotTelemetryBloc>().add(
                        const RobotTelemetryEvent.watchStopped(),
                      );
                  // Stop native notification surfaces.
                  if (Platform.isAndroid) _foregroundService.stop();
                  _appRouter.replace(const ConnectRoute());
                },
              );
            },
          ),

          // ── Telemetry ticks → update native notification surfaces ───────
          BlocListener<RobotTelemetryBloc, RobotTelemetryState>(
            listener: (ctx, state) {
              state.whenOrNull(
                live: (status) async {
                  if (Platform.isAndroid) {
                    // start() checks internally whether service is running.
                    await _foregroundService.start(status);
                    await _foregroundService.update(status);
                  }
                },
                stale: (status, _) async {
                  // Keep the surface alive but reflect the stale data.
                  if (Platform.isAndroid)
                    await _foregroundService.update(status);
                },
              );
            },
          ),
        ],
        child: ScreenUtilInit(
          designSize: const Size(390, 844),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp.router(
              title: 'Ground·Ctrl',
              debugShowCheckedModeBanner: false,
              theme: AppTheme.dark,
              darkTheme: AppTheme.dark,
              themeMode: ThemeMode.system,
              routerConfig: _appRouter.config(),
            );
          },
        ),
      ),
    );
  }
}
