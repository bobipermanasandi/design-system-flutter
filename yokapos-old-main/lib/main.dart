import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/di/injection.dart';
import 'core/design_system/design_system.dart';
import 'core/routing/app_router.dart';
import 'features/auth/presentation/blocs/auth/auth_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Configure dependency injection
  await configureDependencies();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (context) => getIt<AuthBloc>()..add(CheckFirstRunApp()),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = getIt<ThemeController>();
    final authBloc = context.read<AuthBloc>();
    final appRouter = AppRouter(themeController, authBloc);

    return ListenableBuilder(
      listenable: themeController,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Yoka POS',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: themeController.themeMode,
          routerConfig: appRouter.router,
        );
      },
    );
  }
}
