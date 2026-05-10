import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class RobotPortrait extends StatelessWidget {
  const RobotPortrait({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final portraitHeight = MediaQuery.of(context).size.height * 0.55;

    return Stack(
      children: [
        // U-shaped container
        Container(
          width: screenWidth,
          height: portraitHeight,
          decoration: BoxDecoration(
            color: AppColors.bg0, // Match background
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(160),
              bottomRight: Radius.circular(160),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.5),
                blurRadius: 40,
                offset: const Offset(0, 20),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
            child: ShaderMask(
              shaderCallback: (rect) {
                return const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.black, Colors.transparent],
                  stops: [0.7, 1.0],
                ).createShader(rect);
              },
              blendMode: BlendMode.dstIn,
              child: Image.asset(
                'assets/icon/ameca_icon.webp',
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
