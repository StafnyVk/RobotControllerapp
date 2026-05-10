import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenHeader extends StatelessWidget {
  const ScreenHeader({
    required this.title,
    this.onBack,
    super.key,
  });

  final String title;
  final VoidCallback? onBack;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 24, top: 30),
      child: Row(
        children: [
          if (onBack != null) ...[
            IconButton(
              onPressed: onBack,
              icon:  Icon(Icons.arrow_back_outlined, color: AppColors.fg0, size: 30.sp),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
            ),
            const SizedBox(width: 12),
          ],
          Text(
            title,
            style: AppTypography.headline.copyWith(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: AppColors.fg0,
            ),
          ),
        ],
      ),
    );
  }
}
