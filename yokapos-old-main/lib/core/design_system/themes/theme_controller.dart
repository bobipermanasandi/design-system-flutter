import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Theme Controller
///
/// Manages the application's theme state and provides methods to toggle between
/// light and dark modes with persistent storage support.
@singleton
class ThemeController extends ChangeNotifier {
  static const String _themeKey = 'theme_mode';

  ThemeMode _themeMode = ThemeMode.system;

  /// Current theme mode
  ThemeMode get themeMode => _themeMode;

  /// Whether dark mode is currently active
  bool get isDarkMode {
    switch (_themeMode) {
      case ThemeMode.light:
        return false;
      case ThemeMode.dark:
        return true;
      case ThemeMode.system:
        return WidgetsBinding.instance.platformDispatcher.platformBrightness ==
            Brightness.dark;
    }
  }

  /// Whether system theme is being used
  bool get isSystemMode => _themeMode == ThemeMode.system;

  /// Initialize theme from stored preferences
  Future<void> initialize() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final themeModeString = prefs.getString(_themeKey);

      if (themeModeString != null) {
        _themeMode = _parseThemeMode(themeModeString);
      } else {
        _themeMode = ThemeMode.system;
      }

      _updateSystemUIOverlay();
      notifyListeners();
    } catch (e) {
      // If there's an error loading preferences, default to system theme
      _themeMode = ThemeMode.system;
      notifyListeners();
    }
  }

  /// Set theme mode
  void setThemeMode(ThemeMode mode) {
    if (_themeMode == mode) return;

    _themeMode = mode;
    _saveThemePreference();
    _updateSystemUIOverlay();
    notifyListeners();
  }

  /// Toggle between light and dark mode
  void toggleTheme() {
    switch (_themeMode) {
      case ThemeMode.light:
        setThemeMode(ThemeMode.dark);
        break;
      case ThemeMode.dark:
        setThemeMode(ThemeMode.system);
        break;
      case ThemeMode.system:
        setThemeMode(ThemeMode.light);
        break;
    }
  }

  /// Toggle between light and dark (skip system)
  void toggleLightDark() {
    if (_themeMode == ThemeMode.light ||
        (_themeMode == ThemeMode.system && !isDarkMode)) {
      setThemeMode(ThemeMode.dark);
    } else {
      setThemeMode(ThemeMode.light);
    }
  }

  /// Save theme preference
  void _saveThemePreference() {
    SharedPreferences.getInstance()
        .then((prefs) {
          prefs.setString(_themeKey, _themeMode.name);
        })
        .catchError((error) {
          // Handle save error silently
          debugPrint('Failed to save theme preference: $error');
        });
  }

  /// Update system UI overlay style based on current theme
  void _updateSystemUIOverlay() {
    SystemChrome.setSystemUIOverlayStyle(
      isDarkMode
          ? SystemUiOverlayStyle.light.copyWith(
              systemNavigationBarColor: const Color(0xFF121212),
              systemNavigationBarIconBrightness: Brightness.light,
            )
          : SystemUiOverlayStyle.dark.copyWith(
              systemNavigationBarColor: const Color(0xFFFAFAFA),
              systemNavigationBarIconBrightness: Brightness.dark,
            ),
    );
  }

  /// Get theme mode name for display
  String get themeModeDisplayName {
    switch (_themeMode) {
      case ThemeMode.light:
        return 'Light';
      case ThemeMode.dark:
        return 'Dark';
      case ThemeMode.system:
        return 'System';
    }
  }

  /// Get appropriate icon for current theme mode
  IconData get themeIcon {
    switch (_themeMode) {
      case ThemeMode.light:
        return Icons.light_mode;
      case ThemeMode.dark:
        return Icons.dark_mode;
      case ThemeMode.system:
        return Icons.auto_mode;
    }
  }

  /// Parse theme mode from string
  ThemeMode _parseThemeMode(String themeModeString) {
    switch (themeModeString) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      case 'system':
        return ThemeMode.system;
      default:
        return ThemeMode.system;
    }
  }
}
