import 'package:injectable/injectable.dart';
import 'package:yokapos/core/usecases/usecase.dart';
import 'package:yokapos/features/auth/data/models/responses/login_response_model.dart';
import 'package:yokapos/features/auth/domain/repositories/auth_repository.dart';

@injectable
class CheckLoginStatusUseCase
    implements PlainUseCase<LoginResponseModel?, NoParams> {
  final AuthRepository repository;

  CheckLoginStatusUseCase(this.repository);

  @override
  Future<LoginResponseModel?> call(NoParams params) async {
    return await repository.isLoggedIn();
  }
}
