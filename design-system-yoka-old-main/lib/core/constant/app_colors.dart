import 'package:flutter/material.dart';

/// App Color System
/// This file contains all the colors used in the Yokapos app
/// Organized by category for easy maintenance and consistency
class AppColors {
  // ========================================
  // PRIMARY COLORS
  // ========================================
  
  /// Primary blue color - Main brand color
  /// Hex: #1E3A8A
  static const Color primary = Color(0xFF1E3A8A);
  
  /// Primary light blue - Used for gradients
  /// Hex: #1A72DD
  static const Color primaryLight = Color(0xFF1A72DD);
  
  /// Primary dark blue - Secondary brand color
  /// Hex: #021433
  static const Color primary2 = Color(0xFF021433);
  
  /// Light blue accent
  /// Hex: #85A3F9
  static const Color blue = Color(0xFF85A3F9);

  // ========================================
  // NEUTRAL COLORS
  // ========================================
  
  /// Pure white
  /// Hex: #FFFFFF
  static const Color white = Color(0xFFFFFFFF);
  
  /// Off-white / Light grey
  /// Hex: #F8F7F7
  static const Color white2 = Color(0xFFF8F7F7);
  
  /// Grey color
  /// Hex: #6C7278
  static const Color grey = Color(0xFF6C7278);
  
  /// Black color
  /// Hex: #1A1C1E
  static const Color black = Color(0xFF1A1C1E);

  // ========================================
  // ACCENT COLORS
  // ========================================
  
  /// Yellow accent color
  /// Hex: #FACC15
  static const Color yellow = Color(0xFFFACC15);
  
  /// Green color
  /// Hex: #0D9C45
  static const Color green = Color(0xFF0D9C45);
  
  /// Red color
  /// Hex: #C9080B
  static const Color red = Color(0xFFC9080B);

  // ========================================
  // GRADIENTS
  // ========================================
  
  /// Primary gradient from light to dark blue
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      AppColors.primaryLight,
      AppColors.primary,
    ],
  );
  
  /// Reverse primary gradient from dark to light blue
  static const LinearGradient primaryGradientReverse = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      AppColors.primary,
      AppColors.primaryLight,
    ],
  );
  
  /// Dark gradient using primary2
  static const LinearGradient darkGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      AppColors.primary,
      AppColors.primary2,
    ],
  );

  // ========================================
  // SEMANTIC COLORS
  // ========================================
  
  /// Success color (same as green)
  static const Color success = green;
  
  /// Error color (same as red)
  static const Color error = red;
  
  /// Warning color (same as yellow)
  static const Color warning = yellow;
  
  /// Info color (same as blue)
  static const Color info = blue;

  // ========================================
  // BACKGROUND COLORS
  // ========================================
  
  /// Main background color
  static const Color background = white;
  
  /// Secondary background color
  static const Color backgroundSecondary = white2;
  
  /// Card background color
  static const Color cardBackground = white;

  // ========================================
  // TEXT COLORS
  // ========================================
  
  /// Primary text color
  static const Color textPrimary = black;
  
  /// Secondary text color
  static const Color textSecondary = grey;
  
  /// Text on primary background
  static const Color textOnPrimary = white;
  
  /// Text on light background
  static const Color textOnLight = black;

  // ========================================
  // BORDER COLORS
  // ========================================
  
  /// Primary border color
  static const Color border = Color(0xFFE5E5E5);
  
  /// Border color for focused elements
  static const Color borderFocused = primary;
  
  /// Border color for error states
  static const Color borderError = error;

  // ========================================
  // SHADOW COLORS
  // ========================================
  
  /// Shadow color for cards and elevated elements
  static const Color shadow = Color(0x1A000000);
  
  /// Light shadow for subtle elevation
  static const Color shadowLight = Color(0x0A000000);

  // ========================================
  // DISABLED COLORS
  // ========================================
  
  /// Disabled text color
  static const Color disabledText = Color(0xFF9E9E9E);
  
  /// Disabled background color
  static const Color disabledBackground = Color(0xFFF5F5F5);
  
  /// Disabled border color
  static const Color disabledBorder = Color(0xFFE0E0E0);

  // ========================================
  // OVERLAY COLORS
  // ========================================
  
  /// Overlay color for modals and dialogs
  static const Color overlay = Color(0x80000000);
  
  /// Light overlay for subtle effects
  static const Color overlayLight = Color(0x40000000);

  // ========================================
  // UTILITY METHODS
  // ========================================
  
  /// Get color with opacity
  static Color withOpacity(Color color, double opacity) {
    return color.withOpacity(opacity);
  }
  
  /// Get primary color with opacity
  static Color primaryWithOpacity(double opacity) {
    return primary.withOpacity(opacity);
  }
  
  /// Get grey color with opacity
  static Color greyWithOpacity(double opacity) {
    return grey.withOpacity(opacity);
  }
}

/// Extension for easy color access
extension AppColorsExtension on Color {
  /// Get the hex string representation of the color
  String get hexString {
    return '#${value.toRadixString(16).substring(2).toUpperCase()}';
  }
  
  /// Get the color with opacity
  Color withAlpha(double opacity) {
    return withOpacity(opacity);
  }
} 