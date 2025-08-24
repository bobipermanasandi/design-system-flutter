// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequestModel request) loginRequested,
    required TResult Function() checkLoginStatus,
    required TResult Function() checkFirstRunApp,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequestModel request)? loginRequested,
    TResult? Function()? checkLoginStatus,
    TResult? Function()? checkFirstRunApp,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequestModel request)? loginRequested,
    TResult Function()? checkLoginStatus,
    TResult Function()? checkFirstRunApp,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequested value) loginRequested,
    required TResult Function(CheckLoginStatus value) checkLoginStatus,
    required TResult Function(CheckFirstRunApp value) checkFirstRunApp,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginRequested value)? loginRequested,
    TResult? Function(CheckLoginStatus value)? checkLoginStatus,
    TResult? Function(CheckFirstRunApp value)? checkFirstRunApp,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequested value)? loginRequested,
    TResult Function(CheckLoginStatus value)? checkLoginStatus,
    TResult Function(CheckFirstRunApp value)? checkFirstRunApp,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoginRequestedImplCopyWith<$Res> {
  factory _$$LoginRequestedImplCopyWith(
    _$LoginRequestedImpl value,
    $Res Function(_$LoginRequestedImpl) then,
  ) = __$$LoginRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginRequestModel request});

  $LoginRequestModelCopyWith<$Res> get request;
}

/// @nodoc
class __$$LoginRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginRequestedImpl>
    implements _$$LoginRequestedImplCopyWith<$Res> {
  __$$LoginRequestedImplCopyWithImpl(
    _$LoginRequestedImpl _value,
    $Res Function(_$LoginRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? request = null}) {
    return _then(
      _$LoginRequestedImpl(
        null == request
            ? _value.request
            : request // ignore: cast_nullable_to_non_nullable
                  as LoginRequestModel,
      ),
    );
  }

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginRequestModelCopyWith<$Res> get request {
    return $LoginRequestModelCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$LoginRequestedImpl implements LoginRequested {
  const _$LoginRequestedImpl(this.request);

  @override
  final LoginRequestModel request;

  @override
  String toString() {
    return 'AuthEvent.loginRequested(request: $request)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginRequestedImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginRequestedImplCopyWith<_$LoginRequestedImpl> get copyWith =>
      __$$LoginRequestedImplCopyWithImpl<_$LoginRequestedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequestModel request) loginRequested,
    required TResult Function() checkLoginStatus,
    required TResult Function() checkFirstRunApp,
  }) {
    return loginRequested(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequestModel request)? loginRequested,
    TResult? Function()? checkLoginStatus,
    TResult? Function()? checkFirstRunApp,
  }) {
    return loginRequested?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequestModel request)? loginRequested,
    TResult Function()? checkLoginStatus,
    TResult Function()? checkFirstRunApp,
    required TResult orElse(),
  }) {
    if (loginRequested != null) {
      return loginRequested(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequested value) loginRequested,
    required TResult Function(CheckLoginStatus value) checkLoginStatus,
    required TResult Function(CheckFirstRunApp value) checkFirstRunApp,
  }) {
    return loginRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginRequested value)? loginRequested,
    TResult? Function(CheckLoginStatus value)? checkLoginStatus,
    TResult? Function(CheckFirstRunApp value)? checkFirstRunApp,
  }) {
    return loginRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequested value)? loginRequested,
    TResult Function(CheckLoginStatus value)? checkLoginStatus,
    TResult Function(CheckFirstRunApp value)? checkFirstRunApp,
    required TResult orElse(),
  }) {
    if (loginRequested != null) {
      return loginRequested(this);
    }
    return orElse();
  }
}

abstract class LoginRequested implements AuthEvent {
  const factory LoginRequested(final LoginRequestModel request) =
      _$LoginRequestedImpl;

  LoginRequestModel get request;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginRequestedImplCopyWith<_$LoginRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckLoginStatusImplCopyWith<$Res> {
  factory _$$CheckLoginStatusImplCopyWith(
    _$CheckLoginStatusImpl value,
    $Res Function(_$CheckLoginStatusImpl) then,
  ) = __$$CheckLoginStatusImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckLoginStatusImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckLoginStatusImpl>
    implements _$$CheckLoginStatusImplCopyWith<$Res> {
  __$$CheckLoginStatusImplCopyWithImpl(
    _$CheckLoginStatusImpl _value,
    $Res Function(_$CheckLoginStatusImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckLoginStatusImpl implements CheckLoginStatus {
  const _$CheckLoginStatusImpl();

  @override
  String toString() {
    return 'AuthEvent.checkLoginStatus()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckLoginStatusImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequestModel request) loginRequested,
    required TResult Function() checkLoginStatus,
    required TResult Function() checkFirstRunApp,
  }) {
    return checkLoginStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequestModel request)? loginRequested,
    TResult? Function()? checkLoginStatus,
    TResult? Function()? checkFirstRunApp,
  }) {
    return checkLoginStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequestModel request)? loginRequested,
    TResult Function()? checkLoginStatus,
    TResult Function()? checkFirstRunApp,
    required TResult orElse(),
  }) {
    if (checkLoginStatus != null) {
      return checkLoginStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequested value) loginRequested,
    required TResult Function(CheckLoginStatus value) checkLoginStatus,
    required TResult Function(CheckFirstRunApp value) checkFirstRunApp,
  }) {
    return checkLoginStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginRequested value)? loginRequested,
    TResult? Function(CheckLoginStatus value)? checkLoginStatus,
    TResult? Function(CheckFirstRunApp value)? checkFirstRunApp,
  }) {
    return checkLoginStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequested value)? loginRequested,
    TResult Function(CheckLoginStatus value)? checkLoginStatus,
    TResult Function(CheckFirstRunApp value)? checkFirstRunApp,
    required TResult orElse(),
  }) {
    if (checkLoginStatus != null) {
      return checkLoginStatus(this);
    }
    return orElse();
  }
}

abstract class CheckLoginStatus implements AuthEvent {
  const factory CheckLoginStatus() = _$CheckLoginStatusImpl;
}

/// @nodoc
abstract class _$$CheckFirstRunAppImplCopyWith<$Res> {
  factory _$$CheckFirstRunAppImplCopyWith(
    _$CheckFirstRunAppImpl value,
    $Res Function(_$CheckFirstRunAppImpl) then,
  ) = __$$CheckFirstRunAppImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckFirstRunAppImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckFirstRunAppImpl>
    implements _$$CheckFirstRunAppImplCopyWith<$Res> {
  __$$CheckFirstRunAppImplCopyWithImpl(
    _$CheckFirstRunAppImpl _value,
    $Res Function(_$CheckFirstRunAppImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckFirstRunAppImpl implements CheckFirstRunApp {
  const _$CheckFirstRunAppImpl();

  @override
  String toString() {
    return 'AuthEvent.checkFirstRunApp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckFirstRunAppImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoginRequestModel request) loginRequested,
    required TResult Function() checkLoginStatus,
    required TResult Function() checkFirstRunApp,
  }) {
    return checkFirstRunApp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoginRequestModel request)? loginRequested,
    TResult? Function()? checkLoginStatus,
    TResult? Function()? checkFirstRunApp,
  }) {
    return checkFirstRunApp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoginRequestModel request)? loginRequested,
    TResult Function()? checkLoginStatus,
    TResult Function()? checkFirstRunApp,
    required TResult orElse(),
  }) {
    if (checkFirstRunApp != null) {
      return checkFirstRunApp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginRequested value) loginRequested,
    required TResult Function(CheckLoginStatus value) checkLoginStatus,
    required TResult Function(CheckFirstRunApp value) checkFirstRunApp,
  }) {
    return checkFirstRunApp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginRequested value)? loginRequested,
    TResult? Function(CheckLoginStatus value)? checkLoginStatus,
    TResult? Function(CheckFirstRunApp value)? checkFirstRunApp,
  }) {
    return checkFirstRunApp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginRequested value)? loginRequested,
    TResult Function(CheckLoginStatus value)? checkLoginStatus,
    TResult Function(CheckFirstRunApp value)? checkFirstRunApp,
    required TResult orElse(),
  }) {
    if (checkFirstRunApp != null) {
      return checkFirstRunApp(this);
    }
    return orElse();
  }
}

abstract class CheckFirstRunApp implements AuthEvent {
  const factory CheckFirstRunApp() = _$CheckFirstRunAppImpl;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginResponseModel response) success,
    required TResult Function(String message) failure,
    required TResult Function(User? user) authenticated,
    required TResult Function(String? message) unauthenticated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginResponseModel response)? success,
    TResult? Function(String message)? failure,
    TResult? Function(User? user)? authenticated,
    TResult? Function(String? message)? unauthenticated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponseModel response)? success,
    TResult Function(String message)? failure,
    TResult Function(User? user)? authenticated,
    TResult Function(String? message)? unauthenticated,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthLoading value) loading,
    required TResult Function(_AuthSuccess value) success,
    required TResult Function(_AuthFailure value) failure,
    required TResult Function(_AuthAuthenticated value) authenticated,
    required TResult Function(_AuthUnAuthenticated value) unauthenticated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthLoading value)? loading,
    TResult? Function(_AuthSuccess value)? success,
    TResult? Function(_AuthFailure value)? failure,
    TResult? Function(_AuthAuthenticated value)? authenticated,
    TResult? Function(_AuthUnAuthenticated value)? unauthenticated,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthLoading value)? loading,
    TResult Function(_AuthSuccess value)? success,
    TResult Function(_AuthFailure value)? failure,
    TResult Function(_AuthAuthenticated value)? authenticated,
    TResult Function(_AuthUnAuthenticated value)? unauthenticated,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AuthInitialImplCopyWith<$Res> {
  factory _$$AuthInitialImplCopyWith(
    _$AuthInitialImpl value,
    $Res Function(_$AuthInitialImpl) then,
  ) = __$$AuthInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthInitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthInitialImpl>
    implements _$$AuthInitialImplCopyWith<$Res> {
  __$$AuthInitialImplCopyWithImpl(
    _$AuthInitialImpl _value,
    $Res Function(_$AuthInitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthInitialImpl implements _AuthInitial {
  const _$AuthInitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginResponseModel response) success,
    required TResult Function(String message) failure,
    required TResult Function(User? user) authenticated,
    required TResult Function(String? message) unauthenticated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginResponseModel response)? success,
    TResult? Function(String message)? failure,
    TResult? Function(User? user)? authenticated,
    TResult? Function(String? message)? unauthenticated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponseModel response)? success,
    TResult Function(String message)? failure,
    TResult Function(User? user)? authenticated,
    TResult Function(String? message)? unauthenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthLoading value) loading,
    required TResult Function(_AuthSuccess value) success,
    required TResult Function(_AuthFailure value) failure,
    required TResult Function(_AuthAuthenticated value) authenticated,
    required TResult Function(_AuthUnAuthenticated value) unauthenticated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthLoading value)? loading,
    TResult? Function(_AuthSuccess value)? success,
    TResult? Function(_AuthFailure value)? failure,
    TResult? Function(_AuthAuthenticated value)? authenticated,
    TResult? Function(_AuthUnAuthenticated value)? unauthenticated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthLoading value)? loading,
    TResult Function(_AuthSuccess value)? success,
    TResult Function(_AuthFailure value)? failure,
    TResult Function(_AuthAuthenticated value)? authenticated,
    TResult Function(_AuthUnAuthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AuthInitial implements AuthState {
  const factory _AuthInitial() = _$AuthInitialImpl;
}

/// @nodoc
abstract class _$$AuthLoadingImplCopyWith<$Res> {
  factory _$$AuthLoadingImplCopyWith(
    _$AuthLoadingImpl value,
    $Res Function(_$AuthLoadingImpl) then,
  ) = __$$AuthLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthLoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthLoadingImpl>
    implements _$$AuthLoadingImplCopyWith<$Res> {
  __$$AuthLoadingImplCopyWithImpl(
    _$AuthLoadingImpl _value,
    $Res Function(_$AuthLoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AuthLoadingImpl implements _AuthLoading {
  const _$AuthLoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginResponseModel response) success,
    required TResult Function(String message) failure,
    required TResult Function(User? user) authenticated,
    required TResult Function(String? message) unauthenticated,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginResponseModel response)? success,
    TResult? Function(String message)? failure,
    TResult? Function(User? user)? authenticated,
    TResult? Function(String? message)? unauthenticated,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponseModel response)? success,
    TResult Function(String message)? failure,
    TResult Function(User? user)? authenticated,
    TResult Function(String? message)? unauthenticated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthLoading value) loading,
    required TResult Function(_AuthSuccess value) success,
    required TResult Function(_AuthFailure value) failure,
    required TResult Function(_AuthAuthenticated value) authenticated,
    required TResult Function(_AuthUnAuthenticated value) unauthenticated,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthLoading value)? loading,
    TResult? Function(_AuthSuccess value)? success,
    TResult? Function(_AuthFailure value)? failure,
    TResult? Function(_AuthAuthenticated value)? authenticated,
    TResult? Function(_AuthUnAuthenticated value)? unauthenticated,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthLoading value)? loading,
    TResult Function(_AuthSuccess value)? success,
    TResult Function(_AuthFailure value)? failure,
    TResult Function(_AuthAuthenticated value)? authenticated,
    TResult Function(_AuthUnAuthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AuthLoading implements AuthState {
  const factory _AuthLoading() = _$AuthLoadingImpl;
}

/// @nodoc
abstract class _$$AuthSuccessImplCopyWith<$Res> {
  factory _$$AuthSuccessImplCopyWith(
    _$AuthSuccessImpl value,
    $Res Function(_$AuthSuccessImpl) then,
  ) = __$$AuthSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoginResponseModel response});

  $LoginResponseModelCopyWith<$Res> get response;
}

/// @nodoc
class __$$AuthSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthSuccessImpl>
    implements _$$AuthSuccessImplCopyWith<$Res> {
  __$$AuthSuccessImplCopyWithImpl(
    _$AuthSuccessImpl _value,
    $Res Function(_$AuthSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? response = null}) {
    return _then(
      _$AuthSuccessImpl(
        null == response
            ? _value.response
            : response // ignore: cast_nullable_to_non_nullable
                  as LoginResponseModel,
      ),
    );
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LoginResponseModelCopyWith<$Res> get response {
    return $LoginResponseModelCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value));
    });
  }
}

/// @nodoc

class _$AuthSuccessImpl implements _AuthSuccess {
  const _$AuthSuccessImpl(this.response);

  @override
  final LoginResponseModel response;

  @override
  String toString() {
    return 'AuthState.success(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthSuccessImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthSuccessImplCopyWith<_$AuthSuccessImpl> get copyWith =>
      __$$AuthSuccessImplCopyWithImpl<_$AuthSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginResponseModel response) success,
    required TResult Function(String message) failure,
    required TResult Function(User? user) authenticated,
    required TResult Function(String? message) unauthenticated,
  }) {
    return success(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginResponseModel response)? success,
    TResult? Function(String message)? failure,
    TResult? Function(User? user)? authenticated,
    TResult? Function(String? message)? unauthenticated,
  }) {
    return success?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponseModel response)? success,
    TResult Function(String message)? failure,
    TResult Function(User? user)? authenticated,
    TResult Function(String? message)? unauthenticated,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthLoading value) loading,
    required TResult Function(_AuthSuccess value) success,
    required TResult Function(_AuthFailure value) failure,
    required TResult Function(_AuthAuthenticated value) authenticated,
    required TResult Function(_AuthUnAuthenticated value) unauthenticated,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthLoading value)? loading,
    TResult? Function(_AuthSuccess value)? success,
    TResult? Function(_AuthFailure value)? failure,
    TResult? Function(_AuthAuthenticated value)? authenticated,
    TResult? Function(_AuthUnAuthenticated value)? unauthenticated,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthLoading value)? loading,
    TResult Function(_AuthSuccess value)? success,
    TResult Function(_AuthFailure value)? failure,
    TResult Function(_AuthAuthenticated value)? authenticated,
    TResult Function(_AuthUnAuthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _AuthSuccess implements AuthState {
  const factory _AuthSuccess(final LoginResponseModel response) =
      _$AuthSuccessImpl;

  LoginResponseModel get response;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthSuccessImplCopyWith<_$AuthSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthFailureImplCopyWith<$Res> {
  factory _$$AuthFailureImplCopyWith(
    _$AuthFailureImpl value,
    $Res Function(_$AuthFailureImpl) then,
  ) = __$$AuthFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AuthFailureImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthFailureImpl>
    implements _$$AuthFailureImplCopyWith<$Res> {
  __$$AuthFailureImplCopyWithImpl(
    _$AuthFailureImpl _value,
    $Res Function(_$AuthFailureImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$AuthFailureImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$AuthFailureImpl implements _AuthFailure {
  const _$AuthFailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthFailureImplCopyWith<_$AuthFailureImpl> get copyWith =>
      __$$AuthFailureImplCopyWithImpl<_$AuthFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginResponseModel response) success,
    required TResult Function(String message) failure,
    required TResult Function(User? user) authenticated,
    required TResult Function(String? message) unauthenticated,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginResponseModel response)? success,
    TResult? Function(String message)? failure,
    TResult? Function(User? user)? authenticated,
    TResult? Function(String? message)? unauthenticated,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponseModel response)? success,
    TResult Function(String message)? failure,
    TResult Function(User? user)? authenticated,
    TResult Function(String? message)? unauthenticated,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthLoading value) loading,
    required TResult Function(_AuthSuccess value) success,
    required TResult Function(_AuthFailure value) failure,
    required TResult Function(_AuthAuthenticated value) authenticated,
    required TResult Function(_AuthUnAuthenticated value) unauthenticated,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthLoading value)? loading,
    TResult? Function(_AuthSuccess value)? success,
    TResult? Function(_AuthFailure value)? failure,
    TResult? Function(_AuthAuthenticated value)? authenticated,
    TResult? Function(_AuthUnAuthenticated value)? unauthenticated,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthLoading value)? loading,
    TResult Function(_AuthSuccess value)? success,
    TResult Function(_AuthFailure value)? failure,
    TResult Function(_AuthAuthenticated value)? authenticated,
    TResult Function(_AuthUnAuthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _AuthFailure implements AuthState {
  const factory _AuthFailure(final String message) = _$AuthFailureImpl;

  String get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthFailureImplCopyWith<_$AuthFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthAuthenticatedImplCopyWith<$Res> {
  factory _$$AuthAuthenticatedImplCopyWith(
    _$AuthAuthenticatedImpl value,
    $Res Function(_$AuthAuthenticatedImpl) then,
  ) = __$$AuthAuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User? user});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$AuthAuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthAuthenticatedImpl>
    implements _$$AuthAuthenticatedImplCopyWith<$Res> {
  __$$AuthAuthenticatedImplCopyWithImpl(
    _$AuthAuthenticatedImpl _value,
    $Res Function(_$AuthAuthenticatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? user = freezed}) {
    return _then(
      _$AuthAuthenticatedImpl(
        freezed == user
            ? _value.user
            : user // ignore: cast_nullable_to_non_nullable
                  as User?,
      ),
    );
  }

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$AuthAuthenticatedImpl implements _AuthAuthenticated {
  const _$AuthAuthenticatedImpl(this.user);

  @override
  final User? user;

  @override
  String toString() {
    return 'AuthState.authenticated(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthAuthenticatedImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthAuthenticatedImplCopyWith<_$AuthAuthenticatedImpl> get copyWith =>
      __$$AuthAuthenticatedImplCopyWithImpl<_$AuthAuthenticatedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginResponseModel response) success,
    required TResult Function(String message) failure,
    required TResult Function(User? user) authenticated,
    required TResult Function(String? message) unauthenticated,
  }) {
    return authenticated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginResponseModel response)? success,
    TResult? Function(String message)? failure,
    TResult? Function(User? user)? authenticated,
    TResult? Function(String? message)? unauthenticated,
  }) {
    return authenticated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponseModel response)? success,
    TResult Function(String message)? failure,
    TResult Function(User? user)? authenticated,
    TResult Function(String? message)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthLoading value) loading,
    required TResult Function(_AuthSuccess value) success,
    required TResult Function(_AuthFailure value) failure,
    required TResult Function(_AuthAuthenticated value) authenticated,
    required TResult Function(_AuthUnAuthenticated value) unauthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthLoading value)? loading,
    TResult? Function(_AuthSuccess value)? success,
    TResult? Function(_AuthFailure value)? failure,
    TResult? Function(_AuthAuthenticated value)? authenticated,
    TResult? Function(_AuthUnAuthenticated value)? unauthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthLoading value)? loading,
    TResult Function(_AuthSuccess value)? success,
    TResult Function(_AuthFailure value)? failure,
    TResult Function(_AuthAuthenticated value)? authenticated,
    TResult Function(_AuthUnAuthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthAuthenticated implements AuthState {
  const factory _AuthAuthenticated(final User? user) = _$AuthAuthenticatedImpl;

  User? get user;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthAuthenticatedImplCopyWith<_$AuthAuthenticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthUnAuthenticatedImplCopyWith<$Res> {
  factory _$$AuthUnAuthenticatedImplCopyWith(
    _$AuthUnAuthenticatedImpl value,
    $Res Function(_$AuthUnAuthenticatedImpl) then,
  ) = __$$AuthUnAuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$AuthUnAuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthUnAuthenticatedImpl>
    implements _$$AuthUnAuthenticatedImplCopyWith<$Res> {
  __$$AuthUnAuthenticatedImplCopyWithImpl(
    _$AuthUnAuthenticatedImpl _value,
    $Res Function(_$AuthUnAuthenticatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = freezed}) {
    return _then(
      _$AuthUnAuthenticatedImpl(
        freezed == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc

class _$AuthUnAuthenticatedImpl implements _AuthUnAuthenticated {
  const _$AuthUnAuthenticatedImpl(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'AuthState.unauthenticated(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthUnAuthenticatedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthUnAuthenticatedImplCopyWith<_$AuthUnAuthenticatedImpl> get copyWith =>
      __$$AuthUnAuthenticatedImplCopyWithImpl<_$AuthUnAuthenticatedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(LoginResponseModel response) success,
    required TResult Function(String message) failure,
    required TResult Function(User? user) authenticated,
    required TResult Function(String? message) unauthenticated,
  }) {
    return unauthenticated(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(LoginResponseModel response)? success,
    TResult? Function(String message)? failure,
    TResult? Function(User? user)? authenticated,
    TResult? Function(String? message)? unauthenticated,
  }) {
    return unauthenticated?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(LoginResponseModel response)? success,
    TResult Function(String message)? failure,
    TResult Function(User? user)? authenticated,
    TResult Function(String? message)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthInitial value) initial,
    required TResult Function(_AuthLoading value) loading,
    required TResult Function(_AuthSuccess value) success,
    required TResult Function(_AuthFailure value) failure,
    required TResult Function(_AuthAuthenticated value) authenticated,
    required TResult Function(_AuthUnAuthenticated value) unauthenticated,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthInitial value)? initial,
    TResult? Function(_AuthLoading value)? loading,
    TResult? Function(_AuthSuccess value)? success,
    TResult? Function(_AuthFailure value)? failure,
    TResult? Function(_AuthAuthenticated value)? authenticated,
    TResult? Function(_AuthUnAuthenticated value)? unauthenticated,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthInitial value)? initial,
    TResult Function(_AuthLoading value)? loading,
    TResult Function(_AuthSuccess value)? success,
    TResult Function(_AuthFailure value)? failure,
    TResult Function(_AuthAuthenticated value)? authenticated,
    TResult Function(_AuthUnAuthenticated value)? unauthenticated,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _AuthUnAuthenticated implements AuthState {
  const factory _AuthUnAuthenticated(final String? message) =
      _$AuthUnAuthenticatedImpl;

  String? get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthUnAuthenticatedImplCopyWith<_$AuthUnAuthenticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
