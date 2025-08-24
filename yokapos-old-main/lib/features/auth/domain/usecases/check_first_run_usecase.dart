import 'package:injectable/injectable.dart';
import 'package:yokapos/core/usecases/usecase.dart';
import 'package:yokapos/features/auth/domain/repositories/auth_repository.dart';

@injectable
class CheckFirstRunUseCase implements PlainUseCase<void, NoParams> {
  final AuthRepository repository;

  CheckFirstRunUseCase(this.repository);

  @override
  Future<void> call(NoParams params) async {
    return await repository.isFirstRun();
  }
}
