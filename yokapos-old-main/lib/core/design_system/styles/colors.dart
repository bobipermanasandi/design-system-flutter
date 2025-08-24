import 'package:flutter/material.dart';

/// Design System Color Palette
///
/// This file contains all the color definitions for the design system.
/// Each color has 5 shades: 10 (lightest), 30, 50 (base), 70, 90 (darkest)
class AppColors {
  AppColors._();

  // Primary Color - Navy Blue
  static const Color primary10 = Color(0xFFE0E6F5);
  static const Color primary30 = Color(0xFF7A92C2);
  static const Color primary50 = Color(0xFF1E3A8A);
  static const Color primary70 = Color(0xFF142660);
  static const Color primary90 = Color(0xFF0B1332);

  // Secondary Color - Teal
  static const Color secondary10 = Color(0xFFE0F2F5);
  static const Color secondary30 = Color(0xFF7FC2CE);
  static const Color secondary50 = Color(0xFF1E8AA4);
  static const Color secondary70 = Color(0xFF156273);
  static const Color secondary90 = Color(0xFF0B313A);

  // Neutral Color - Gray Neutral
  static const Color neutral10 = Color(0xFFF4F4F5);
  static const Color neutral30 = Color(0xFFD1D5DB);
  static const Color neutral50 = Color(0xFF6B7280);
  static const Color neutral70 = Color(0xFF374151);
  static const Color neutral90 = Color(0xFF111827);

  // Success Color - Emerald Green
  static const Color success10 = Color(0xFFD9F5E4);
  static const Color success30 = Color(0xFF67C98D);
  static const Color success50 = Color(0xFF0D9C45);
  static const Color success70 = Color(0xFF096F31);
  static const Color success90 = Color(0xFF04321A);

  // Warning Color - Amber
  static const Color warning10 = Color(0xFFFFF4E0);
  static const Color warning30 = Color(0xFFF8D38C);
  static const Color warning50 = Color(0xFFF59E0B);
  static const Color warning70 = Color(0xFFB26F08);
  static const Color warning90 = Color(0xFF5A3804);

  // Error Color - Coral Red
  static const Color error10 = Color(0xFFFEE2E2);
  static const Color error30 = Color(0xFFFCA5A5);
  static const Color error50 = Color(0xFFDC2626);
  static const Color error70 = Color(0xFF991B1B);
  static const Color error90 = Color(0xFF450A0A);

  // Additional colors for UI
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color transparent = Colors.transparent;

  // Surface colors
  static const Color surface = Color(0xFFFAFAFA);
  static const Color surfaceDark = Color(0xFF121212);
  static const Color surfaceVariant = Color(0xFFF5F5F5);
  static const Color surfaceVariantDark = Color(0xFF1E1E1E);

  // Text colors
  static const Color onSurface = Color(0xFF1C1B1F);
  static const Color onSurfaceDark = Color(0xFFE6E1E5);
  static const Color onSurfaceVariant = Color(0xFF49454F);
  static const Color onSurfaceVariantDark = Color(0xFFCAC4D0);

  // Outline colors
  static const Color outline = Color(0xFF79747E);
  static const Color outlineDark = Color(0xFF938F99);
  static const Color outlineVariant = Color(0xFFCAC4D0);
  static const Color outlineVariantDark = Color(0xFF49454F);

  /// Get color by name and shade
  static Color getColor(String colorName, int shade) {
    switch (colorName.toLowerCase()) {
      case 'primary':
        return _getPrimaryShade(shade);
      case 'secondary':
        return _getSecondaryShade(shade);
      case 'neutral':
        return _getNeutralShade(shade);
      case 'success':
        return _getSuccessShade(shade);
      case 'warning':
        return _getWarningShade(shade);
      case 'error':
        return _getErrorShade(shade);
      default:
        return primary50;
    }
  }

  static Color _getPrimaryShade(int shade) {
    switch (shade) {
      case 10:
        return primary10;
      case 30:
        return primary30;
      case 50:
        return primary50;
      case 70:
        return primary70;
      case 90:
        return primary90;
      default:
        return primary50;
    }
  }

  static Color _getSecondaryShade(int shade) {
    switch (shade) {
      case 10:
        return secondary10;
      case 30:
        return secondary30;
      case 50:
        return secondary50;
      case 70:
        return secondary70;
      case 90:
        return secondary90;
      default:
        return secondary50;
    }
  }

  static Color _getNeutralShade(int shade) {
    switch (shade) {
      case 10:
        return neutral10;
      case 30:
        return neutral30;
      case 50:
        return neutral50;
      case 70:
        return neutral70;
      case 90:
        return neutral90;
      default:
        return neutral50;
    }
  }

  static Color _getSuccessShade(int shade) {
    switch (shade) {
      case 10:
        return success10;
      case 30:
        return success30;
      case 50:
        return success50;
      case 70:
        return success70;
      case 90:
        return success90;
      default:
        return success50;
    }
  }

  static Color _getWarningShade(int shade) {
    switch (shade) {
      case 10:
        return warning10;
      case 30:
        return warning30;
      case 50:
        return warning50;
      case 70:
        return warning70;
      case 90:
        return warning90;
      default:
        return warning50;
    }
  }

  static Color _getErrorShade(int shade) {
    switch (shade) {
      case 10:
        return error10;
      case 30:
        return error30;
      case 50:
        return error50;
      case 70:
        return error70;
      case 90:
        return error90;
      default:
        return error50;
    }
  }
}
