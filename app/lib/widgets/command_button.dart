import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

enum CommandTone { primary, danger }

class CommandButton extends StatelessWidget {
  const CommandButton({
    super.key,
    required this.label,
    required this.icon,
    required this.onTap,
    this.tone = CommandTone.primary,
  });

  final String label;
  final IconData icon;
  final VoidCallback onTap;
  final CommandTone tone;

  @override
  Widget build(BuildContext context) {
    final isDanger = tone == CommandTone.danger;
    return Material(
      color: isDanger ? Colors.redAccent : AppColors.surface,
      borderRadius: AppRadii.button,
      child: InkWell(
        onTap: onTap,
        borderRadius: AppRadii.button,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.md, vertical: AppSpacing.lg),
          child: Column(
            children: [
              Icon(icon,
                  size: 28, color: isDanger ? Colors.white : AppColors.accent),
              const SizedBox(height: AppSpacing.xs),
              Text(label),
            ],
          ),
        ),
      ),
    );
  }
}
