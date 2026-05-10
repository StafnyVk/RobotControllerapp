import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:robot_service/application/robot_telemetry_bloc/robot_telemetry_bloc.dart';

class BatteryIndicator extends StatelessWidget {
  const BatteryIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RobotTelemetryBloc, RobotTelemetryState>(
      builder: (context, state) {
        final battery = state.maybeWhen(
          live: (s) => s.battery,
          stale: (s, _) => s.battery,
          orElse: () => 0.0,
        );

        final color = battery > 20 ? AppColors.accent : AppColors.warning;

        return Container(
          padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
          decoration: BoxDecoration(
            color: color.withValues(alpha: 0.1),
            borderRadius: AppRadii.pill,
            border: Border.all(color: color.withValues(alpha: 0.2)),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                alignment: Alignment.centerLeft,
                children: [
                  // Battery Shell
                  Container(
                    width: 22.w,
                    height: 11.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3.r),
                      border: Border.all(
                        color: color.withValues(alpha: 0.5),
                        width: 1.2,
                      ),
                    ),
                  ),
                  // Battery Level
                  Padding(
                    padding: EdgeInsets.all(2.r),
                    child: Container(
                      width: (18.w * (battery / 100)).clamp(2.0, 18.w),
                      height: 7.h,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(1.r),
                      ),
                    ),
                  ),
                  // Battery Tip
                  Positioned(
                    right: -2,
                    child: Container(
                      width: 2.w,
                      height: 4.h,
                      decoration: BoxDecoration(
                        color: color.withValues(alpha: 0.5),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(1.r),
                          bottomRight: Radius.circular(1.r),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 6.w),
              Text(
                '${battery.toStringAsFixed(0)}%',
                style: AppTypography.label.copyWith(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
