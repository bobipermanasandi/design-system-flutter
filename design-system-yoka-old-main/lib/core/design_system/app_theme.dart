import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constant/app_colors.dart';

/// Yokapos Design System - Main Theme Configuration
/// This file contains the complete theme configuration for the app
class AppTheme {
  // ========================================
  // LIGHT THEME
  // ========================================

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: _lightColorScheme,
      fontFamily: 'Noto Sans',

      // App Bar Theme
      appBarTheme: _appBarTheme,

      // Card Theme
      cardTheme: _cardTheme,

      // Button Themes
      elevatedButtonTheme: _elevatedButtonTheme,
      outlinedButtonTheme: _outlinedButtonTheme,
      textButtonTheme: _textButtonTheme,

      // Input Decoration Theme
      inputDecorationTheme: _inputDecorationTheme,

      // Bottom Navigation Bar Theme
      bottomNavigationBarTheme: _bottomNavigationBarTheme,

      // Floating Action Button Theme
      floatingActionButtonTheme: _floatingActionButtonTheme,

      // Dialog Theme
      dialogTheme: _dialogTheme,

      // Snackbar Theme
      snackBarTheme: _snackBarTheme,

      // Chip Theme
      chipTheme: _chipTheme,

      // Divider Theme
      dividerTheme: _dividerTheme,

      // Icon Theme
      iconTheme: _iconTheme,

      // Text Theme
      textTheme: _textTheme,
    );
  }

  // ========================================
  // DARK THEME
  // ========================================

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: _darkColorScheme,
      fontFamily: 'Noto Sans',

      // App Bar Theme
      appBarTheme: _appBarThemeDark,

      // Card Theme
      cardTheme: _cardThemeDark,

      // Button Themes
      elevatedButtonTheme: _elevatedButtonThemeDark,
      outlinedButtonTheme: _outlinedButtonThemeDark,
      textButtonTheme: _textButtonThemeDark,

      // Input Decoration Theme
      inputDecorationTheme: _inputDecorationThemeDark,

      // Bottom Navigation Bar Theme
      bottomNavigationBarTheme: _bottomNavigationBarThemeDark,

      // Floating Action Button Theme
      floatingActionButtonTheme: _floatingActionButtonThemeDark,

      // Dialog Theme
      dialogTheme: _dialogThemeDark,

      // Snackbar Theme
      snackBarTheme: _snackBarThemeDark,

      // Chip Theme
      chipTheme: _chipThemeDark,

      // Divider Theme
      dividerTheme: _dividerThemeDark,

      // Icon Theme
      iconTheme: _iconThemeDark,

      // Text Theme
      textTheme: _textThemeDark,
    );
  }

  // ========================================
  // COLOR SCHEMES
  // ========================================

  static ColorScheme get _lightColorScheme {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: AppColors.primary,
      onPrimary: AppColors.white,
      secondary: AppColors.primaryLight,
      onSecondary: AppColors.white,
      tertiary: AppColors.blue,
      onTertiary: AppColors.white,
      error: AppColors.red,
      onError: AppColors.white,
      surface: AppColors.background,
      onSurface: AppColors.textPrimary,
      surfaceContainerHighest: AppColors.backgroundSecondary,
      outline: AppColors.border,
      outlineVariant: AppColors.border,
      shadow: AppColors.shadow,
      scrim: AppColors.overlay,
      inverseSurface: AppColors.black,
      onInverseSurface: AppColors.white,
      inversePrimary: AppColors.primaryLight,
      surfaceTint: AppColors.primary,
      // Material 3 specific colors
      primaryContainer: AppColors.primaryLight,
      onPrimaryContainer: AppColors.white,
      secondaryContainer: AppColors.blue,
      onSecondaryContainer: AppColors.white,
      tertiaryContainer: AppColors.yellow,
      onTertiaryContainer: AppColors.black,
      errorContainer: AppColors.red,
      onErrorContainer: AppColors.white,
    );
  }

  static ColorScheme get _darkColorScheme {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: AppColors.primaryLight,
      onPrimary: AppColors.white,
      secondary: AppColors.blue,
      onSecondary: AppColors.white,
      tertiary: AppColors.yellow,
      onTertiary: AppColors.black,
      error: AppColors.red,
      onError: AppColors.white,
      surface: AppColors.primary2,
      onSurface: AppColors.white,
      surfaceContainerHighest: AppColors.primaryLight,
      outline: AppColors.grey,
      outlineVariant: AppColors.grey,
      shadow: AppColors.shadow,
      scrim: AppColors.overlay,
      inverseSurface: AppColors.white,
      onInverseSurface: AppColors.black,
      inversePrimary: AppColors.primary,
      surfaceTint: AppColors.primaryLight,
      // Material 3 specific colors
      primaryContainer: AppColors.primary,
      onPrimaryContainer: AppColors.white,
      secondaryContainer: AppColors.blue,
      onSecondaryContainer: AppColors.white,
      tertiaryContainer: AppColors.yellow,
      onTertiaryContainer: AppColors.black,
      errorContainer: AppColors.red,
      onErrorContainer: AppColors.white,
    );
  }

  // ========================================
  // APP BAR THEME
  // ========================================

  static AppBarTheme get _appBarTheme {
    return AppBarTheme(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.white,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: AppColors.white,
        fontSize: 18,
        fontWeight: FontWeight.w600,
        fontFamily: 'Noto Sans',
      ),
      iconTheme: const IconThemeData(color: AppColors.white),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
  }

  static AppBarTheme get _appBarThemeDark {
    return AppBarTheme(
      backgroundColor: AppColors.primary2,
      foregroundColor: AppColors.white,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: AppColors.white,
        fontSize: 18,
        fontWeight: FontWeight.w600,
        fontFamily: 'Noto Sans',
      ),
      iconTheme: const IconThemeData(color: AppColors.white),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
  }

  // ========================================
  // CARD THEME
  // ========================================

  static CardThemeData get _cardTheme {
    return CardThemeData(
      color: AppColors.cardBackground,
      elevation: 2,
      shadowColor: AppColors.shadow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: AppColors.border, width: 1),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    );
  }

  static CardThemeData get _cardThemeDark {
    return CardThemeData(
      color: AppColors.primary,
      elevation: 4,
      shadowColor: AppColors.shadow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: AppColors.grey, width: 1),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    );
  }

  // ========================================
  // BUTTON THEMES
  // ========================================

  static ElevatedButtonThemeData get _elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        elevation: 2,
        shadowColor: AppColors.shadow,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: 'Noto Sans',
        ),
      ),
    );
  }

  static ElevatedButtonThemeData get _elevatedButtonThemeDark {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryLight,
        foregroundColor: AppColors.white,
        elevation: 2,
        shadowColor: AppColors.shadow,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: 'Noto Sans',
        ),
      ),
    );
  }

  static OutlinedButtonThemeData get _outlinedButtonTheme {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primary,
        side: const BorderSide(color: AppColors.primary, width: 1.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: 'Noto Sans',
        ),
      ),
    );
  }

  static OutlinedButtonThemeData get _outlinedButtonThemeDark {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primaryLight,
        side: const BorderSide(color: AppColors.primaryLight, width: 1.5),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          fontFamily: 'Noto Sans',
        ),
      ),
    );
  }

  static TextButtonThemeData get _textButtonTheme {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: 'Noto Sans',
        ),
      ),
    );
  }

  static TextButtonThemeData get _textButtonThemeDark {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primaryLight,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          fontFamily: 'Noto Sans',
        ),
      ),
    );
  }

  // ========================================
  // INPUT DECORATION THEME
  // ========================================

  static InputDecorationTheme get _inputDecorationTheme {
    return InputDecorationTheme(
      filled: true,
      fillColor: AppColors.backgroundSecondary,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.border),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.border),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.primary, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.red, width: 2),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.red, width: 2),
      ),
      hintStyle: TextStyle(
        color: AppColors.textSecondary,
        fontSize: 14,
        fontFamily: 'Noto Sans',
      ),
      labelStyle: TextStyle(
        color: AppColors.textSecondary,
        fontSize: 14,
        fontFamily: 'Noto Sans',
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    );
  }

  static InputDecorationTheme get _inputDecorationThemeDark {
    return InputDecorationTheme(
      filled: true,
      fillColor: AppColors.primary,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.grey),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.primaryLight, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.red, width: 2),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.red, width: 2),
      ),
      hintStyle: TextStyle(
        color: AppColors.grey,
        fontSize: 14,
        fontFamily: 'Noto Sans',
      ),
      labelStyle: TextStyle(
        color: AppColors.grey,
        fontSize: 14,
        fontFamily: 'Noto Sans',
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    );
  }

  // ========================================
  // BOTTOM NAVIGATION BAR THEME
  // ========================================

  static BottomNavigationBarThemeData get _bottomNavigationBarTheme {
    return BottomNavigationBarThemeData(
      backgroundColor: AppColors.white,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.grey,
      type: BottomNavigationBarType.fixed,
      elevation: 8,
      selectedLabelStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        fontFamily: 'Noto Sans',
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        fontFamily: 'Noto Sans',
      ),
    );
  }

  static BottomNavigationBarThemeData get _bottomNavigationBarThemeDark {
    return BottomNavigationBarThemeData(
      backgroundColor: AppColors.primary2,
      selectedItemColor: AppColors.primaryLight,
      unselectedItemColor: AppColors.grey,
      type: BottomNavigationBarType.fixed,
      elevation: 8,
      selectedLabelStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        fontFamily: 'Noto Sans',
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        fontFamily: 'Noto Sans',
      ),
    );
  }

  // ========================================
  // FLOATING ACTION BUTTON THEME
  // ========================================

  static FloatingActionButtonThemeData get _floatingActionButtonTheme {
    return FloatingActionButtonThemeData(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.white,
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    );
  }

  static FloatingActionButtonThemeData get _floatingActionButtonThemeDark {
    return FloatingActionButtonThemeData(
      backgroundColor: AppColors.primaryLight,
      foregroundColor: AppColors.white,
      elevation: 6,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    );
  }

  // ========================================
  // DIALOG THEME
  // ========================================

  static DialogThemeData get _dialogTheme {
    return DialogThemeData(
      backgroundColor: AppColors.white,
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      titleTextStyle: TextStyle(
        color: AppColors.textPrimary,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        fontFamily: 'Noto Sans',
      ),
      contentTextStyle: TextStyle(
        color: AppColors.textSecondary,
        fontSize: 16,
        fontFamily: 'Noto Sans',
      ),
    );
  }

  static DialogThemeData get _dialogThemeDark {
    return DialogThemeData(
      backgroundColor: AppColors.primary,
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      titleTextStyle: TextStyle(
        color: AppColors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        fontFamily: 'Noto Sans',
      ),
      contentTextStyle: TextStyle(
        color: AppColors.white,
        fontSize: 16,
        fontFamily: 'Noto Sans',
      ),
    );
  }

  // ========================================
  // SNACKBAR THEME
  // ========================================

  static SnackBarThemeData get _snackBarTheme {
    return SnackBarThemeData(
      backgroundColor: AppColors.textPrimary,
      contentTextStyle: TextStyle(
        color: AppColors.white,
        fontSize: 14,
        fontFamily: 'Noto Sans',
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      behavior: SnackBarBehavior.floating,
    );
  }

  static SnackBarThemeData get _snackBarThemeDark {
    return SnackBarThemeData(
      backgroundColor: AppColors.white,
      contentTextStyle: TextStyle(
        color: AppColors.textPrimary,
        fontSize: 14,
        fontFamily: 'Noto Sans',
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      behavior: SnackBarBehavior.floating,
    );
  }

  // ========================================
  // CHIP THEME
  // ========================================

  static ChipThemeData get _chipTheme {
    return ChipThemeData(
      backgroundColor: AppColors.backgroundSecondary,
      selectedColor: AppColors.primary,
      disabledColor: AppColors.disabledBackground,
      labelStyle: TextStyle(
        color: AppColors.textPrimary,
        fontSize: 14,
        fontFamily: 'Noto Sans',
      ),
      secondaryLabelStyle: TextStyle(
        color: AppColors.white,
        fontSize: 14,
        fontFamily: 'Noto Sans',
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      side: const BorderSide(color: AppColors.border),
    );
  }

  static ChipThemeData get _chipThemeDark {
    return ChipThemeData(
      backgroundColor: AppColors.primary,
      selectedColor: AppColors.primaryLight,
      disabledColor: AppColors.disabledBackground,
      labelStyle: TextStyle(
        color: AppColors.white,
        fontSize: 14,
        fontFamily: 'Noto Sans',
      ),
      secondaryLabelStyle: TextStyle(
        color: AppColors.white,
        fontSize: 14,
        fontFamily: 'Noto Sans',
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      side: const BorderSide(color: AppColors.grey),
    );
  }

  // ========================================
  // DIVIDER THEME
  // ========================================

  static DividerThemeData get _dividerTheme {
    return const DividerThemeData(
      color: AppColors.border,
      thickness: 1,
      space: 1,
    );
  }

  static DividerThemeData get _dividerThemeDark {
    return const DividerThemeData(
      color: AppColors.grey,
      thickness: 1,
      space: 1,
    );
  }

  // ========================================
  // ICON THEME
  // ========================================

  static IconThemeData get _iconTheme {
    return const IconThemeData(color: AppColors.textPrimary, size: 24);
  }

  static IconThemeData get _iconThemeDark {
    return const IconThemeData(color: AppColors.white, size: 24);
  }

  // ========================================
  // TEXT THEME
  // ========================================

  static TextTheme get _textTheme {
    return const TextTheme(
      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
        fontFamily: 'Noto Sans',
      ),
      displayMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
        fontFamily: 'Noto Sans',
      ),
      displaySmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppColors.textPrimary,
        fontFamily: 'Noto Sans',
      ),
      headlineLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
        fontFamily: 'Noto Sans',
      ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
        fontFamily: 'Noto Sans',
      ),
      headlineSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
        fontFamily: 'Noto Sans',
      ),
      titleLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppColors.textPrimary,
        fontFamily: 'Noto Sans',
      ),
      titleMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.textPrimary,
        fontFamily: 'Noto Sans',
      ),
      titleSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppColors.textSecondary,
        fontFamily: 'Noto Sans',
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: AppColors.textPrimary,
        fontFamily: 'Noto Sans',
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: AppColors.textPrimary,
        fontFamily: 'Noto Sans',
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: AppColors.textSecondary,
        fontFamily: 'Noto Sans',
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.textPrimary,
        fontFamily: 'Noto Sans',
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppColors.textSecondary,
        fontFamily: 'Noto Sans',
      ),
      labelSmall: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: AppColors.textSecondary,
        fontFamily: 'Noto Sans',
      ),
    );
  }

  static TextTheme get _textThemeDark {
    return const TextTheme(
      displayLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: AppColors.white,
        fontFamily: 'Noto Sans',
      ),
      displayMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: AppColors.white,
        fontFamily: 'Noto Sans',
      ),
      displaySmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: AppColors.white,
        fontFamily: 'Noto Sans',
      ),
      headlineLarge: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: AppColors.white,
        fontFamily: 'Noto Sans',
      ),
      headlineMedium: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        color: AppColors.white,
        fontFamily: 'Noto Sans',
      ),
      headlineSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: AppColors.white,
        fontFamily: 'Noto Sans',
      ),
      titleLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppColors.white,
        fontFamily: 'Noto Sans',
      ),
      titleMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.white,
        fontFamily: 'Noto Sans',
      ),
      titleSmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppColors.grey,
        fontFamily: 'Noto Sans',
      ),
      bodyLarge: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: AppColors.white,
        fontFamily: 'Noto Sans',
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: AppColors.white,
        fontFamily: 'Noto Sans',
      ),
      bodySmall: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: AppColors.grey,
        fontFamily: 'Noto Sans',
      ),
      labelLarge: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: AppColors.white,
        fontFamily: 'Noto Sans',
      ),
      labelMedium: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: AppColors.grey,
        fontFamily: 'Noto Sans',
      ),
      labelSmall: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: AppColors.grey,
        fontFamily: 'Noto Sans',
      ),
    );
  }

  // ========================================
  // SYSTEM OVERLAY STYLE
  // ========================================

  static SystemUiOverlayStyle get _systemOverlayStyle {
    return const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: AppColors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    );
  }

  static SystemUiOverlayStyle get _systemOverlayStyleDark {
    return const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: AppColors.primary2,
      systemNavigationBarIconBrightness: Brightness.light,
    );
  }
}
