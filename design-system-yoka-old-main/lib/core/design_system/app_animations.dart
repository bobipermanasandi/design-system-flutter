import 'dart:math';
import 'package:flutter/material.dart';
import '../constant/app_colors.dart';

/// Yokapos Animation System
/// Berisi semua animasi yang digunakan dalam aplikasi
class AppAnimations {
  // ========================================
  // DURATION CONSTANTS
  // ========================================

  /// Durasi animasi yang sangat cepat
  static const Duration instant = Duration(milliseconds: 100);

  /// Durasi animasi yang cepat
  static const Duration fast = Duration(milliseconds: 200);

  /// Durasi animasi normal
  static const Duration normal = Duration(milliseconds: 300);

  /// Durasi animasi yang lambat
  static const Duration slow = Duration(milliseconds: 500);

  /// Durasi animasi yang sangat lambat
  static const Duration verySlow = Duration(milliseconds: 800);

  // ========================================
  // CURVE CONSTANTS
  // ========================================

  /// Curve untuk animasi yang smooth
  static const Curve smooth = Curves.easeInOut;

  /// Curve untuk animasi yang bouncy
  static const Curve bouncy = Curves.bounceOut;

  /// Curve untuk animasi yang elastic
  static const Curve elastic = Curves.elasticOut;

  /// Curve untuk animasi yang sharp
  static const Curve sharp = Curves.easeIn;

  /// Curve untuk animasi yang gentle
  static const Curve gentle = Curves.easeOut;

  // ========================================
  // ANIMATION WIDGETS
  // ========================================

  /// Fade in animation
  static Widget fadeIn({
    required Widget child,
    Duration duration = normal,
    Curve curve = smooth,
    bool delay = false,
  }) {
    return TweenAnimationBuilder<double>(
      duration: delay
          ? Duration(milliseconds: duration.inMilliseconds + 200)
          : duration,
      tween: Tween(begin: 0.0, end: 1.0),
      curve: curve,
      builder: (context, value, child) {
        return Opacity(opacity: value, child: child);
      },
      child: child,
    );
  }

  /// Slide in animation dari kiri
  static Widget slideInLeft({
    required Widget child,
    Duration duration = normal,
    Curve curve = smooth,
    double distance = 50.0,
  }) {
    return TweenAnimationBuilder<Offset>(
      duration: duration,
      tween: Tween(begin: Offset(-distance, 0), end: Offset.zero),
      curve: curve,
      builder: (context, value, child) {
        return Transform.translate(offset: value, child: child);
      },
      child: child,
    );
  }

  /// Slide in animation dari kanan
  static Widget slideInRight({
    required Widget child,
    Duration duration = normal,
    Curve curve = smooth,
    double distance = 50.0,
  }) {
    return TweenAnimationBuilder<Offset>(
      duration: duration,
      tween: Tween(begin: Offset(distance, 0), end: Offset.zero),
      curve: curve,
      builder: (context, value, child) {
        return Transform.translate(offset: value, child: child);
      },
      child: child,
    );
  }

  /// Slide in animation dari bawah
  static Widget slideInUp({
    required Widget child,
    Duration duration = normal,
    Curve curve = smooth,
    double distance = 50.0,
  }) {
    return TweenAnimationBuilder<Offset>(
      duration: duration,
      tween: Tween(begin: Offset(0, distance), end: Offset.zero),
      curve: curve,
      builder: (context, value, child) {
        return Transform.translate(offset: value, child: child);
      },
      child: child,
    );
  }

  /// Scale animation
  static Widget scaleIn({
    required Widget child,
    Duration duration = normal,
    Curve curve = bouncy,
    double beginScale = 0.5,
  }) {
    return TweenAnimationBuilder<double>(
      duration: duration,
      tween: Tween(begin: beginScale, end: 1.0),
      curve: curve,
      builder: (context, value, child) {
        return Transform.scale(scale: value, child: child);
      },
      child: child,
    );
  }

  /// Pulse animation untuk loading atau attention
  static Widget pulse({
    required Widget child,
    Duration duration = slow,
    Curve curve = Curves.easeInOut,
  }) {
    return TweenAnimationBuilder<double>(
      duration: duration,
      tween: Tween(begin: 1.0, end: 1.1),
      curve: curve,
      builder: (context, value, child) {
        return Transform.scale(scale: value, child: child);
      },
      child: child,
    );
  }

  /// Shake animation untuk error states
  static Widget shake({required Widget child, Duration duration = fast}) {
    return TweenAnimationBuilder<double>(
      duration: duration,
      tween: Tween(begin: 0.0, end: 1.0),
      builder: (context, value, child) {
        final shake = sin(value * 3 * pi) * 10;
        return Transform.translate(offset: Offset(shake, 0), child: child);
      },
      child: child,
    );
  }

  /// Bounce animation
  static Widget bounce({
    required Widget child,
    Duration duration = slow,
    Curve curve = bouncy,
  }) {
    return TweenAnimationBuilder<double>(
      duration: duration,
      tween: Tween(begin: 0.0, end: 1.0),
      curve: curve,
      builder: (context, value, child) {
        return Transform.translate(
          offset: Offset(0, -20 * (1 - value)),
          child: child,
        );
      },
      child: child,
    );
  }

  /// Staggered animation untuk list items
  static Widget staggered({
    required Widget child,
    required int index,
    Duration duration = normal,
    Curve curve = smooth,
    int staggerDelay = 100,
  }) {
    return TweenAnimationBuilder<double>(
      duration: Duration(
        milliseconds: duration.inMilliseconds + (index * staggerDelay),
      ),
      tween: Tween(begin: 0.0, end: 1.0),
      curve: curve,
      builder: (context, value, child) {
        return Transform.translate(
          offset: Offset(0, 50 * (1 - value)),
          child: Opacity(opacity: value, child: child),
        );
      },
      child: child,
    );
  }

  /// Loading spinner dengan animasi
  static Widget animatedLoadingSpinner({
    Color? color,
    double size = 24.0,
    Duration duration = const Duration(seconds: 1),
  }) {
    return SizedBox(
      width: size,
      height: size,
      child: TweenAnimationBuilder<double>(
        duration: duration,
        tween: Tween(begin: 0.0, end: 1.0),
        builder: (context, value, child) {
          return Transform.rotate(
            angle: value * 2 * pi,
            child: CircularProgressIndicator(
              strokeWidth: 2,
              valueColor: AlwaysStoppedAnimation<Color>(
                color ?? AppColors.primary,
              ),
            ),
          );
        },
      ),
    );
  }

  /// Progress bar dengan animasi
  static Widget animatedProgressBar({
    required double progress,
    Color? backgroundColor,
    Color? progressColor,
    double height = 8.0,
    Duration duration = normal,
    Curve curve = smooth,
  }) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor ?? AppColors.backgroundSecondary,
        borderRadius: BorderRadius.circular(height / 2),
      ),
      child: TweenAnimationBuilder<double>(
        duration: duration,
        tween: Tween(begin: 0.0, end: progress),
        curve: curve,
        builder: (context, value, child) {
          return FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: value,
            child: Container(
              decoration: BoxDecoration(
                color: progressColor ?? AppColors.primary,
                borderRadius: BorderRadius.circular(height / 2),
              ),
            ),
          );
        },
      ),
    );
  }

  /// Animated counter
  static Widget animatedCounter({
    required int value,
    TextStyle? style,
    Duration duration = normal,
    Curve curve = smooth,
  }) {
    return TweenAnimationBuilder<int>(
      duration: duration,
      tween: Tween(begin: 0, end: value),
      curve: curve,
      builder: (context, value, child) {
        return Text(
          value.toString(),
          style:
              style ??
              const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.textPrimary,
              ),
        );
      },
    );
  }

  /// Animated text
  static Widget animatedText({
    required String text,
    TextStyle? style,
    Duration duration = normal,
    Curve curve = smooth,
    bool typewriter = false,
  }) {
    if (typewriter) {
      return TweenAnimationBuilder<int>(
        duration: duration,
        tween: Tween(begin: 0, end: text.length),
        curve: curve,
        builder: (context, value, child) {
          return Text(
            text.substring(0, value),
            style:
                style ??
                const TextStyle(fontSize: 16, color: AppColors.textPrimary),
          );
        },
      );
    } else {
      return TweenAnimationBuilder<double>(
        duration: duration,
        tween: Tween(begin: 0.0, end: 1.0),
        curve: curve,
        builder: (context, value, child) {
          return Opacity(
            opacity: value,
            child: Text(
              text,
              style:
                  style ??
                  const TextStyle(fontSize: 16, color: AppColors.textPrimary),
            ),
          );
        },
      );
    }
  }

  /// Animated icon
  static Widget animatedIcon({
    required IconData icon,
    Color? color,
    double? size,
    Duration duration = normal,
    Curve curve = smooth,
    bool rotate = false,
  }) {
    return TweenAnimationBuilder<double>(
      duration: duration,
      tween: Tween(begin: 0.0, end: 1.0),
      curve: curve,
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: rotate
              ? Transform.rotate(
                  angle: value * 2 * pi,
                  child: Icon(
                    icon,
                    color: color ?? AppColors.textPrimary,
                    size: size,
                  ),
                )
              : Icon(icon, color: color ?? AppColors.textPrimary, size: size),
        );
      },
    );
  }

  /// Animated button press effect
  static Widget animatedButton({
    required Widget child,
    required VoidCallback onPressed,
    Duration duration = fast,
    Curve curve = smooth,
  }) {
    return TweenAnimationBuilder<double>(
      duration: duration,
      tween: Tween(begin: 1.0, end: 1.0),
      curve: curve,
      builder: (context, value, child) {
        return GestureDetector(
          onTapDown: (_) {
            // Trigger animation on press
          },
          onTap: onPressed,
          child: Transform.scale(scale: value, child: child),
        );
      },
      child: child,
    );
  }

  /// Animated card with hover effect
  static Widget animatedCard({
    required Widget child,
    Duration duration = normal,
    Curve curve = smooth,
    double hoverScale = 1.05,
  }) {
    return TweenAnimationBuilder<double>(
      duration: duration,
      tween: Tween(begin: 1.0, end: 1.0),
      curve: curve,
      builder: (context, value, child) {
        return MouseRegion(
          onEnter: (_) {
            // Trigger hover animation
          },
          onExit: (_) {
            // Reset animation
          },
          child: Transform.scale(scale: value, child: child),
        );
      },
      child: child,
    );
  }
}

/// Animation controller untuk mengelola animasi kompleks
class AppAnimationController {
  late AnimationController _controller;
  late Animation<double> _animation;

  AppAnimationController({
    required TickerProvider vsync,
    Duration duration = AppAnimations.normal,
    Curve curve = AppAnimations.smooth,
  }) {
    _controller = AnimationController(duration: duration, vsync: vsync);
    _animation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: curve));
  }

  Animation<double> get animation => _animation;
  AnimationController get controller => _controller;

  void forward() => _controller.forward();
  void reverse() => _controller.reverse();
  void reset() => _controller.reset();
  void dispose() => _controller.dispose();

  /// Play animation dengan delay
  Future<void> playWithDelay(Duration delay) async {
    await Future.delayed(delay);
    forward();
  }

  /// Loop animation
  void loop() {
    _controller.repeat();
  }

  /// Stop loop
  void stopLoop() {
    _controller.stop();
  }
}

/// Extension untuk memudahkan penggunaan animasi
extension AnimationExtension on Widget {
  /// Fade in animation
  Widget fadeIn({
    Duration duration = AppAnimations.normal,
    Curve curve = AppAnimations.smooth,
    bool delay = false,
  }) {
    return AppAnimations.fadeIn(
      child: this,
      duration: duration,
      curve: curve,
      delay: delay,
    );
  }

  /// Slide in from left
  Widget slideInLeft({
    Duration duration = AppAnimations.normal,
    Curve curve = AppAnimations.smooth,
    double distance = 50.0,
  }) {
    return AppAnimations.slideInLeft(
      child: this,
      duration: duration,
      curve: curve,
      distance: distance,
    );
  }

  /// Slide in from right
  Widget slideInRight({
    Duration duration = AppAnimations.normal,
    Curve curve = AppAnimations.smooth,
    double distance = 50.0,
  }) {
    return AppAnimations.slideInRight(
      child: this,
      duration: duration,
      curve: curve,
      distance: distance,
    );
  }

  /// Slide in from bottom
  Widget slideInUp({
    Duration duration = AppAnimations.normal,
    Curve curve = AppAnimations.smooth,
    double distance = 50.0,
  }) {
    return AppAnimations.slideInUp(
      child: this,
      duration: duration,
      curve: curve,
      distance: distance,
    );
  }

  /// Scale in animation
  Widget scaleIn({
    Duration duration = AppAnimations.normal,
    Curve curve = AppAnimations.bouncy,
    double beginScale = 0.5,
  }) {
    return AppAnimations.scaleIn(
      child: this,
      duration: duration,
      curve: curve,
      beginScale: beginScale,
    );
  }

  /// Pulse animation
  Widget pulse({
    Duration duration = AppAnimations.slow,
    Curve curve = AppAnimations.smooth,
  }) {
    return AppAnimations.pulse(child: this, duration: duration, curve: curve);
  }

  /// Shake animation
  Widget shake({Duration duration = AppAnimations.fast}) {
    return AppAnimations.shake(child: this, duration: duration);
  }

  /// Bounce animation
  Widget bounce({
    Duration duration = AppAnimations.slow,
    Curve curve = AppAnimations.bouncy,
  }) {
    return AppAnimations.bounce(child: this, duration: duration, curve: curve);
  }
}
