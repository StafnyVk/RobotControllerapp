import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:robot_service/application/robot_telemetry_bloc/robot_telemetry_bloc.dart';

import 'glass_box.dart';

class TelemetryLogCard extends StatefulWidget {
  const TelemetryLogCard({super.key});

  @override
  State<TelemetryLogCard> createState() => _TelemetryLogCardState();
}

class _TelemetryLogCardState extends State<TelemetryLogCard> {
  bool _expanded = false;
  final List<_LogRow> _rows = [
    _LogRow('09:41:02', 'ok', 'Handshake complete · TLS 1.3', '2ms'),
    _LogRow('09:41:02', 'info', 'Subscribed topic /amec04/joints', null),
    _LogRow('09:41:03', 'info', 'Pose calibrated · 24 DOF', null),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocListener<RobotTelemetryBloc, RobotTelemetryState>(
      listener: (_, state) {
        state.whenOrNull(
          live: (s) => _appendStatus(s),
          stale: (s, _) => _appendStatus(s),
        );
      },
      child: _GcCard(
        title: 'Live Telemetry',
        kicker: _expanded ? '${_rows.length} lines' : 'latest 3',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimatedSize(
              duration: const Duration(milliseconds: 320),
              curve: Curves.easeOut,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: _expanded ? 320 : 86,
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: _expanded
                      ? const ClampingScrollPhysics()
                      : const NeverScrollableScrollPhysics(),
                  itemCount: _expanded ? _rows.length : _rows.length.clamp(0, 3),
                  itemBuilder: (_, i) => _TelemetryRowWidget(row: _rows[i]),
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () => setState(() => _expanded = !_expanded),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.hairline),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  _expanded ? 'COLLAPSE' : 'EXPAND',
                  style: AppTypography.label.copyWith(
                    color: AppColors.fg1,
                    letterSpacing: 1.8,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _appendStatus(dynamic s) {
    final now = DateTime.now();
    final t =
        '${now.hour.toString().padLeft(2, '0')}:${now.minute.toString().padLeft(2, '0')}:${now.second.toString().padLeft(2, '0')}';
    setState(() {
      _rows.insert(0, _LogRow(t, 'info', 'Telemetry snapshot', '${s.battery.toStringAsFixed(0)}%'));
      if (_rows.length > 50) _rows.removeLast();
    });
  }
}

class _LogRow {
  const _LogRow(this.time, this.kind, this.msg, this.val);
  final String time;
  final String kind;
  final String msg;
  final String? val;
}

class _TelemetryRowWidget extends StatelessWidget {
  const _TelemetryRowWidget({required this.row});
  final _LogRow row;

  Color get _kindColor {
    switch (row.kind) {
      case 'ok':
        return AppColors.success;
      case 'warn':
        return AppColors.warning;
      case 'err':
        return AppColors.critical;
      case 'cmd':
        return AppColors.accent;
      default:
        return AppColors.fg2;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4),
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(color: AppColors.hairline, width: 0.5)),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 54,
            child: Text(
              row.time,
              style: AppTypography.label.copyWith(color: AppColors.fg3),
            ),
          ),
          const SizedBox(width: 10),
          SizedBox(
            width: 40,
            child: Text(
              row.kind.toUpperCase(),
              style: AppTypography.label.copyWith(color: _kindColor, letterSpacing: 1),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              row.msg,
              overflow: TextOverflow.ellipsis,
              style: AppTypography.label.copyWith(
                color: AppColors.fg0,
                fontSize: 10,
                letterSpacing: 0,
              ),
            ),
          ),
          if (row.val != null)
            Text(
              row.val!,
              style: AppTypography.label.copyWith(color: _kindColor),
            ),
        ],
      ),
    );
  }
}

// ── Shared card shell ──────────────────────────────────────────────
class _GcCard extends StatelessWidget {
  const _GcCard({required this.title, this.kicker, required this.child});
  final String title;
  final String? kicker;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GlassBox(
      borderRadius: AppRadii.card,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: AppTypography.body.copyWith(fontSize: 13, fontWeight: FontWeight.w500)),
              if (kicker != null)
                Text(kicker!, style: AppTypography.label.copyWith(letterSpacing: 1.8)),
            ],
          ),
          const SizedBox(height: 12),
          child,
        ],
      ),
    );
  }
}

// Export for use in DashboardScreen
class GcCard extends StatelessWidget {
  const GcCard({super.key, required this.title, this.kicker, required this.child, this.padding = 16});
  final String title;
  final String? kicker;
  final Widget child;
  final double padding;

  @override
  Widget build(BuildContext context) => _GcCard(title: title, kicker: kicker, child: child);
}
