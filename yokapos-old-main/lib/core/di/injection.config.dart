// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:connectivity_plus/connectivity_plus.dart' as _i895;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../../features/auth/data/datasources/auth_local_datasource.dart'
    as _i992;
import '../../features/auth/data/datasources/auth_remote_datasource.dart'
    as _i161;
import '../../features/auth/data/repositories/auth_repository_impl.dart'
    as _i153;
import '../../features/auth/domain/repositories/auth_repository.dart' as _i787;
import '../../features/auth/domain/usecases/check_first_run_usecase.dart'
    as _i317;
import '../../features/auth/domain/usecases/check_login_status_usecase.dart'
    as _i724;
import '../../features/auth/domain/usecases/login_usecase.dart' as _i188;
import '../../features/auth/presentation/blocs/auth/auth_bloc.dart' as _i331;
import '../design_system/themes/theme_controller.dart' as _i487;
import '../network/dio_client.dart' as _i667;
import '../network/network_info.dart' as _i932;
import '../storage/local_storage.dart' as _i329;
import '../storage/secure_storage.dart' as _i619;
import 'injection.dart' as _i464;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.factory<_i895.Connectivity>(() => registerModule.connectivity);
    gh.singleton<_i487.ThemeController>(() => _i487.ThemeController());
    gh.singleton<_i667.DioClient>(() => _i667.DioClient());
    gh.factory<_i619.SecureStorage>(() => _i619.SecureStorageImpl());
    gh.lazySingleton<_i161.AuthRemoteDataSource>(
      () => _i161.AuthRemoteDataSourceImpl(gh<_i667.DioClient>()),
    );
    gh.factory<_i932.NetworkInfo>(
      () => _i932.NetworkInfoImpl(gh<_i895.Connectivity>()),
    );
    gh.factory<_i329.LocalStorage>(
      () => _i329.LocalStorageImpl(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i992.AuthLocalDataSource>(
      () => _i992.AuthLocalDataSourceImpl(
        gh<_i619.SecureStorage>(),
        gh<_i460.SharedPreferences>(),
      ),
    );
    gh.lazySingleton<_i787.AuthRepository>(
      () => _i153.AuthRepositoryImpl(
        gh<_i161.AuthRemoteDataSource>(),
        gh<_i992.AuthLocalDataSource>(),
      ),
    );
    gh.factory<_i188.LoginUsecase>(
      () => _i188.LoginUsecase(gh<_i787.AuthRepository>()),
    );
    gh.factory<_i317.CheckFirstRunUseCase>(
      () => _i317.CheckFirstRunUseCase(gh<_i787.AuthRepository>()),
    );
    gh.factory<_i724.CheckLoginStatusUseCase>(
      () => _i724.CheckLoginStatusUseCase(gh<_i787.AuthRepository>()),
    );
    gh.factory<_i331.AuthBloc>(
      () => _i331.AuthBloc(
        loginUsecase: gh<_i188.LoginUsecase>(),
        checkLoginStatusUseCase: gh<_i724.CheckLoginStatusUseCase>(),
        checkFirstRunUseCase: gh<_i317.CheckFirstRunUseCase>(),
      ),
    );
    return this;
  }
}

class _$RegisterModule extends _i464.RegisterModule {}
