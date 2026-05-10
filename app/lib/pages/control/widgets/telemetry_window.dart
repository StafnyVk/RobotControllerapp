import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:robot_service/domain/model/robot_status.dart';
import 'package:robot_service/domain/model/robot_command.dart';
import '../../../widgets/glass_box.dart';

class TelemetryWindow extends StatelessWidget {
  const TelemetryWindow({super.key, required this.status});
  final RobotStatus status;

  @override
  Widget build(BuildContext context) {
    return GlassBox(
      borderRadius: AppRadii.card,
      padding: const EdgeInsets.all(18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.sensors_rounded, color: AppColors.accent, size: 18),
              const SizedBox(width: 8),
              Text(
                'LIVE TELEMETRY STREAM',
                style: AppTypography.label.copyWith(
                  letterSpacing: 2,
                  color: AppColors.fg1,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              _PulseIndicator(active: status.connected),
            ],
          ),
          const SizedBox(height: 20),
          _TelemetryRow(
            label: 'MOTOR STATUS',
            value: status.moving ? 'ACTIVE' : 'IDLE',
            active: status.moving,
          ),
          _TelemetryRow(
            label: 'VECTOR',
            value: status.direction?.toString().split('.').last.toUpperCase() ?? 'NONE',
          ),
          _TelemetryRow(label: 'SIGNAL', value: '${status.signalStrength}%'),
          _TelemetryRow(label: 'REFRESH', value: '120Hz'),
          const SizedBox(height: 10),
          const Divider(color: Colors.white10, height: 1),
          const SizedBox(height: 10),
          Text(
            'LAST FRAME: ${status.lastUpdated.toIso8601String().split('T').last.substring(0, 8)}',
            style: AppTypography.label.copyWith(fontSize: 10, color: AppColors.fg3),
          ),
        ],
      ),
    );
  }
}

class _TelemetryRow extends StatelessWidget {
  const _TelemetryRow({
    required this.label,
    required this.value,
    this.active = false,
  });

  final String label;
  final String value;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: AppTypography.label.copyWith(fontSize: 11, color: AppColors.fg3)),
          Text(
            value,
            style: AppTypography.metric.copyWith(
              fontSize: 14,
              color: active ? AppColors.accent : AppColors.fg0,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}

class _PulseIndicator extends StatelessWidget {
  const _PulseIndicator({required this.active});
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: active ? AppColors.accent : AppColors.critical,
        boxShadow: active
            ? [BoxShadow(color: AppColors.accent.withValues(alpha: 0.5), blurRadius: 6, spreadRadius: 2)]
            : [],
      ),
    );
  }
}
