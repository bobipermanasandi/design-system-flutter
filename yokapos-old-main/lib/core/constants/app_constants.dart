/// App Constants
///
/// Contains application-wide constants
class AppConstants {
  AppConstants._();

  // App Info
  static const String appName = 'Yoka POS';
  static const String appVersion = '1.0.0';

  // Database
  static const String databaseName = 'yokapos.db';
  static const int databaseVersion = 1;

  // Storage Keys
  static const String themeKey = 'theme_mode';
  static const String firstLaunchKey = 'first_launch';
  static const String userTokenKey = 'user_token';
  static const String lastSyncKey = 'last_sync';

  // Cache
  static const Duration cacheExpiration = Duration(hours: 24);
  static const int maxCacheSize = 100; // Maximum number of cached items

  // Pagination
  static const int defaultPageSize = 20;
  static const int maxPageSize = 50;

  // Image
  static const String placeholderImage = 'assets/images/placeholder.png';
  static const Duration imageLoadTimeout = Duration(seconds: 10);

  // Animation
  static const Duration defaultAnimationDuration = Duration(milliseconds: 300);
  static const Duration shortAnimationDuration = Duration(milliseconds: 150);
  static const Duration longAnimationDuration = Duration(milliseconds: 500);
}
