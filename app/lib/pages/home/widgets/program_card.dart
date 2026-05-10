import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ProgramCard extends StatelessWidget {
  const ProgramCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.progress,
    required this.progressLabel,
  });

  final String title;
  final String subtitle;
  final double progress;
  final String progressLabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF1C1C1E),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Today',
                style: AppTypography.label.copyWith(color: AppColors.fg2),
              ),
              Text(
                progressLabel,
                style: AppTypography.label.copyWith(color: AppColors.fg1),
              ),
            ],
          ),
          const SizedBox(height: 8),
          LinearProgressIndicator(
            value: progress,
            backgroundColor: const Color(0xFF2C2C2E),
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.orange),
            minHeight: 3,
            borderRadius: BorderRadius.circular(2),
          ),
          const SizedBox(height: 16),
          Text(
            title,
            style: AppTypography.headline.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColors.fg0,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: AppTypography.body.copyWith(
              fontSize: 14,
              color: AppColors.fg2,
            ),
          ),
        ],
      ),
    );
  }
}
