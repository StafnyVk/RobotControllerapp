import 'package:auto_route/auto_route.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:video_player/video_player.dart';

import '../../routing/app_router.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late VideoPlayerController _controller;
  bool _initialized = false;
  bool _isExiting = false;

  @override
  void initState() {
    super.initState();
    _initSplash();
  }

  Future<void> _initSplash() async {
    final prefs = await SharedPreferences.getInstance();
    final isFirstOpen = prefs.getBool('is_first_open') ?? true;

    final videoAsset =
        isFirstOpen ? 'assets/splash_video.mp4' : 'assets/video/splash.mp4';

    if (isFirstOpen) {
      await prefs.setBool('is_first_open', false);
    }

    _controller = VideoPlayerController.asset(videoAsset);

    _controller.initialize().then((_) {
      if (mounted) {
        setState(() {
          _initialized = true;
        });
        _controller.play();
        _controller.setLooping(false);
        // Faster playback only for the first-time splash if it's too long
        if (isFirstOpen) {
          _controller.setPlaybackSpeed(2.0);
        }
        _controller.setVolume(0.0);
      }
    });

    _controller.addListener(() {
      if (_controller.value.isInitialized &&
          _controller.value.position >= _controller.value.duration &&
          !_isExiting) {
        _startExit();
      }
    });

    // Fallback timer
    Future.delayed(const Duration(seconds: 15), () {
      if (mounted && !_isExiting) _startExit();
    });
  }

  void _startExit() {
    setState(() => _isExiting = true);
    Future.delayed(const Duration(milliseconds: 800), () {
      if (mounted) context.router.replace(const ConnectRoute());
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedOpacity(
        opacity: _isExiting ? 0.0 : 1.0,
        duration: const Duration(milliseconds: 800),
        curve: Curves.easeInOut,
        child: Stack(
          fit: StackFit.expand,
          children: [
            if (_initialized)
              Center(
                child: AspectRatio(
                  aspectRatio: _controller.value.aspectRatio,
                  child: VideoPlayer(_controller),
                ),
              )
            else
              const Center(
                child: CircularProgressIndicator(color: AppColors.fg0),
              ),
            // Wordmark Overlay
            Center(
              child: TweenAnimationBuilder<double>(
                tween: Tween(begin: 0, end: 1),
                duration: const Duration(seconds: 2),
                curve: Curves.easeIn,
                builder: (_, v, child) => Opacity(
                  opacity: v,
                  child: child,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 180),
                    Text(
                      'AMECA CTRL',
                      style: AppTypography.headline.copyWith(
                        letterSpacing: 8,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
