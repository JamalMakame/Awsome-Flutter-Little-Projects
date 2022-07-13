import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe_getx/components/constants.dart';
import 'package:recipe_getx/controllers/my_app_manager.dart';
import 'package:recipe_getx/views/screens/home_screen.dart';
import 'views/screens/my_profile_screen.dart';
import 'views/screens/notification_screen.dart';
import 'views/screens/scan_screen.dart';
import 'views/screens/up_load_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends GetView<MyAppManager> {
  const MyApp({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    Get.put<MyAppManager>(MyAppManager());

    return GetMaterialApp(
      home: Obx(
        () => Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Get.to(
                () => const ScanScreen(),
              );
            },
            backgroundColor: kPrimaryClr,
            child: const Icon(
              Icons.qr_code_scanner,
              size: 24,
              semanticLabel: 'Scan',
            ),
          ),
          backgroundColor: Colors.white,
          body: IndexedStack(
            index: controller.activeIndex.value,
            children: const [
              HomeScreen(),
              UploadScreen(),
              ScanScreen(),
              NotificationScreen(),
              MyProfileScreen(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.activeIndex.value,
            onTap: (value) => controller.changeIndex(value),
            backgroundColor: Colors.transparent,
            elevation: 0,
            selectedItemColor: kPrimaryClr,
            unselectedItemColor: kOutlineClr,
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
                  Icons.noise_control_off_outlined,
                  color: Colors.transparent,
                ),
                label: '',
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
      ),
    );
  }
}
