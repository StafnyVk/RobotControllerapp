import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.design.dart';
import 'radii.design.dart';
import 'typography.design.dart';

abstract class AppTheme {
  static ThemeData get dark {
    final base = ThemeData.dark(useMaterial3: true);
    return base.copyWith(
      scaffoldBackgroundColor: AppColors.bg0,
      colorScheme: base.colorScheme.copyWith(
        surface: AppColors.bg1,
        primary: AppColors.accent,
        secondary: AppColors.accent2,
        onPrimary: AppColors.onAccent,
        error: AppColors.critical,
      ),
      textTheme: GoogleFonts.poppinsTextTheme(base.textTheme).copyWith(
        displayLarge: AppTypography.displayLg,
        headlineMedium: AppTypography.headline,
        titleMedium: AppTypography.title,
        bodyMedium: AppTypography.body,
        labelSmall: AppTypography.caption,
        labelMedium: AppTypography.metricSmall,
      ),
      cardTheme: const CardThemeData(
        color: AppColors.bg1,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: AppRadii.card),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.surface,
        border: OutlineInputBorder(
          borderRadius: AppRadii.card,
          borderSide: BorderSide(color: AppColors.hairlineStrong),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: AppRadii.card,
          borderSide: BorderSide(color: AppColors.hairlineStrong),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: AppRadii.card,
          borderSide: BorderSide(color: AppColors.accent, width: 1.5),
        ),
        labelStyle: AppTypography.metricSmall,
        hintStyle: AppTypography.body.copyWith(color: AppColors.fg3),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: AppColors.accent,
          foregroundColor: AppColors.onAccent,
          shape: const RoundedRectangleBorder(borderRadius: AppRadii.pill),
          textStyle: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.18 * 14,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          minimumSize: const Size(double.infinity, 56),
        ),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected) ? AppColors.onAccent : Colors.white,
        ),
        trackColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected) ? AppColors.accent : AppColors.surface2,
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.bg0,
        elevation: 0,
        scrolledUnderElevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        titleTextStyle: AppTypography.title,
        iconTheme: const IconThemeData(color: AppColors.fg1),
      ),
    );
  }

  static ThemeData get light {
    final base = ThemeData.light(useMaterial3: true);
    return base.copyWith(
      scaffoldBackgroundColor: AppColors.lightBg0,
      colorScheme: base.colorScheme.copyWith(
        surface: AppColors.lightBg1,
        primary: AppColors.lightAccent,
        secondary: AppColors.accent2,
        onPrimary: AppColors.lightOnAccent,
        error: AppColors.critical,
      ),
      textTheme: GoogleFonts.poppinsTextTheme(base.textTheme).copyWith(
        displayLarge: AppTypography.displayLg.copyWith(color: AppColors.lightFg0),
        headlineMedium: AppTypography.headline.copyWith(color: AppColors.lightFg0),
        titleMedium: AppTypography.title.copyWith(color: AppColors.lightFg0),
        bodyMedium: AppTypography.body.copyWith(color: AppColors.lightFg0),
        labelSmall: AppTypography.caption.copyWith(color: AppColors.lightFg2),
        labelMedium: AppTypography.metricSmall.copyWith(color: AppColors.lightFg2),
      ),
      cardTheme: const CardThemeData(
        color: AppColors.lightBg1,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: AppRadii.card),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.lightSurface,
        border: OutlineInputBorder(
          borderRadius: AppRadii.card,
          borderSide: BorderSide(color: AppColors.lightHairlineStrong),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: AppRadii.card,
          borderSide: BorderSide(color: AppColors.lightHairlineStrong),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: AppRadii.card,
          borderSide: BorderSide(color: AppColors.lightAccent, width: 1.5),
        ),
        labelStyle: AppTypography.metricSmall.copyWith(color: AppColors.lightFg2),
        hintStyle: AppTypography.body.copyWith(color: AppColors.lightFg3),
      ),
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: AppColors.lightAccent,
          foregroundColor: AppColors.lightOnAccent,
          shape: const RoundedRectangleBorder(borderRadius: AppRadii.pill),
          textStyle: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.18 * 14,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          minimumSize: const Size(double.infinity, 56),
        ),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected) ? AppColors.lightOnAccent : Colors.white,
        ),
        trackColor: WidgetStateProperty.resolveWith(
          (s) => s.contains(WidgetState.selected) ? AppColors.lightAccent : AppColors.lightSurface2,
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.lightBg0,
        elevation: 0,
        scrolledUnderElevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        titleTextStyle: AppTypography.title.copyWith(color: AppColors.lightFg0),
        iconTheme: const IconThemeData(color: AppColors.lightFg1),
      ),
    );
  }
}
