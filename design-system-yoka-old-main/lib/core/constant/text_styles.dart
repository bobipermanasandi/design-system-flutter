import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors.dart';

class AppTextStyles {
  // Font family
  static const String _fontFamily = 'Poppins';

  // Base text style with Poppins font
  static TextStyle _baseStyle({
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    double? height,
    TextDecoration? decoration,
  }) {
    return GoogleFonts.poppins(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
      height: height,
      decoration: decoration,
    );
  }

  // Display styles (Large headings)
  static TextStyle displayLarge({
    Color? color,
    FontWeight? fontWeight,
  }) =>
      _baseStyle(
        fontSize: 57,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? AppColors.black,
        height: 1.12,
      );

  static TextStyle displayMedium({
    Color? color,
    FontWeight? fontWeight,
  }) =>
      _baseStyle(
        fontSize: 45,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? AppColors.black,
        height: 1.16,
      );

  static TextStyle displaySmall({
    Color? color,
    FontWeight? fontWeight,
  }) =>
      _baseStyle(
        fontSize: 36,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? AppColors.black,
        height: 1.22,
      );

  // Headline styles
  static TextStyle headlineLarge({
    Color? color,
    FontWeight? fontWeight,
  }) =>
      _baseStyle(
        fontSize: 32,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? AppColors.black,
        height: 1.25,
      );

  static TextStyle headlineMedium({
    Color? color,
    FontWeight? fontWeight,
  }) =>
      _baseStyle(
        fontSize: 28,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? AppColors.black,
        height: 1.29,
      );

  static TextStyle headlineSmall({
    Color? color,
    FontWeight? fontWeight,
  }) =>
      _baseStyle(
        fontSize: 24,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? AppColors.black,
        height: 1.33,
      );

  // Title styles
  static TextStyle titleLarge({
    Color? color,
    FontWeight? fontWeight,
  }) =>
      _baseStyle(
        fontSize: 22,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? AppColors.black,
        height: 1.27,
      );

  static TextStyle titleMedium({
    Color? color,
    FontWeight? fontWeight,
  }) =>
      _baseStyle(
        fontSize: 16,
        fontWeight: fontWeight ?? FontWeight.w500,
        color: color ?? AppColors.black,
        height: 1.5,
      );

  static TextStyle titleSmall({
    Color? color,
    FontWeight? fontWeight,
  }) =>
      _baseStyle(
        fontSize: 14,
        fontWeight: fontWeight ?? FontWeight.w500,
        color: color ?? AppColors.black,
        height: 1.43,
      );

  // Body styles
  static TextStyle bodyLarge({
    Color? color,
    FontWeight? fontWeight,
  }) =>
      _baseStyle(
        fontSize: 16,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? AppColors.black,
        height: 1.5,
      );

  static TextStyle bodyMedium({
    Color? color,
    FontWeight? fontWeight,
  }) =>
      _baseStyle(
        fontSize: 14,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? AppColors.black,
        height: 1.43,
      );

  static TextStyle bodySmall({
    Color? color,
    FontWeight? fontWeight,
  }) =>
      _baseStyle(
        fontSize: 12,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? AppColors.black,
        height: 1.33,
      );

  // Label styles
  static TextStyle labelLarge({
    Color? color,
    FontWeight? fontWeight,
  }) =>
      _baseStyle(
        fontSize: 14,
        fontWeight: fontWeight ?? FontWeight.w500,
        color: color ?? AppColors.black,
        height: 1.43,
      );

  static TextStyle labelMedium({
    Color? color,
    FontWeight? fontWeight,
  }) =>
      _baseStyle(
        fontSize: 12,
        fontWeight: fontWeight ?? FontWeight.w500,
        color: color ?? AppColors.black,
        height: 1.33,
      );

  static TextStyle labelSmall({
    Color? color,
    FontWeight? fontWeight,
  }) =>
      _baseStyle(
        fontSize: 11,
        fontWeight: fontWeight ?? FontWeight.w500,
        color: color ?? AppColors.black,
        height: 1.45,
      );

  // Custom styles for specific use cases
  static TextStyle button({
    Color? color,
    FontWeight? fontWeight,
  }) =>
      _baseStyle(
        fontSize: 14,
        fontWeight: fontWeight ?? FontWeight.w600,
        color: color ?? AppColors.white,
        height: 1.43,
      );

  static TextStyle caption({
    Color? color,
    FontWeight? fontWeight,
  }) =>
      _baseStyle(
        fontSize: 12,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? AppColors.grey,
        height: 1.33,
      );

  static TextStyle overline({
    Color? color,
    FontWeight? fontWeight,
  }) =>
      _baseStyle(
        fontSize: 10,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? AppColors.grey,
        height: 1.6,
      );

  // Brand-specific styles
  static TextStyle logo({
    Color? color,
    FontWeight? fontWeight,
  }) =>
      _baseStyle(
        fontSize: 32,
        fontWeight: fontWeight ?? FontWeight.bold,
        color: color ?? AppColors.primary,
        height: 1.25,
      );

  static TextStyle logoSubtitle({
    Color? color,
    FontWeight? fontWeight,
  }) =>
      _baseStyle(
        fontSize: 14,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? AppColors.grey,
        height: 1.43,
      );

  // Form styles
  static TextStyle inputLabel({
    Color? color,
    FontWeight? fontWeight,
  }) =>
      _baseStyle(
        fontSize: 14,
        fontWeight: fontWeight ?? FontWeight.w500,
        color: color ?? AppColors.black,
        height: 1.43,
      );

  static TextStyle inputText({
    Color? color,
    FontWeight? fontWeight,
  }) =>
      _baseStyle(
        fontSize: 16,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? AppColors.black,
        height: 1.5,
      );

  static TextStyle inputHint({
    Color? color,
    FontWeight? fontWeight,
  }) =>
      _baseStyle(
        fontSize: 16,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? AppColors.grey,
        height: 1.5,
      );

  // Error styles
  static TextStyle error({
    Color? color,
    FontWeight? fontWeight,
  }) =>
      _baseStyle(
        fontSize: 12,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? AppColors.error,
        height: 1.33,
      );

  // Success styles
  static TextStyle success({
    Color? color,
    FontWeight? fontWeight,
  }) =>
      _baseStyle(
        fontSize: 12,
        fontWeight: fontWeight ?? FontWeight.w400,
        color: color ?? AppColors.green,
        height: 1.33,
      );

  // Link styles
  static TextStyle link({
    Color? color,
    FontWeight? fontWeight,
  }) =>
      _baseStyle(
        fontSize: 14,
        fontWeight: fontWeight ?? FontWeight.w500,
        color: color ?? AppColors.primary,
        height: 1.43,
        decoration: TextDecoration.underline,
      );
} 