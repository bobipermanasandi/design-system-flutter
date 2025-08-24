import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Design System Typography
///
/// This file contains all typography styles for the design system.
/// Includes display, headline, title, body, and label text styles.
class AppTypography {
  AppTypography._();

  // Font family
  static TextStyle get _poppins => GoogleFonts.poppins();

  // Font weights
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;

  // Display styles (largest text)
  static TextStyle displayLarge = _poppins.copyWith(
    fontSize: 57,
    fontWeight: regular,
    height: 1.12,
    letterSpacing: -0.25,
  );

  static TextStyle displayMedium = _poppins.copyWith(
    fontSize: 45,
    fontWeight: regular,
    height: 1.16,
    letterSpacing: 0,
  );

  static TextStyle displaySmall = _poppins.copyWith(
    fontSize: 36,
    fontWeight: regular,
    height: 1.22,
    letterSpacing: 0,
  );

  // Headline styles
  static TextStyle headlineLarge = _poppins.copyWith(
    fontSize: 32,
    fontWeight: regular,
    height: 1.25,
    letterSpacing: 0,
  );

  static TextStyle headlineMedium = _poppins.copyWith(
    fontSize: 28,
    fontWeight: regular,
    height: 1.29,
    letterSpacing: 0,
  );

  static TextStyle headlineSmall = _poppins.copyWith(
    fontSize: 24,
    fontWeight: regular,
    height: 1.33,
    letterSpacing: 0,
  );

  // Title styles
  static TextStyle titleLarge = _poppins.copyWith(
    fontSize: 22,
    fontWeight: regular,
    height: 1.27,
    letterSpacing: 0,
  );

  static TextStyle titleMedium = _poppins.copyWith(
    fontSize: 16,
    fontWeight: medium,
    height: 1.5,
    letterSpacing: 0.15,
  );

  static TextStyle titleSmall = _poppins.copyWith(
    fontSize: 14,
    fontWeight: medium,
    height: 1.43,
    letterSpacing: 0.1,
  );

  // Body styles
  static TextStyle bodyLarge = _poppins.copyWith(
    fontSize: 16,
    fontWeight: regular,
    height: 1.5,
    letterSpacing: 0.5,
  );

  static TextStyle bodyMedium = _poppins.copyWith(
    fontSize: 14,
    fontWeight: regular,
    height: 1.43,
    letterSpacing: 0.25,
  );

  static TextStyle bodySmall = _poppins.copyWith(
    fontSize: 12,
    fontWeight: regular,
    height: 1.33,
    letterSpacing: 0.4,
  );

  // Label styles
  static TextStyle labelLarge = _poppins.copyWith(
    fontSize: 14,
    fontWeight: medium,
    height: 1.43,
    letterSpacing: 0.1,
  );

  static TextStyle labelMedium = _poppins.copyWith(
    fontSize: 12,
    fontWeight: medium,
    height: 1.33,
    letterSpacing: 0.5,
  );

  static TextStyle labelSmall = _poppins.copyWith(
    fontSize: 11,
    fontWeight: medium,
    height: 1.45,
    letterSpacing: 0.5,
  );

  // Button styles
  static TextStyle buttonLarge = _poppins.copyWith(
    fontSize: 16,
    fontWeight: semiBold,
    height: 1.25,
    letterSpacing: 0.1,
  );

  static TextStyle buttonMedium = _poppins.copyWith(
    fontSize: 14,
    fontWeight: semiBold,
    height: 1.29,
    letterSpacing: 0.1,
  );

  static TextStyle buttonSmall = _poppins.copyWith(
    fontSize: 12,
    fontWeight: semiBold,
    height: 1.33,
    letterSpacing: 0.1,
  );

  // Caption and overline
  static TextStyle caption = _poppins.copyWith(
    fontSize: 12,
    fontWeight: regular,
    height: 1.33,
    letterSpacing: 0.4,
  );

  static TextStyle overline = _poppins.copyWith(
    fontSize: 10,
    fontWeight: medium,
    height: 1.6,
    letterSpacing: 1.5,
  );

  /// Create a text theme for Material 3
  static TextTheme createTextTheme({Color? color}) {
    return TextTheme(
      displayLarge: displayLarge.copyWith(color: color),
      displayMedium: displayMedium.copyWith(color: color),
      displaySmall: displaySmall.copyWith(color: color),
      headlineLarge: headlineLarge.copyWith(color: color),
      headlineMedium: headlineMedium.copyWith(color: color),
      headlineSmall: headlineSmall.copyWith(color: color),
      titleLarge: titleLarge.copyWith(color: color),
      titleMedium: titleMedium.copyWith(color: color),
      titleSmall: titleSmall.copyWith(color: color),
      bodyLarge: bodyLarge.copyWith(color: color),
      bodyMedium: bodyMedium.copyWith(color: color),
      bodySmall: bodySmall.copyWith(color: color),
      labelLarge: labelLarge.copyWith(color: color),
      labelMedium: labelMedium.copyWith(color: color),
      labelSmall: labelSmall.copyWith(color: color),
    );
  }
}
