import 'package:auto_route/auto_route.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:robot_service/application/robot_connection_bloc/robot_connection_bloc.dart';
import 'package:robot_service/application/robot_telemetry_bloc/robot_telemetry_bloc.dart';

import '../../routing/app_router.dart';
import '../../widgets/offline_banner.dart';
import 'widgets/home_header.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _deadSheetShown = false;
  bool _isExiting = false;

  void _showDeviceDeadSheet(BuildContext ctx) {
    showModalBottomSheet<void>(
      context: ctx,
      isDismissible: false,
      enableDrag: false,
      useRootNavigator: true,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      barrierColor: Colors.black.withValues(alpha: 0.75),
      builder: (modalCtx) => DeviceDeadSheet(
        onOk: () {
          _isExiting = true;
          Navigator.of(modalCtx).pop();
          // Disconnect so app.dart listener routes to ConnectScreen.
          ctx.read<RobotConnectionBloc>().add(
                const RobotConnectionEvent.disconnect(),
              );
        },
      ),
    ).whenComplete(() {
      if (mounted && !_isExiting) setState(() => _deadSheetShown = false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RobotTelemetryBloc, RobotTelemetryState>(
      listener: (ctx, state) {
        final status = state.maybeWhen(
          live: (s) => s,
          stale: (s, _) => s,
          orElse: () => null,
        );

        if (status != null) {
          // Dead battery — show modal before anything else.
          if (status.battery <= 0 && !_deadSheetShown && !_isExiting) {
            setState(() => _deadSheetShown = true);
            _showDeviceDeadSheet(ctx);
            return;
          }

          // If battery is dead, we stop here and don't try to reconnect.
          if (status.battery <= 0) return;

          // Backend auto-disconnected the robot session (e.g. 8-20 s drop).
          // The connection bloc still thinks it is connected — correct that
          // so it triggers auto-reconnect and the offline banner appears.
          if (!status.connected) {
            final connBloc = ctx.read<RobotConnectionBloc>();
            final alreadyHandled = connBloc.state.maybeWhen(
              connected: () => false,
              orElse: () => true, // already reconnecting / disconnected
            );
            if (!alreadyHandled) {
              connBloc.add(const RobotConnectionEvent.autoReconnect());
            }
          }
        }
      },
      child: AutoTabsRouter(
        routes: const [DashboardRoute(), ControlRoute(), SettingsRoute()],
        builder: (context, child) {
          return Scaffold(
            backgroundColor: AppColors.bg0,
            body: Stack(
              children: [
                SafeArea(bottom: false, child: child),
                // Global offline banner — sits above all content at screen top.
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: SafeArea(
                    child: OfflineBanner(
                      onTap: () => context.read<RobotConnectionBloc>().add(
                            const RobotConnectionEvent.connect(),
                          ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
