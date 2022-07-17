import 'package:flutter/material.dart';
import 'package:fooderlich/api/theme_services.dart';
import 'package:fooderlich/models/profile_screen_manager.dart';
import 'package:get/get.dart';

import '../components/circle_image.dart';
import '../models/models.dart';
import 'screens.dart';

class ProfileScreen extends GetView<ProfileScreenManager> {
  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  Widget buildMenu() {
    Get.put(ProfileScreenManager());
    return ListView(
      children: [
        buildDarkModeRow(),
        ListTile(
          title: const Text('View raywenderlich.com'),
          onTap: () {
            Get.to(const WebViewScreen());
          },
        ),
        ListTile(
          title: const Text('Log out'),
          onTap: () {
            Get.off(const LoginScreen());
          },
        )
      ],
    );
  }

  Widget buildDarkModeRow() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Dark Mode'),
          Obx(
            () => Switch(
              value: controller.switchValue.value,
              onChanged: (value) {
                controller.changeTheme(value);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildProfile() {
    return Column(
      children: const [
        CircleImage(
          imageProvider: AssetImage('assets/profile_pics/person_stef.jpeg'),
          imageRadius: 60.0,
        ),
        SizedBox(height: 16.0),
        Text(
          'Jamal',
          style: TextStyle(
            fontSize: 21,
          ),
        ),
        Text('Geophysicist'),
        Text(
          '${200} points',
          style: TextStyle(
            fontSize: 30,
            color: Colors.green,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 16.0),
            buildProfile(),
            Expanded(
              child: buildMenu(),
            )
          ],
        ),
      ),
    );
  }
}
