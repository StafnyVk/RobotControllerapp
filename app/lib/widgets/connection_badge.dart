import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:robot_service/application/robot_connection_bloc/robot_connection_bloc.dart';

class ConnectionBadge extends StatefulWidget {
  const ConnectionBadge({super.key, this.latency = 0});
  final int latency;

  @override
  State<ConnectionBadge> createState() => _ConnectionBadgeState();
}

class _ConnectionBadgeState extends State<ConnectionBadge>
    with SingleTickerProviderStateMixin {
  late final AnimationController _breathe;

  @override
  void initState() {
    super.initState();
    _breathe = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2500),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _breathe.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RobotConnectionBloc, RobotConnectionState>(
      builder: (context, state) {
        final (label, color, pulse) = state.when(
          initial: () => ('IDLE', AppColors.fg2, false),
          connecting: () => ('LINKING', AppColors.accent, true),
          connected: () => ('LIVE', AppColors.success, true),
          disconnecting: () => ('LEAVING', AppColors.warning, false),
          disconnected: () => ('LOST', AppColors.critical, false),
          reconnecting: (_) => ('RETRY', AppColors.accent, true),
          failed: (_) => ('ERR', AppColors.critical, false),
        );

        return Container(
          padding: const EdgeInsets.fromLTRB(8, 5, 10, 5),
          decoration: BoxDecoration(
            color: AppColors.surface2,
            border: Border.all(color: AppColors.hairline),
            borderRadius: AppRadii.pill,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedBuilder(
                animation: _breathe,
                builder: (_, __) => Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: color,
                    boxShadow: [BoxShadow(color: color, blurRadius: 8)],
                  ),
                  foregroundDecoration: pulse
                      ? BoxDecoration(
                          shape: BoxShape.circle,
                          color: color.withValues(
                            alpha: (0.55 + _breathe.value * 0.45) - 1,
                          ),
                        )
                      : null,
                ),
              ),
              const SizedBox(width: 6),
              Text(
                label,
                style: AppTypography.label.copyWith(
                  color: AppColors.fg1,
                  letterSpacing: 1.4,
                ),
              ),
              if (label == 'LIVE' && widget.latency > 0) ...[
                const SizedBox(width: 4),
                Text('·', style: AppTypography.label.copyWith(color: AppColors.fg3)),
                const SizedBox(width: 4),
                Text(
                  '${widget.latency}ms',
                  style: AppTypography.label.copyWith(
                    color: AppColors.fg1,
                    letterSpacing: 0,
                  ),
                ),
              ],
            ],
          ),
        );
      },
    );
  }
}
