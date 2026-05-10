import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:robot_service/application/robot_connection_bloc/robot_connection_bloc.dart';
import 'package:robot_service/di/di.dart';
import 'package:robot_service/infrastructure/offline_command_queue.dart';

class ControlTailLight extends StatefulWidget {
  const ControlTailLight({super.key});

  @override
  State<ControlTailLight> createState() => _ControlTailLightState();
}

class _ControlTailLightState extends State<ControlTailLight>
    with SingleTickerProviderStateMixin {
  late final AnimationController _sweep;

  @override
  void initState() {
    super.initState();
    _sweep = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1800),
    )..repeat();
  }

  @override
  void dispose() {
    _sweep.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RobotConnectionBloc, RobotConnectionState>(
      builder: (context, connState) {
        return StreamBuilder<List<dynamic>>(
          stream: getIt<OfflineCommandQueue>().stream,
          initialData: getIt<OfflineCommandQueue>().snapshot(),
          builder: (context, queueSnap) {
            final isOffline = connState.maybeWhen(
              disconnected: () => true,
              failed: (_) => true,
              reconnecting: (_) => true,
              orElse: () => false,
            );
            final queueCount = queueSnap.data?.length ?? 0;
            final isFlushing = !isOffline && queueCount > 0;

            final Color? color;
            if (isOffline) {
              color = AppColors.critical;
            } else if (isFlushing) {
              color = AppColors.warning;
            } else {
              color = null;
            }

            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: color == null
                  ? const SizedBox.shrink(key: ValueKey('hidden'))
                  : TailLightStrip(
                      key: ValueKey(color),
                      color: color,
                      sweep: _sweep,
                    ),
            );
          },
        );
      },
    );
  }
}

class TailLightStrip extends StatelessWidget {
  const TailLightStrip({
    super.key,
    required this.color,
    required this.sweep,
  });

  final Color color;
  final Animation<double> sweep;

  @override
  Widget build(BuildContext context) {
    final screenW = MediaQuery.sizeOf(context).width;
    final beamW = screenW * 0.35;

    return SizedBox(
      height: 2,
      width: double.infinity,
      child: AnimatedBuilder(
        animation: sweep,
        builder: (_, __) {
          final t = sweep.value < 0.5 ? sweep.value * 2 : (1 - sweep.value) * 2;
          return Stack(
            clipBehavior: Clip.hardEdge,
            children: [
              // Dim track
              Container(
                height: 2,
                color: color.withValues(alpha: 0.15),
              ),
              // Sweeping glow beam
              Transform.translate(
                offset: Offset(-beamW + t * (screenW + beamW), 0),
                child: Container(
                  width: beamW,
                  height: 2,
                  decoration: BoxDecoration(
                    color: color,
                    boxShadow: [
                      BoxShadow(color: color, blurRadius: 8),
                      BoxShadow(
                        color: color.withValues(alpha: 0.4),
                        blurRadius: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
