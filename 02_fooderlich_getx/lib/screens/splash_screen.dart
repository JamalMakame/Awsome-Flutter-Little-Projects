import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:fooderlich/models/app_state_manager.dart';
import 'package:fooderlich/screens/login_screen.dart';
import 'package:get/get.dart';

class SplashScreen extends GetView<AppStateManager> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(AppStateManager());
    controller.initializeApp();
    return Scaffold(
      body: Center(
        child: EasySplashScreen(
          durationInSeconds: 5,
          navigator: const LoginScreen(),
          loadingText: Text(
            'Initializing...',
            style: TextStyle(
              color: Get.isDarkMode ? Colors.white : Colors.grey[900],
            ),
          ),
          logo: Image.asset('assets/fooderlich_assets/rw_logo.png'),
          backgroundColor: Get.isDarkMode ? Colors.grey[900]! : Colors.white,
          logoWidth: 100.0,
          loaderColor: Get.isDarkMode ? Colors.white : Colors.deepPurple[900]!,
        ),
      ),
    );
    ;
  }
}
