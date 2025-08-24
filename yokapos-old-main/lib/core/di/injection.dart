import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'injection.config.dart';

/// Dependency Injection Container
final GetIt getIt = GetIt.instance;

/// Configure dependency injection
@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
)
Future<void> configureDependencies() async {
  // Initialize Firebase first
  // await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  // Initialize dependency injection
  await getIt.init();

  // // Manually register ThemeController if not already registered
  // if (!getIt.isRegistered<ThemeController>()) {
  //   getIt.registerLazySingleton<ThemeController>(() => ThemeController());
  // }
}

/// Register external dependencies
///
/// These dependencies need to be registered manually
/// because they require async initialization or external setup
@module
abstract class RegisterModule {
  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @injectable
  Connectivity get connectivity => Connectivity();
}
