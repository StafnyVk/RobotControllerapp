import 'package:auto_route/auto_route.dart';
import 'package:robot_controller_app/routing/app_router.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../widgets/battery_indicator.dart';
import '../../../widgets/glass_box.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'AMECA·04',
                style: AppTypography.headline.copyWith(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColors.fg0,
                ),
              ),
              SizedBox(height: 4.h),
              Row(
                children: [
                  const BatteryIndicator(),
                  SizedBox(width: 12.w),
                ],
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.power_settings_new,
                    color: AppColors.fg1, size: 26.r),
              ),
              IconButton(
                onPressed: () => context.pushRoute(const SettingsRoute()),
                icon: RotatedBox(
                  quarterTurns: 1,
                  child: Image.asset(
                    'assets/icon/settings_nut.png',
                    color: Colors.white,
                    width: 20.r,
                    height: 20.r,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _StatusChip extends StatelessWidget {
  const _StatusChip({required this.label, required this.icon});
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
      decoration: BoxDecoration(
        color: AppColors.bg1,
        borderRadius: AppRadii.pill,
        border: Border.all(color: AppColors.fg2.withValues(alpha: 0.1)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 10.r, color: AppColors.fg2),
          SizedBox(width: 4.w),
          Text(
            label,
            style: AppTypography.label.copyWith(
              fontSize: 8.sp,
              color: AppColors.fg2,
              letterSpacing: 0.5,
            ),
          ),
        ],
      ),
    );
  }
}

class DeviceDeadSheet extends StatelessWidget {
  const DeviceDeadSheet({super.key, required this.onOk});
  final VoidCallback onOk;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.bg0,
        borderRadius: BorderRadius.vertical(top: Radius.circular(32.r)),
        border: Border.all(color: AppColors.fg2.withValues(alpha: 0.1)),
      ),
      padding: EdgeInsets.fromLTRB(
          24.w, 12.h, 24.w, 24.h + MediaQuery.of(context).padding.bottom),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              width: 40.w,
              height: 4.h,
              decoration: BoxDecoration(
                color: AppColors.fg2.withValues(alpha: 0.2),
                borderRadius: AppRadii.pill,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 180.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: AppRadii.card,
                  image: const DecorationImage(
                    image: AssetImage('assets/icon/ameca_icon.webp'),
                    fit: BoxFit.cover,
                    opacity: 0.4,
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.bg1,
                      AppColors.bg0,
                    ],
                  ),
                ),
              ),
              GlassBox(
                borderRadius: AppRadii.card,
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
                child: Text(
                  'ROBOT OFFLINE',
                  style: AppTypography.headline.copyWith(
                    fontSize: 22.sp,
                    color: AppColors.warning,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 24.h),
          Text(
            'Please check if Ameca is in a discoverable state:',
            style: AppTypography.title
                .copyWith(fontSize: 18.sp, color: AppColors.fg0),
          ),
          SizedBox(height: 20.h),
          const _HelpStep(
            number: '1',
            text:
                'Ameca has shut down due to battery exhaustion. Stop the simulator script in your terminal (Ctrl + C).',
          ),
          const _HelpStep(
            number: '2',
            text:
                'Restart the simulator with: ./scripts/run_simulator.sh to wake it and refresh telemetry.',
          ),
          const _HelpStep(
            number: '3',
            text:
                'Wait 10 seconds for the network module to initialize before attempting to reconnect.',
          ),
          SizedBox(height: 32.h),
          Row(
            children: [
              Expanded(
                child: FilledButton(
                  style: FilledButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16.h),
                    backgroundColor: AppColors.warning,
                    shape: RoundedRectangleBorder(borderRadius: AppRadii.card),
                  ),
                  onPressed: onOk,
                  child: Text('OK — BACK TO CONNECT',
                      style: AppTypography.label.copyWith(
                          fontSize: 14.sp,
                          color: AppColors.onAccent,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _HelpStep extends StatelessWidget {
  const _HelpStep({required this.number, required this.text});
  final String number;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 24.w,
            height: 24.w,
            decoration: const BoxDecoration(
              color: AppColors.warning,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                number,
                style: AppTypography.label.copyWith(
                  color: AppColors.onAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 10.sp,
                ),
              ),
            ),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: Text(
              text,
              style: AppTypography.body.copyWith(
                color: AppColors.fg1,
                fontSize: 14.sp,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
