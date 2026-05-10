import 'package:auto_route/auto_route.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: GestureDetector(
              onTap: () => AutoTabsRouter.of(context).setActiveIndex(1),
              child: Container(
                height: 56,
                decoration: BoxDecoration(
                  color: const Color(0xFF4C5DF4),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.settings_input_component, color: Colors.white, size: 20),
                    const SizedBox(width: 8),
                    Text(
                      'Remote control',
                      style: AppTypography.body.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            flex: 1,
            child: Container(
              height: 56,
              decoration: BoxDecoration(
                color: const Color(0xFFE0E0E0),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Icon(Icons.mic_none, color: Colors.black, size: 24),
            ),
          ),
        ],
      ),
    );
  }
}
