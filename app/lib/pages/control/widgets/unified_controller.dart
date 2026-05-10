import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:robot_service/domain/model/robot_command.dart';

class UnifiedController extends StatefulWidget {
  const UnifiedController({
    super.key,
    required this.heldDir,
    required this.onPress,
    required this.onRelease,
    required this.onJoystickMove,
    required this.onStop,
    required this.stopHot,
  });

  final String? heldDir;
  final ValueChanged<MoveDirection> onPress;
  final VoidCallback onRelease;
  final ValueChanged<MoveDirection> onJoystickMove;
  final VoidCallback onStop;
  final bool stopHot;

  @override
  State<UnifiedController> createState() => _UnifiedControllerState();
}

class _UnifiedControllerState extends State<UnifiedController> {
  Offset _puck = Offset.zero;
  bool _active = false;
  static const _radius = 60.0; // Smaller radius for center piece

  void _update(Offset local, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final delta = local - center;
    final dist = delta.distance.clamp(0.0, _radius);
    setState(() {
      _puck = Offset(dist * (delta.dx / (delta.distance + 0.001)),
          dist * (delta.dy / (delta.distance + 0.001)));
      _active = true;
    });
    if (dist > 15) {
      final absX = delta.dx.abs();
      final absY = delta.dy.abs();
      if (absY > absX) {
        widget.onJoystickMove(delta.dy < 0 ? MoveDirection.forward : MoveDirection.back);
      } else {
        widget.onJoystickMove(delta.dx < 0 ? MoveDirection.left : MoveDirection.right);
      }
    }
  }

  void _end() {
    setState(() {
      _puck = Offset.zero;
      _active = false;
    });
    widget.onRelease();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      height: 300,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Outer decorative circle
          Container(
            width: 260,
            height: 260,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withValues(alpha: 0.03),
              border: Border.all(color: Colors.white.withValues(alpha: 0.1), width: 1),
            ),
          ),

          // Mini Stop Button (Top Right)
          Positioned(
            top: 10,
            right: 0,
            child: GestureDetector(
              onTapDown: (_) => widget.onStop(),
              child: AnimatedScale(
                scale: widget.stopHot ? 0.9 : 1.0,
                duration: const Duration(milliseconds: 150),
                child: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: widget.stopHot ? const Color(0xFFFF6B6B) : AppColors.critical,
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.critical.withValues(alpha: 0.4),
                        blurRadius: widget.stopHot ? 20 : 10,
                        spreadRadius: widget.stopHot ? 4 : 0,
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Icon(Icons.stop_rounded, color: Colors.white, size: 22),
                  ),
                ),
              ),
            ),
          ),

          // D-Pad Arrows (Peripheral)
          DPadArrow(
            dir: MoveDirection.forward,
            heldDir: widget.heldDir,
            onPress: widget.onPress,
            onRelease: widget.onRelease,
            top: 20,
          ),
          DPadArrow(
            dir: MoveDirection.back,
            heldDir: widget.heldDir,
            onPress: widget.onPress,
            onRelease: widget.onRelease,
            bottom: 20,
          ),
          DPadArrow(
            dir: MoveDirection.left,
            heldDir: widget.heldDir,
            onPress: widget.onPress,
            onRelease: widget.onRelease,
            left: 40,
          ),
          DPadArrow(
            dir: MoveDirection.right,
            heldDir: widget.heldDir,
            onPress: widget.onPress,
            onRelease: widget.onRelease,
            right: 40,
          ),

          // Central Joystick
          GestureDetector(
            onPanStart: (d) {
              final box = context.findRenderObject() as RenderBox?;
              if (box != null) _update(box.globalToLocal(d.globalPosition), box.size);
            },
            onPanUpdate: (d) {
              final box = context.findRenderObject() as RenderBox?;
              if (box != null) _update(box.globalToLocal(d.globalPosition), box.size);
            },
            onPanEnd: (_) => _end(),
            onPanCancel: _end,
            child: Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white.withValues(alpha: 0.05),
                border: Border.all(color: Colors.white.withValues(alpha: 0.1)),
              ),
              child: Center(
                // Puck
                child: AnimatedSlide(
                  offset: Offset(_puck.dx / 70, _puck.dy / 70),
                  duration: _active ? Duration.zero : const Duration(milliseconds: 250),
                  curve: Curves.easeOutBack,
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha: 0.3),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        ),
                        if (_active)
                          BoxShadow(
                            color: AppColors.accent.withValues(alpha: 0.4),
                            blurRadius: 20,
                            spreadRadius: 4,
                          ),
                      ],
                    ),
                    child: Center(
                      child: Container(
                        width: 6,
                        height: 6,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black26,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DPadArrow extends StatelessWidget {
  const DPadArrow({
    super.key,
    required this.dir,
    required this.heldDir,
    required this.onPress,
    required this.onRelease,
    this.top,
    this.bottom,
    this.left,
    this.right,
  });

  final MoveDirection dir;
  final String? heldDir;
  final ValueChanged<MoveDirection> onPress;
  final VoidCallback onRelease;
  final double? top, bottom, left, right;

  bool get _active => heldDir == dir.toString();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
      child: Listener(
        onPointerDown: (_) => onPress(dir),
        onPointerUp: (_) => onRelease(),
        onPointerCancel: (_) => onRelease(),
        child: AnimatedScale(
          scale: _active ? 1.2 : 1.0,
          duration: const Duration(milliseconds: 150),
          child: Icon(
            _icon,
            size: 20,
            color: _active ? AppColors.accent : Colors.white.withValues(alpha: 0.7),
          ),
        ),
      ),
    );
  }

  IconData get _icon {
    switch (dir) {
      case MoveDirection.forward:
        return Icons.arrow_drop_up_rounded;
      case MoveDirection.back:
        return Icons.arrow_drop_down_rounded;
      case MoveDirection.left:
        return Icons.arrow_left_rounded;
      case MoveDirection.right:
        return Icons.arrow_right_rounded;
    }
  }
}
