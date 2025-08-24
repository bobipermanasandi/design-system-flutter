part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _AuthInitial;
  const factory AuthState.loading() = _AuthLoading;
  const factory AuthState.success(LoginResponseModel response) = _AuthSuccess;
  const factory AuthState.failure(String message) = _AuthFailure;
  const factory AuthState.authenticated(User? user) = _AuthAuthenticated;
  const factory AuthState.unauthenticated(String? message) =
      _AuthUnAuthenticated;
}
