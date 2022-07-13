import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe_getx/components/constants.dart';
import 'package:recipe_getx/views/screens/home_screen.dart';
import 'views/screens/my_profile_screen.dart';
import 'views/screens/notification_screen.dart';
import 'views/screens/onboard_screen.dart';
import 'views/screens/scan_screen.dart';
import 'views/screens/up_load_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    List _pageList = [
      const HomeScreen(),
      const UploadScreen(),
      const ScanScreen(),
      const NotificationScreen(),
      const MyProfileScreen(),
    ]; 
    return GetMaterialApp(
      home: Scaffold(
        body: const Center(
          child: HomeScreen(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          backgroundColor: Colors.transparent,
          iconSize: 24,
          elevation: 4,
          type: BottomNavigationBarType.fixed,

          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.upload,
              ),
              label: 'Upload',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
              ),
              label: 'Notification',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
