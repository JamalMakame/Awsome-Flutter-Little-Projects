import 'package:animated_login/animated_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe_getx/views/screens/password_recovery_screen.dart';
import 'package:recipe_getx/views/screens/verification_screen.dart';
import 'package:recipe_getx/views/widgets/dialog_builder.dart';

class SingInManager extends GetxController {
  var currentMode = AuthMode.login.obs;
  TextEditingController emailController = TextEditingController();
  var emailValidation = false.obs;
  TextEditingController nameController = TextEditingController();
  var passWordValidation = false.obs;
  TextEditingController passwordController = TextEditingController();
  TextEditingController textController = TextEditingController();

  static SingInManager get i => Get.find();

  void authModeChange(AuthMode newMode) {
    currentMode.value = newMode;
  }

  String? validateEmail(String emailAddress) {
    String pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    RegExp regExp = RegExp(pattern);
    if (emailAddress.isNotEmpty && regExp.hasMatch(emailAddress)) {
      emailValidation.value = true;
    } else {
      emailValidation.value = false;
    }
    return null;
  }

  Future<String?> onLogin(LoginData? loginData) async {
    DialogBuilder().showLoadingDialog();
    await Future.delayed(const Duration(seconds: 2))
        .then(
          (value) => Get.back(),
        )
        .then(
          (value) => DialogBuilder().showResultDialog('Successful Login.'),
        );
    return null;
  }

  Future<String?> onSignUp(SignUpData? signUPData) async {
    DialogBuilder().showLoadingDialog();
    await Future.delayed(const Duration(seconds: 2))
        .then(
          (value) => Get.back(),
        )
        .then(
          (value) => Get.to(
            () => const VerifyScreen(),
          ),
        );

    return null;
  }

  Future<String?> socialLogin(String type) async {
    await Future.delayed(const Duration(seconds: 2));
    return null;
  }

  Future<String?> onForgotPassword(String email) async {
    DialogBuilder().showLoadingDialog();
    await Future.delayed(const Duration(seconds: 2)).then(
      (value) => Get.to(
        () => const PasswordRecoveryScreen(),
      ),
    );
    return null;
  }
}
