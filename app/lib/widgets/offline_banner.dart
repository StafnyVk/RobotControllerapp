import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:robot_service/application/robot_connection_bloc/robot_connection_bloc.dart';
import 'package:robot_service/di/di.dart';
import 'package:robot_service/infrastructure/offline_command_queue.dart';

/// Two-state tail-light strip at the very top of the home shell:
///   RED    → disconnected / reconnecting (commands are being queued)
///   YELLOW → connected but queue non-empty (flushing queued commands)
///   hidden → connected + queue empty (all good)
class OfflineBanner extends StatefulWidget {
  const OfflineBanner({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  State<OfflineBanner> createState() => _OfflineBannerState();
}

class _OfflineBannerState extends State<OfflineBanner>
    with SingleTickerProviderStateMixin {
  late final AnimationController _sweep;

  @override
  void initState() {
    super.initState();
    _sweep = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
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
            final String label;
            if (isOffline) {
              color = AppColors.critical;
              label = 'OFFLINE · $queueCount QUEUED';
            } else if (isFlushing) {
              color = AppColors.warning;
              label = 'SYNCING · $queueCount REMAINING';
            } else {
              color = null;
              label = '';
            }

            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: color == null
                  ? const SizedBox.shrink(key: ValueKey('hidden'))
                  : GestureDetector(
                      key: ValueKey(color),
                      onTap: widget.onTap,
                      child: _BannerStrip(
                        color: color,
                        label: label,
                        sweep: _sweep,
                      ),
                    ),
            );
          },
        );
      },
    );
  }
}

class _BannerStrip extends StatelessWidget {
  const _BannerStrip({
    required this.color,
    required this.label,
    required this.sweep,
  });

  final Color color;
  final String label;
  final Animation<double> sweep;

  @override
  Widget build(BuildContext context) {
    final screenW = MediaQuery.sizeOf(context).width;
    final beamW = screenW * 0.3;

    return SizedBox(
      height: 28,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Dim track
          Positioned(
            top: 2,
            left: 0,
            right: 0,
            child: Container(
              height: 2,
              color: color.withValues(alpha: 0.12),
            ),
          ),
          // Sweeping glow beam
          Positioned(
            top: 2,
            left: 0,
            right: 0,
            child: AnimatedBuilder(
              animation: sweep,
              builder: (_, __) {
                final t = sweep.value < 0.5
                    ? sweep.value * 2
                    : (1 - sweep.value) * 2;
                return Transform.translate(
                  offset: Offset(-beamW + t * (screenW + beamW), 0),
                  child: Container(
                    width: beamW,
                    height: 2,
                    decoration: BoxDecoration(
                      color: color,
                      boxShadow: [
                        BoxShadow(color: color, blurRadius: 10),
                        BoxShadow(
                          color: color.withValues(alpha: 0.5),
                          blurRadius: 20,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          // Status pill
          Positioned(
            top: 10,
            left: 0,
            right: 0,
            child: Center(
              child: Container(
                padding: const EdgeInsets.fromLTRB(8, 3, 10, 3),
                decoration: BoxDecoration(
                  color: color.withValues(alpha: 0.12),
                  border: Border.all(color: color.withValues(alpha: 0.35)),
                  borderRadius: AppRadii.pill,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 5,
                      height: 5,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: color,
                        boxShadow: [BoxShadow(color: color, blurRadius: 6)],
                      ),
                    ),
                    const SizedBox(width: 6),
                    Text(
                      label,
                      style: AppTypography.label.copyWith(
                        color: color,
                        letterSpacing: 1.8,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
