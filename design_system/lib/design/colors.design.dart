import 'package:flutter/material.dart';

abstract class AppColors {
  // Backgrounds — warm graphite
  static const bg0 = Color(0xFF0E0E0E);
  static const bg1 = Color(0xFF131313);
  static const bg2 = Color(0xFF191919);
  static const bg3 = Color(0xFF262626);

  // Legacy aliases used by existing widgets
  static const graphite = bg0;
  static const graphiteElev = bg1;
  static const surface = Color(0x0DFFFFFF); // rgba(255,255,255,0.05)
  static const surface2 = Color(0x14FFFFFF); // rgba(255,255,255,0.08)
  static const border = Color(0x14FFFFFF); // hairline
  static const hairline = Color(0x14FFFFFF);
  static const hairlineStrong = Color(0x2EFFFFFF);

  // Foreground
  static const fg0 = Color(0xFFFFFFFF);
  static const fg1 = Color(0xC7FFFFFF); // 0.78
  static const fg2 = Color(0xFFABABAB);
  static const fg3 = Color(0x52FFFFFF); // 0.32
  static const textPrimary = fg0;
  static const textSecondary = fg2;
  static const textMuted = fg3;

  // Accent — amber/yellow (final design iteration)
  static const accent = Color(0xFFFEDE61);
  static const accent2 = Color(0xFFEFD055);
  static const accentDeep = Color(0xFF715D00);
  static const onAccent = Color(0xFF4A3C00);
  static const accentDim = Color(0x2EFEDE61); // 0.18
  static const accentGlow = Color(0x73FEDE61); // 0.45
  // Legacy alias
  static const accentAlt = Color(0xFFEFD055);

  // Semantic
  static const success = Color(0xFF4ADE80);
  static const warning = Color(0xFFFEDE61);
  static const critical = Color(0xFFFF7351);
  static const criticalDeep = Color(0xFFB92902);

  // Light mode
  static const lightBg0 = Color(0xFFF6F4EE);
  static const lightBg1 = Color(0xFFFFFFFF);
  static const lightAccent = Color(0xFFB88A00);
  static const lightOnAccent = Colors.white;
  static const lightFg0 = Color(0xFF131313);
  static const lightFg1 = Color(0xFF262626);
  static const lightFg2 = Color(0xFF525252);
  static const lightFg3 = Color(0xFF8A8A8A);
  static const lightSurface = Color(0x0D000000);
  static const lightSurface2 = Color(0x14000000);
  static const lightHairline = Color(0x14000000);
  static const lightHairlineStrong = Color(0x2E000000);

  // Gradient — only used for CTA or badge moments
  static const auroraGradient = LinearGradient(
    colors: [accent, accent2],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
