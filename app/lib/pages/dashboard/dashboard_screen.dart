import 'package:robot_controller_app/pages/connect/widgets/robot_portrait.dart';
import 'package:auto_route/auto_route.dart';
import 'package:design_system/design/typography.design.dart';
import 'package:flutter/material.dart';
import '../home/widgets/home_header.dart';
import '../home/widgets/action_buttons.dart';
import '../home/widgets/program_card.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
  
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Robot Image Hero Area with Header overlay and fade
              const Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(height: 40,),
                  const RobotPortrait(),
                  // Header with fade gradient overlay
                 
                  const ActionButtons(),
                ],
              ),

              const SizedBox(height: 48),

              Padding(
                padding:  const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'DAILY PROGRAMS',
                  style: AppTypography.title.copyWith(
                    fontSize: 14,
                    letterSpacing: 2,
                    color:  const Color(0xFFA1A1A1),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Program Cards
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Expanded(
                        child: ProgramCard(
                          title: 'Neural Nexus',
                          subtitle: 'Initialize greeting sequence',
                          progress: 0.24,
                          progressLabel: '24%',
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Expanded(
                        child: ProgramCard(
                          title: 'Expression Mirror',
                          subtitle: 'Calibrate facial movements',
                          progress: 0,
                          progressLabel: '0%',
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 32),

              // Last Programs Section
            
              const SizedBox(height: 20), // Bottom padding for navigation
            ],
          ),
        
        // Fixed header overlay on top
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: ShaderMask(
            shaderCallback: (rect) {
              return LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black54, Colors.transparent],
                stops: const [0.3, .9],
              ).createShader(rect);
            },
            blendMode: BlendMode.dstIn,
            child: Container(
              color: Colors.black,
              padding: const EdgeInsets.only(bottom: 60),
              child: const HomeHeader(),
            ),
          ),
        ),
      ],
    );
  }
}
