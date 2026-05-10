import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HomeBottomNav extends StatelessWidget {
  const HomeBottomNav({super.key, required this.selectedTab, required this.onTabChanged});

  final int selectedTab;
  final ValueChanged<int> onTabChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _NavItem(
            icon: Icons.dashboard_outlined,
            label: 'Dashboard',
            isActive: selectedTab == 0,
            onTap: () => onTabChanged(0),
          ),
          _NavItem(
            icon: Icons.control_camera_outlined,
            label: 'Control',
            isActive: selectedTab == 1,
            onTap: () => onTabChanged(1),
          ),
          _NavItem(
            icon: Icons.settings_outlined,
            label: 'Settings',
            isActive: selectedTab == 2,
            onTap: () => onTabChanged(2),
          ),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.icon,
    required this.label,
    required this.isActive,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isActive ? AppColors.fg0 : AppColors.fg2,
            size: 24,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: AppTypography.label.copyWith(
              fontSize: 10,
              color: isActive ? AppColors.fg1 : AppColors.fg2,
            ),
          ),
        ],
      ),
    );
  }
}
