import 'package:flutter/material.dart';
import 'package:fooderlich/models/user.dart';
import 'package:get/get.dart';

import 'models.dart';

class ProfileManager extends GetxController {
  final _darkMode = false.obs;
  final _didSelectUser = false.obs;
  final _tapOnRayWenderlich = false.obs;

  User get getUser => User(
        firstName: 'Stef',
        lastName: 'Patt',
        role: 'Flutterista',
        profileImageUrl: 'assets/profile_pics/person_stef.jpeg',
        points: 100,
        darkMode: _darkMode.value,
      );

  bool get didSelectUser => _didSelectUser.value;

  bool get didTapOnRayWenderlich => _tapOnRayWenderlich.value;

  bool get darkMode => _darkMode.value;

  void set darkMode(bool darkMode) {
    _darkMode.value = darkMode;
  }

  void tapOnRayWenderlich(bool selected) {
    _tapOnRayWenderlich.value = selected;
  }

  void tapOnProfile(bool selected) {
    _didSelectUser.value = selected;
  }
}
