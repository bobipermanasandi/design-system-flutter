import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:yokapos/core/errors/failures.dart';
import 'package:yokapos/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:yokapos/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:yokapos/features/auth/data/models/requests/login_request_model.dart';
import 'package:yokapos/features/auth/data/models/responses/login_response_model.dart';
import 'package:yokapos/features/auth/domain/repositories/auth_repository.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;

  AuthRepositoryImpl(this.remoteDataSource, this.localDataSource);

  @override
  Future<Either<Failure, LoginResponseModel?>> login({
    required LoginRequestModel request,
  }) async {
    final result = await remoteDataSource.login(request: request);
    return result.fold((l) => Left(l), (r) async {
      if (r != null && r.data != null) {
        await localDataSource.saveToken(r.data!.token!);
        await localDataSource.saveUser(r.data!.user!);
        return Right(r.data!);
      } else {
        return Left(ServerFailure(message: 'Login gagal'));
      }
    });
  }

  @override
  Future<LoginResponseModel?> isLoggedIn() async {
    final token = await localDataSource.getToken();
    final user = await localDataSource.getUser();

    return LoginResponseModel(user: user, token: token);
  }

  @override
  Future<void> isFirstRun() async {
    await localDataSource.checkFirstRun();
  }
}
