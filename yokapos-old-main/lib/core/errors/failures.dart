import 'package:equatable/equatable.dart';

/// Base Failure class
/// 
/// All failures should extend this class
abstract class Failure extends Equatable {
  const Failure({
    required this.message,
    this.code,
  });

  final String message;
  final String? code;

  @override
  List<Object?> get props => [message, code];
}

/// Server Failure
/// 
/// Used when server returns an error
class ServerFailure extends Failure {
  const ServerFailure({
    required super.message,
    super.code,
    this.statusCode,
  });

  final int? statusCode;

  @override
  List<Object?> get props => [message, code, statusCode];
}

/// Network Failure
/// 
/// Used when there's no internet connection
class NetworkFailure extends Failure {
  const NetworkFailure({
    super.message = 'No internet connection',
    super.code = 'NETWORK_ERROR',
  });
}

/// Cache Failure
/// 
/// Used when local cache operation fails
class CacheFailure extends Failure {
  const CacheFailure({
    required super.message,
    super.code = 'CACHE_ERROR',
  });
}

/// Database Failure
/// 
/// Used when database operation fails
class DatabaseFailure extends Failure {
  const DatabaseFailure({
    required super.message,
    super.code = 'DATABASE_ERROR',
  });
}

/// Validation Failure
/// 
/// Used when input validation fails
class ValidationFailure extends Failure {
  const ValidationFailure({
    required super.message,
    super.code = 'VALIDATION_ERROR',
    this.field,
  });

  final String? field;

  @override
  List<Object?> get props => [message, code, field];
}

/// Authentication Failure
/// 
/// Used when authentication fails
class AuthFailure extends Failure {
  const AuthFailure({
    required super.message,
    super.code = 'AUTH_ERROR',
  });
}

/// Permission Failure
/// 
/// Used when permission is denied
class PermissionFailure extends Failure {
  const PermissionFailure({
    required super.message,
    super.code = 'PERMISSION_ERROR',
  });
}

/// Timeout Failure
/// 
/// Used when operation times out
class TimeoutFailure extends Failure {
  const TimeoutFailure({
    super.message = 'Operation timed out',
    super.code = 'TIMEOUT_ERROR',
  });
}

/// Unknown Failure
/// 
/// Used for unexpected errors
class UnknownFailure extends Failure {
  const UnknownFailure({
    super.message = 'An unexpected error occurred',
    super.code = 'UNKNOWN_ERROR',
  });
}