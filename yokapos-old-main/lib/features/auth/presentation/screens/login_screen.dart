import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:yokapos/core/design_system/design_system.dart';
import 'package:yokapos/features/auth/data/models/requests/login_request_model.dart';
import 'package:yokapos/features/auth/presentation/blocs/auth/auth_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _LoginScaffold();
  }
}

class _LoginScaffold extends StatefulWidget {
  @override
  State<_LoginScaffold> createState() => __LoginScaffoldState();
}

class __LoginScaffoldState extends State<_LoginScaffold> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // padding: const EdgeInsets.all(16.0),
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                authenticated: (data) {
                  // context.go(RouteNames.home);
                  // debugPrint('User ${data.user}');
                },
                failure: (message) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(message),
                      backgroundColor: Colors.red,
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
              );
            },
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return state.maybeWhen(
                  orElse: () {
                    return AppButton.filled(
                      child: Text('Login Gaes'),
                      onPressed: () {
                        // context.go(homeRoute);
                        context.read<AuthBloc>().add(
                          LoginRequested(
                            LoginRequestModel(
                              email: 'bahri@afc3.com',
                              password: '12345678',
                            ),
                          ),
                        );
                      },
                    );
                  },
                  loading: () {
                    return const Center(child: CircularProgressIndicator());
                  },
                );
              },
            ),
          ),
          SizedBox(height: 30),
          Center(
            child: FutureBuilder(
              future: PackageInfo.fromPlatform(),
              builder: (context, snapshot) {
                return Container(
                  margin: EdgeInsets.only(right: 14),
                  child: Text('App version ${snapshot.data?.version}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
