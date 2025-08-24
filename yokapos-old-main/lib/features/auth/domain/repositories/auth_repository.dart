import 'package:dartz/dartz.dart';
import 'package:yokapos/core/errors/failures.dart';
import 'package:yokapos/features/auth/data/models/requests/login_request_model.dart';
import 'package:yokapos/features/auth/data/models/responses/login_response_model.dart';

abstract class AuthRepository {
  Future<Either<Failure, LoginResponseModel?>> login({
    required LoginRequestModel request,
  });
  Future<LoginResponseModel?> isLoggedIn();
  Future<void> isFirstRun();
}
