/// Base Exception class
/// 
/// All custom exceptions should extend this class
abstract class AppException implements Exception {
  const AppException({
    required this.message,
    this.code,
  });

  final String message;
  final String? code;

  @override
  String toString() => 'AppException: $message${code != null ? ' (Code: $code)' : ''}';
}

/// Server Exception
/// 
/// Thrown when server returns an error
class ServerException extends AppException {
  const ServerException({
    required super.message,
    super.code,
    this.statusCode,
  });

  final int? statusCode;

  @override
  String toString() => 'ServerException: $message${statusCode != null ? ' (Status: $statusCode)' : ''}${code != null ? ' (Code: $code)' : ''}';
}

/// Network Exception
/// 
/// Thrown when there's no internet connection
class NetworkException extends AppException {
  const NetworkException({
    super.message = 'No internet connection',
    super.code = 'NETWORK_ERROR',
  });
}

/// Cache Exception
/// 
/// Thrown when local cache operation fails
class CacheException extends AppException {
  const CacheException({
    required super.message,
    super.code = 'CACHE_ERROR',
  });
}

/// Database Exception
/// 
/// Thrown when database operation fails
class DatabaseException extends AppException {
  const DatabaseException({
    required super.message,
    super.code = 'DATABASE_ERROR',
  });
}

/// Validation Exception
/// 
/// Thrown when input validation fails
class ValidationException extends AppException {
  const ValidationException({
    required super.message,
    super.code = 'VALIDATION_ERROR',
    this.field,
  });

  final String? field;

  @override
  String toString() => 'ValidationException: $message${field != null ? ' (Field: $field)' : ''}${code != null ? ' (Code: $code)' : ''}';
}

/// Authentication Exception
/// 
/// Thrown when authentication fails
class AuthException extends AppException {
  const AuthException({
    required super.message,
    super.code = 'AUTH_ERROR',
  });
}

/// Permission Exception
/// 
/// Thrown when permission is denied
class PermissionException extends AppException {
  const PermissionException({
    required super.message,
    super.code = 'PERMISSION_ERROR',
  });
}

/// Timeout Exception
/// 
/// Thrown when operation times out
class TimeoutException extends AppException {
  const TimeoutException({
    super.message = 'Operation timed out',
    super.code = 'TIMEOUT_ERROR',
  });
}

/// Parse Exception
/// 
/// Thrown when JSON parsing fails
class ParseException extends AppException {
  const ParseException({
    super.message = 'Failed to parse data',
    super.code = 'PARSE_ERROR',
  });
}