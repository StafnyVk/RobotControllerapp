import 'dart:ui';

import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

// ── Gradient-stroke border shape ──────────────────────────────────────────────
// Flutter's BoxDecoration disallows borderRadius + non-uniform border colors,
// so we draw the border ourselves via a ShapeBorder with a gradient shader.
class _GlassBorder extends ShapeBorder {
  const _GlassBorder({
    required this.borderRadius,
    required this.topColor,
    required this.bottomColor,
  });

  final BorderRadius borderRadius;
  final Color topColor;
  final Color bottomColor;

  @override
  EdgeInsetsGeometry get dimensions => const EdgeInsets.all(1);

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) =>
      Path()..addRRect(borderRadius.toRRect(rect.deflate(1)));

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) =>
      Path()..addRRect(borderRadius.toRRect(rect));

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    final rrect = borderRadius.toRRect(rect.deflate(0.5));
    final shader = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [topColor, bottomColor],
    ).createShader(rect);
    canvas.drawRRect(
      rrect,
      Paint()
        ..shader = shader
        ..style = PaintingStyle.stroke
        ..strokeWidth = 1,
    );
  }

  @override
  ShapeBorder scale(double t) => this;
}

// ── Public decoration helper ───────────────────────────────────────────────────
/// Returns a [ShapeDecoration] with a gradient top→bottom border, subtle
/// frosted fill, and a deep drop shadow — the liquid-glass visual pattern.
ShapeDecoration liquidGlassDecoration({
  BorderRadius? borderRadius,
  bool active = false,
  Color? activeAccent,
}) {
  final radius = borderRadius ?? AppRadii.card;
  final accent = activeAccent ?? AppColors.accent;
  return ShapeDecoration(
    color: active ? accent.withValues(alpha: 0.14) : const Color(0x0EFFFFFF),
    shape: _GlassBorder(
      borderRadius: radius,
      topColor: active ? accent.withValues(alpha: 0.55) : const Color(0x4DFFFFFF),
      bottomColor: active ? accent.withValues(alpha: 0.04) : const Color(0x08FFFFFF),
    ),
    shadows: active
        ? [BoxShadow(color: accent.withValues(alpha: 0.4), blurRadius: 24, spreadRadius: -2)]
        : const [BoxShadow(color: Color(0x80000000), blurRadius: 30, offset: Offset(0, 4))],
  );
}

// ── GlassBox widget ────────────────────────────────────────────────────────────
/// Frosted-glass container with BackdropFilter blur. Prefer for static cards;
/// avoid wrapping AnimatedContainer (animated decoration + blur can conflict).
class GlassBox extends StatelessWidget {
  const GlassBox({
    super.key,
    required this.child,
    this.borderRadius,
    this.padding,
    this.blur = 20.0,
  });

  final Widget child;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? padding;
  final double blur;

  @override
  Widget build(BuildContext context) {
    final radius = borderRadius ?? AppRadii.card;
    return ClipRRect(
      borderRadius: radius,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
        child: DecoratedBox(
          decoration: liquidGlassDecoration(borderRadius: radius),
          child: Padding(
            padding: padding ?? EdgeInsets.zero,
            child: child,
          ),
        ),
      ),
    );
  }
}
