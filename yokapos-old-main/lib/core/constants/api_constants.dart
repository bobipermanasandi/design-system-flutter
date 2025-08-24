/// API Constants
///
/// Contains all API endpoints and configuration
class ApiConstants {
  ApiConstants._();

  // Base URLs
  static const String baseUrl = 'http://192.168.0.36:8000';

  // Image URLs
  static const String imageBaseUrl = '$baseUrl/storage/products/';

  // Endpoints
  static const String loginUrl = '/api/login';

  // Parameters
  static const String resultsParam = 'results';

  // Headers
  static const Map<String, String> defaultHeaders = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };

  // Timeouts
  static const int connectTimeout = 30000; // 30 seconds
  static const int receiveTimeout = 30000; // 30 seconds
  static const int sendTimeout = 30000; // 30 seconds

  // Retry configuration
  static const int maxRetries = 3;
  static const Duration retryDelay = Duration(seconds: 2);
}
