import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/constant/colors.dart';
import 'pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yoka POS',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.white,
        // colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        useMaterial3: true,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        appBarTheme: AppBarTheme(
          // color: AppColors.primary,
          elevation: 0,
          titleTextStyle: GoogleFonts.quicksand(
            // color: AppColors.primary,
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
          ),
          // iconTheme: const IconThemeData(color: AppColors.primary),
        ),
      ),
      home: const SplashPage(),
    );
  }
}
