import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:recipe_getx/components/constants.dart';
import 'package:recipe_getx/controllers/my_app_manager.dart';
import 'package:recipe_getx/views/screens/home_screen.dart';
import 'package:recipe_getx/views/screens/onboard_screen.dart';
import 'views/screens/my_profile_screen.dart';
import 'views/screens/notification_screen.dart';
import 'views/screens/upload_step_1.dart';
import 'views/screens/verification_screen.dart';

void main() async {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        useInheritedMediaQuery: true,
        builder: (
          context,
          child,
        ) =>
            const GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: OnBoardingScreen(),
        ),
      ),
    ),
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

    return Obx(
      () => Scaffold(
        backgroundColor: Colors.white,
        body: IndexedStack(
          index: controller.activeIndex.value,
          children: const [
            HomeScreen(),
            UploadScreen(),
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
