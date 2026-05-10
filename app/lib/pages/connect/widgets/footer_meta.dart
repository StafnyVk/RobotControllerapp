import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class FooterMeta extends StatelessWidget {
  const FooterMeta({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        for (final t in ['SSL · mTLS', 'TELEMETRY v7', 'LAT 48.8 N'])
          Text(
            t,
            style: AppTypography.label.copyWith(color: AppColors.fg3),
          ),
      ],
    );
  }
}
