import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:yokapos/core/errors/failures.dart';
import 'package:yokapos/core/usecases/usecase.dart';
import 'package:yokapos/features/auth/data/models/requests/login_request_model.dart';
import 'package:yokapos/features/auth/data/models/responses/login_response_model.dart';
import 'package:yokapos/features/auth/domain/repositories/auth_repository.dart';

@injectable
class LoginUsecase implements UseCase<LoginResponseModel?, LoginParams> {
  final AuthRepository repository;

  LoginUsecase(this.repository);

  @override
  Future<Either<Failure, LoginResponseModel?>> call(LoginParams params) async {
    return await repository.login(request: params.request);
  }
}

class LoginParams extends Equatable {
  final LoginRequestModel request;

  const LoginParams({required this.request});

  @override
  List<Object> get props => [request];
}
