import 'dart:math' as math;

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:robot_service/application/robot_telemetry_bloc/robot_telemetry_bloc.dart';

class BatteryRing extends StatelessWidget {
  const BatteryRing({super.key, this.size = 196, this.showPct = true});
  final double size;
  final bool showPct;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RobotTelemetryBloc, RobotTelemetryState>(
      builder: (context, state) {
        final pct = state.maybeWhen(
          live: (s) => s.battery,
          stale: (s, _) => s.battery,
          orElse: () => 0.0,
        );
        final isOnline = state.maybeWhen(live: (_) => true, orElse: () => false);
        return _BatteryRingPainter(
          pct: pct,
          size: size,
          showPct: showPct,
          isOnline: isOnline,
        );
      },
    );
  }
}

class BatteryRingRaw extends StatelessWidget {
  const BatteryRingRaw({
    super.key,
    required this.pct,
    this.size = 196,
    this.showPct = true,
    this.isOnline = true,
  });
  final double pct;
  final double size;
  final bool showPct;
  final bool isOnline;

  @override
  Widget build(BuildContext context) =>
      _BatteryRingPainter(pct: pct, size: size, showPct: showPct, isOnline: isOnline);
}

class _BatteryRingPainter extends StatefulWidget {
  const _BatteryRingPainter({
    required this.pct,
    required this.size,
    required this.showPct,
    required this.isOnline,
  });
  final double pct;
  final double size;
  final bool showPct;
  final bool isOnline;

  @override
  State<_BatteryRingPainter> createState() => _BatteryRingPainterState();
}

class _BatteryRingPainterState extends State<_BatteryRingPainter>
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

  Color get _ringColor {
    if (widget.pct < 20) return AppColors.critical;
    if (widget.pct < 40) return AppColors.warning;
    return AppColors.accent;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Breathing halo
          if (widget.isOnline)
            AnimatedBuilder(
              animation: _breathe,
              builder: (_, __) => Opacity(
                opacity: 0.55 + _breathe.value * 0.45,
                child: Container(
                  margin: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: AppColors.accentDim,
                      width: 1,
                    ),
                  ),
                ),
              ),
            ),
          // Ring
          CustomPaint(
            size: Size(widget.size, widget.size),
            painter: _RingCustomPainter(pct: widget.pct, color: _ringColor),
          ),
          // Centre text
          if (widget.showPct)
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: widget.pct.round().toString(),
                        style: AppTypography.metric.copyWith(
                          fontSize: widget.size * 0.28,
                          letterSpacing: -0.04 * widget.size * 0.28,
                        ),
                      ),
                      TextSpan(
                        text: '%',
                        style: AppTypography.metric.copyWith(
                          fontSize: widget.size * 0.13,
                          color: AppColors.fg2,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  'POWER · CELL 04',
                  style: AppTypography.label.copyWith(
                    fontSize: 10,
                    letterSpacing: 1.8,
                    color: AppColors.fg2,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}

class _RingCustomPainter extends CustomPainter {
  const _RingCustomPainter({required this.pct, required this.color});
  final double pct;
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final cx = size.width / 2;
    final cy = size.height / 2;
    const strokeW = 6.0;
    final r = (size.width - strokeW) / 2 - 14;
    final rect = Rect.fromCircle(center: Offset(cx, cy), radius: r);

    // Outer hairline
    canvas.drawCircle(
      Offset(cx, cy),
      r + 10,
      Paint()
        ..color = AppColors.hairline
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1,
    );

    // Tick marks (60 ticks)
    for (int i = 0; i < 60; i++) {
      final angle = (i / 60) * 2 * math.pi - math.pi / 2;
      final active = (i / 60) * 100 <= pct;
      final r1 = r + 6;
      final r2 = r + 9;
      canvas.drawLine(
        Offset(cx + math.cos(angle) * r1, cy + math.sin(angle) * r1),
        Offset(cx + math.cos(angle) * r2, cy + math.sin(angle) * r2),
        Paint()
          ..color = active ? color.withValues(alpha: 0.9) : AppColors.hairlineStrong.withValues(alpha: 0.4)
          ..strokeWidth = 1
          ..strokeCap = StrokeCap.round,
      );
    }

    // Track (drained)
    canvas.drawArc(
      rect,
      -math.pi / 2,
      2 * math.pi,
      false,
      Paint()
        ..color = AppColors.hairlineStrong
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeW,
    );

    // Filled arc with glow
    if (pct > 0) {
      final sweepAngle = (pct / 100) * 2 * math.pi;
      canvas.drawArc(
        rect,
        -math.pi / 2,
        sweepAngle,
        false,
        Paint()
          ..color = color
          ..style = PaintingStyle.stroke
          ..strokeWidth = strokeW
          ..strokeCap = StrokeCap.round
          ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 2.5),
      );
      canvas.drawArc(
        rect,
        -math.pi / 2,
        sweepAngle,
        false,
        Paint()
          ..color = color
          ..style = PaintingStyle.stroke
          ..strokeWidth = strokeW
          ..strokeCap = StrokeCap.round,
      );
    }
  }

  @override
  bool shouldRepaint(covariant _RingCustomPainter old) =>
      old.pct != pct || old.color != color;
}
