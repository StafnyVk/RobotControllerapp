import 'package:auto_route/auto_route.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:robot_service/application/robot_connection_bloc/robot_connection_bloc.dart';

import '../../widgets/glass_box.dart';
import '../home/widgets/screen_header.dart';

@RoutePage()
class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _autoReconnect = true;
  bool _chaos = false;
  bool _haptics = true;
  bool _reducedMotion = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 120),
      children: [
        ScreenHeader(
          title: 'Settings',
          onBack: () => AutoTabsRouter.of(context).setActiveIndex(0),
        ),
        _SettingsGroup(
          label: 'Connection',
          children: [
            _Row(label: 'Server URL', detail: '192.168.0.107:8080', mono: true),
            _Row(
              label: 'Auto-reconnect',
              child: _Toggle(
                on: _autoReconnect,
                onChange: (v) => setState(() => _autoReconnect = v),
              ),
            ),
            _Row(label: 'Packet rate', detail: '120 Hz'),
          ],
        ),
        _SettingsGroup(
          label: 'Developer',
          children: [
            _Row(
              label: 'Chaos mode',
              sub: 'Inject fake latency spikes and packet drops.',
              child: _Toggle(
                on: _chaos,
                onChange: (v) => setState(() => _chaos = v),
                danger: true,
              ),
            ),
            _Row(
              label: 'Haptic feedback',
              child: _Toggle(
                on: _haptics,
                onChange: (v) => setState(() => _haptics = v),
              ),
            ),
            _Row(
              label: 'Reduced motion',
              child: _Toggle(
                on: _reducedMotion,
                onChange: (v) => setState(() => _reducedMotion = v),
              ),
            ),
          ],
        ),
        _SettingsGroup(
          label: 'Commands',
          children: [
            GestureDetector(
              onTap: () => _confirmClearQueue(context),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16, 14, 16, 14),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Clear queued commands',
                            style: AppTypography.body.copyWith(
                              fontSize: 14,
                              color: AppColors.critical,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 2),
                          Text(
                            '0 pending · cannot be undone.',
                            style: AppTypography.body.copyWith(fontSize: 11, color: AppColors.fg2),
                          ),
                        ],
                      ),
                    ),
                    const Icon(Icons.chevron_right_rounded, color: AppColors.fg3, size: 16),
                  ],
                ),
              ),
            ),
          ],
        ),
        _SettingsGroup(
          label: 'About',
          children: [
            _Row(label: 'App version', detail: '2.4.0 (build 1042)', mono: true),
            _Row(label: 'Firmware on unit', detail: 'AMECA·OS 11.3.1', mono: true),
            _Row(label: 'Certificate', detail: 'valid · 284d', mono: true),
          ],
        ),
        const SizedBox(height: 22),
        OutlinedButton(
          onPressed: () => context
              .read<RobotConnectionBloc>()
              .add(const RobotConnectionEvent.disconnect()),
          style: OutlinedButton.styleFrom(
            foregroundColor: AppColors.fg0,
            side: const BorderSide(color: AppColors.hairlineStrong),
            shape: const RoundedRectangleBorder(borderRadius: AppRadii.card),
            minimumSize: const Size(double.infinity, 52),
            textStyle: AppTypography.label.copyWith(fontSize: 11, letterSpacing: 2.2),
          ),
          child: const Text('DISCONNECT FROM UNIT'),
        ),
        const SizedBox(height: 16),
        Text(
          'GROUND·CTRL · © AMECA LABS · BAY B',
          textAlign: TextAlign.center,
          style: AppTypography.label.copyWith(color: AppColors.fg3, letterSpacing: 2),
        ),
      ],
    );
  }

  Future<void> _confirmClearQueue(BuildContext context) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: AppColors.bg1,
        title: Text('Clear queue?', style: AppTypography.title),
        content: Text(
          'All pending commands will be discarded.',
          style: AppTypography.body.copyWith(color: AppColors.fg2),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('CANCEL'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            style: TextButton.styleFrom(foregroundColor: AppColors.critical),
            child: const Text('CLEAR'),
          ),
        ],
      ),
    );
    if (confirm == true && context.mounted) {
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('Queue cleared')));
    }
  }
}

// ── Settings group ─────────────────────────────────────────────────
class _SettingsGroup extends StatelessWidget {
  const _SettingsGroup({required this.label, required this.children});
  final String label;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8, bottom: 8),
            child: Text(
              label.toUpperCase(),
              style: AppTypography.label.copyWith(letterSpacing: 2.2),
            ),
          ),
          GlassBox(
            borderRadius: BorderRadius.circular(18),
            child: Column(children: children),
          ),
        ],
      ),
    );
  }
}

// ── Settings row ───────────────────────────────────────────────────
class _Row extends StatelessWidget {
  const _Row({required this.label, this.detail, this.sub, this.child, this.mono = false});
  final String label;
  final String? detail;
  final String? sub;
  final Widget? child;
  final bool mono;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 13, 16, 13),
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: AppColors.hairline, width: 0.5)),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: AppTypography.body.copyWith(fontSize: 14, fontWeight: FontWeight.w500),
                ),
                if (sub != null) ...[
                  const SizedBox(height: 2),
                  Text(sub!, style: AppTypography.body.copyWith(fontSize: 11, color: AppColors.fg2, height: 1.4)),
                ],
              ],
            ),
          ),
          if (detail != null)
            Text(
              detail!,
              style: mono
                  ? AppTypography.metricSmall.copyWith(fontSize: 12, color: AppColors.fg1)
                  : AppTypography.body.copyWith(fontSize: 13, color: AppColors.fg1),
            ),
          if (child != null) child!,
        ],
      ),
    );
  }
}

// ── Toggle switch ──────────────────────────────────────────────────
class _Toggle extends StatelessWidget {
  const _Toggle({required this.on, required this.onChange, this.danger = false});
  final bool on;
  final ValueChanged<bool> onChange;
  final bool danger;

  @override
  Widget build(BuildContext context) {
    final activeColor = danger ? AppColors.warning : AppColors.accent;
    return GestureDetector(
      onTap: () => onChange(!on),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: 46,
        height: 26,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: on ? activeColor : const Color(0x52787880),
          boxShadow: on
              ? [BoxShadow(color: activeColor.withValues(alpha: 0.45), blurRadius: 12)]
              : null,
        ),
        child: AnimatedAlign(
          duration: const Duration(milliseconds: 220),
          curve: Curves.easeOutBack,
          alignment: on ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            margin: const EdgeInsets.all(2),
            width: 22,
            height: 22,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              boxShadow: [BoxShadow(color: Color(0x66000000), blurRadius: 4, offset: Offset(0, 2))],
            ),
          ),
        ),
      ),
    );
  }
}
