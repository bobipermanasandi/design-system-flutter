import 'package:flutter/material.dart';
import 'package:yokapos/core/design_system/design_system.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Home Page'),
            AppButton.filled(onPressed: () {}, child: Text('Logout')),
          ],
        ),
      ),
    );
  }
}
