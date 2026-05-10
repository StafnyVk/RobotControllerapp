import 'package:auto_route/auto_route.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:robot_service/application/robot_connection_bloc/robot_connection_bloc.dart';
import 'package:robot_service/di/di.dart' as rs;
import 'package:robot_service/domain/facade/robot_facade.dart';

import '../../widgets/glass_box.dart';
import 'widgets/footer_meta.dart';
import 'widgets/robot_portrait.dart';
import 'widgets/url_field.dart';

@RoutePage()
class ConnectPage extends StatefulWidget {
  const ConnectPage({super.key});
  @override
  State<ConnectPage> createState() => _ConnectPageState();
}

class _ConnectPageState extends State<ConnectPage> {
  final _urlController =
      TextEditingController(text: 'http://192.168.0.107:8080');
  bool _serverHintVisible = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _probeServer();
    });
  }

  @override
  void dispose() {
    _urlController.dispose();
    super.dispose();
  }

  Future<void> _probeServer() async {
    final result = await rs.getIt<IRobotFacade>().fetchStatus();
    result.fold(
      onSuccess: (_) {},
      onFailure: (_) => _showSimulatorHelpSheet(),
    );
  }

  void _showSimulatorHelpSheet() {
    if (!mounted || _serverHintVisible) return;
    _serverHintVisible = true;

    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      barrierColor: Colors.black.withValues(alpha: 0.75),
      builder: (context) {
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
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
                    child: Text(
                      'AMECA NOT FOUND',
                      style: AppTypography.headline.copyWith(
                        fontSize: 22.sp,
                        color: AppColors.fg0,
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
              _HelpStep(
                number: '1',
                text:
                    'Ameca cannot be discovered while it is powered off or in sleep mode. Run scripts/run_simulator.sh to wake it.',
              ),
              _HelpStep(
                number: '2',
                text:
                    'When the simulator has just started, the network module initializes. Wait 10 seconds before retrying.',
              ),
              _HelpStep(
                number: '3',
                text:
                    'Ensure your beacon (this device) is on the same network as the simulator host.',
              ),
              SizedBox(height: 32.h),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16.h),
                        backgroundColor: AppColors.bg1,
                        shape:
                            RoundedRectangleBorder(borderRadius: AppRadii.card),
                      ),
                      onPressed: () => Navigator.pop(context),
                      child: Text('CANCEL',
                          style: AppTypography.label
                              .copyWith(color: AppColors.fg1,fontSize: 14.sp)),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: FilledButton(
                      style: FilledButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16.h),
                        backgroundColor: AppColors.accent,
                        shape:
                            RoundedRectangleBorder(borderRadius: AppRadii.card),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                        context.read<RobotConnectionBloc>().add(
                              RobotConnectionEvent.connect(
                                url: _urlController.text.trim(),
                              ),
                            );
                      },
                      child: Text('RE-CONNECT',
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
      },
    ).whenComplete(() {
      if (mounted) _serverHintVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: BlocListener<RobotConnectionBloc, RobotConnectionState>(
        listener: (context, state) {
          state.whenOrNull(
            failed: (_) => _showSimulatorHelpSheet(),
          );
        },
        child: Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: Stack(
            children: [
              const RobotPortrait(),
              // Background container to force layout size if needed, but not wrapping Positioned
              const SizedBox.expand(),
              Positioned(
                left: 24.w,
                right: 24.w,
                bottom: 16.h + (MediaQuery.of(context).padding.bottom),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 24.h),
                    SizedBox(height: 24.h),
                    Text(
                      'Point your beacon\nat the unit.',
                      textAlign: TextAlign.center,
                      style: AppTypography.headline.copyWith(
                        fontSize: 24.sp,
                        color: AppColors.fg0,
                      ),
                    ),
                    SizedBox(height: 6.h),
                    Text(
                      'Establishing secure link to Ameca unit. Ensure the simulator is active for telemetry sync.',
                      textAlign: TextAlign.center,
                      style: AppTypography.body.copyWith(color: AppColors.fg2),
                    ),
                    SizedBox(height: 18.h),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 4.w, bottom: 8.h),
                        child: Text(
                          'SERVER · WEBSOCKET',
                          style: AppTypography.label,
                        ),
                      ),
                    ),
                    UrlField(controller: _urlController),
                    SizedBox(height: 10.h),
                    _ConnectButton(urlController: _urlController),
                    SizedBox(height: 10.h),
                    const FooterMeta(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _eyebrow(String text) => Text(
        text,
        textAlign: TextAlign.center,
        style: AppTypography.label.copyWith(
          color: AppColors.accent,
          letterSpacing: 2.8,
        ),
      );
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
              color: AppColors.accent,
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

class _ConnectButton extends StatelessWidget {
  const _ConnectButton({required this.urlController});
  final TextEditingController urlController;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RobotConnectionBloc, RobotConnectionState>(
      builder: (context, state) {
        final connecting = state.maybeWhen(
          connecting: () => true,
          reconnecting: (_) => true,
          orElse: () => false,
        );
        return FilledButton(
          onPressed: connecting
              ? null
              : () => context.read<RobotConnectionBloc>().add(
                    RobotConnectionEvent.connect(
                      url: urlController.text.trim(),
                    ),
                  ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (connecting) ...[
                const SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: AppColors.onAccent,
                  ),
                ),
                const SizedBox(width: 12),
              ],
              Text(
                connecting ? 'HANDSHAKE…' : 'CONNECT',
                style: AppTypography.metricSmall.copyWith(
                  fontSize: 14,
                  letterSpacing: 2.8,
                  color: AppColors.onAccent,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
