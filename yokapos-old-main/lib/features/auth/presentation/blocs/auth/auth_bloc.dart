import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:yokapos/core/usecases/usecase.dart';
import 'package:yokapos/features/auth/data/models/requests/login_request_model.dart';
import 'package:yokapos/features/auth/data/models/responses/login_response_model.dart';
import 'package:yokapos/features/auth/data/models/responses/user.dart';
import 'package:yokapos/features/auth/domain/usecases/check_first_run_usecase.dart';
import 'package:yokapos/features/auth/domain/usecases/check_login_status_usecase.dart';
import 'package:yokapos/features/auth/domain/usecases/login_usecase.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUsecase loginUsecase;
  final CheckLoginStatusUseCase checkLoginStatusUseCase;
  final CheckFirstRunUseCase checkFirstRunUseCase;

  AuthBloc({
    required this.loginUsecase,
    required this.checkLoginStatusUseCase,
    required this.checkFirstRunUseCase,
  }) : super(const AuthState.initial()) {
    on<CheckFirstRunApp>((event, emit) async {
      await checkFirstRunUseCase(NoParams());
      add(const CheckLoginStatus());
    });

    on<CheckLoginStatus>((event, emit) async {
      final data = await checkLoginStatusUseCase(NoParams());

      if (data?.user != null) {
        emit(AuthState.authenticated(data?.user));
      } else {
        emit(AuthState.unauthenticated(''));
      }
    });

    on<LoginRequested>((event, emit) async {
      emit(const AuthState.loading());

      final result = await loginUsecase(LoginParams(request: event.request));

      emit(
        result.fold(
          (failure) => AuthState.failure(failure.message),
          (data) => AuthState.authenticated(data?.user),
        ),
      );
    });
  }
}
