import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../../widgets/glass_box.dart';

class UrlField extends StatelessWidget {
  const UrlField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: liquidGlassDecoration(borderRadius: AppRadii.card),
      child: Row(
        children: [
          const Icon(Icons.cable_rounded, size: 16, color: AppColors.accent),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              controller: controller,
              readOnly: true,
              enableInteractiveSelection: false,
              style: AppTypography.metricSmall.copyWith(
                fontSize: 14,
                color: AppColors.fg0,
              ),
              decoration: const InputDecoration.collapsed(hintText: ''),
            ),
          ),
          const SizedBox(width: 12),
          Text(
            'LOCKED',
            style: AppTypography.label.copyWith(color: AppColors.success),
          ),
        ],
      ),
    );
  }
}
