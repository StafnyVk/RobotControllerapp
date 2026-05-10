import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.design.dart';

abstract class AppTypography {
  static TextStyle get displayLg => GoogleFonts.poppins(
        fontSize: 40.sp,
        fontWeight: FontWeight.w600,
        height: 1.1,
        letterSpacing: -0.02 * 40.sp,
        color: AppColors.textPrimary,
      );

  static TextStyle get headline => GoogleFonts.poppins(
        fontSize: 28.sp,
        fontWeight: FontWeight.w500,
        letterSpacing: -0.02 * 28.sp,
        color: AppColors.textPrimary,
      );

  static TextStyle get title => GoogleFonts.poppins(
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
      );

  static TextStyle get body => GoogleFonts.poppins(
        fontSize: 15.sp,
        fontWeight: FontWeight.w400,
        height: 1.4,
        color: AppColors.textPrimary,
      );

  static TextStyle get caption => GoogleFonts.poppins(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.4.sp,
        color: AppColors.textSecondary,
      );

  static TextStyle get metric => GoogleFonts.jetBrainsMono(
        fontSize: 28.sp,
        fontWeight: FontWeight.w600,
        fontFeatures: const [FontFeature.tabularFigures()],
        color: AppColors.textPrimary,
      );

  static TextStyle get metricSmall => GoogleFonts.jetBrainsMono(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.18 * 12.sp,
        fontFeatures: const [FontFeature.tabularFigures()],
        color: AppColors.textSecondary,
      );

  static TextStyle get label => GoogleFonts.jetBrainsMono(
        fontSize: 9.sp,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.18 * 9.sp,
        color: AppColors.textSecondary,
      );
}
