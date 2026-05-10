import 'package:auto_route/auto_route.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:robot_service/application/robot_command_bloc/robot_command_bloc.dart';
import 'package:robot_service/application/robot_telemetry_bloc/robot_telemetry_bloc.dart';
import 'package:robot_service/application/robot_connection_bloc/robot_connection_bloc.dart';
import 'package:robot_service/domain/model/robot_status.dart';
import 'package:robot_service/domain/model/robot_command.dart';

import '../home/widgets/screen_header.dart';
import '../../widgets/battery_indicator.dart';
import 'widgets/control_tail_light.dart';
import 'widgets/power_toggle_button.dart';
import 'widgets/telemetry_window.dart';
import 'widgets/unified_controller.dart';

@RoutePage()
class ControlScreen extends StatefulWidget {
  const ControlScreen({super.key});

  @override
  State<ControlScreen> createState() => _ControlScreenState();
}

class _ControlScreenState extends State<ControlScreen> {
  double _speed = 62;
  String? _heldDir;
  bool _stopHot = false;

  void _sendMove(MoveDirection dir) {
    HapticFeedback.lightImpact();
    context.read<RobotCommandBloc>().add(RobotCommandEvent.moveRequested(dir, speed: _speed.toInt()));
    setState(() => _heldDir = dir.toString());
  }

  void _sendStop() {
    HapticFeedback.heavyImpact();
    context.read<RobotCommandBloc>().add(const RobotCommandEvent.stopRequested());
    setState(() {
      _stopHot = true;
      _heldDir = null;
    });
    Future.delayed(const Duration(milliseconds: 500), () {
      if (mounted) setState(() => _stopHot = false);
    });
  }

  void _release() => setState(() => _heldDir = null);

  void _togglePower(bool connected) {
    HapticFeedback.mediumImpact();
    if (connected) {
      context.read<RobotConnectionBloc>().add(const RobotConnectionEvent.disconnect());
    } else {
      context.read<RobotConnectionBloc>().add(const RobotConnectionEvent.connect());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RobotTelemetryBloc, RobotTelemetryState>(
      builder: (context, telState) {
        final status = telState.maybeWhen(
          live: (s) => s,
          stale: (s, _) => s,
          orElse: () => RobotStatus.initial(),
        );

        return Column(
          children: [
            const ControlTailLight(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Header with Back Button and Battery/Power
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ScreenHeader(
                            title: 'Control',
                            onBack: () => AutoTabsRouter.of(context).setActiveIndex(0),
                          ),
                        ),
                        const BatteryIndicator(),
                        const SizedBox(width: 10),
                        PowerToggleButton(
                          connected: status.connected,
                          onPressed: () => _togglePower(status.connected),
                        ),
                      ],
                    ),

                    // Live Telemetry Window
                    TelemetryWindow(status: status),
                    const Spacer(),

                    // Unified Controller (Joystick + D-pad)
                    Center(
                      child: UnifiedController(
                        heldDir: _heldDir,
                        onPress: _sendMove,
                        onRelease: _release,
                        onJoystickMove: _sendMove,
                        onStop: _sendStop,
                        stopHot: _stopHot,
                      ),
                    ),
                    const Spacer(flex: 2),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
