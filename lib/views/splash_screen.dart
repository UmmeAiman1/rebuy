import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:rebuy/theme/app_theme.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {


    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed('/login');

    });

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            lightTheme.colorScheme.secondary,
            lightTheme.colorScheme.primary,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: lightTheme.colorScheme.surface,
              radius: 45,
              child: Text(
                'ReBuy',
                style: Theme.of(context).textTheme.displayLarge,
              ),
            )
          ],
        ),
      ),
    );
  }
}
