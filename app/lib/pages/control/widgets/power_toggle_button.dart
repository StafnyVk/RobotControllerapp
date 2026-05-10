import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PowerToggleButton extends StatelessWidget {
  const PowerToggleButton({
    super.key,
    required this.connected,
    required this.onPressed,
  });

  final bool connected;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        Icons.power_settings_new_rounded,
        color: Colors.white,
        size: 30.sp,
      ),
    );
  }
}
