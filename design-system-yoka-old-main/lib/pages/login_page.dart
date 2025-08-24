import 'package:flutter/material.dart';
import 'package:yokapos/core/constant/color_usage_example.dart';
import 'package:yokapos/core/constant/colors.dart';
import 'package:yokapos/core/constant/text_styles.dart';
import 'package:yokapos/core/constant/text_styles_example.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bg.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 52, bottom: 16),
                    child: Center(
                      child: Image.asset(
                        'assets/icons/logo/yokapos_white.png',
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 56),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ColorUsageExample(),
                              ),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Yoka ',
                                style: AppTextStyles.logo(
                                  color: AppColors.primary,
                                ),
                              ),
                              Text(
                                'POS',
                                style: AppTextStyles.logo(
                                  color: AppColors.yellow,
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const TextStylesExample(),
                              ),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.only(top: 12),
                            child: Text(
                              'Please log in to explore about our app',
                              style: AppTextStyles.logoSubtitle(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
