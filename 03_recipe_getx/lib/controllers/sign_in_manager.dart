import 'package:animated_login/animated_login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe_getx/controllers/opt_controller.dart';
import 'package:recipe_getx/controllers/user_auth.dart';
import 'package:recipe_getx/main.dart';
import 'package:recipe_getx/views/screens/password_recovery_screen.dart';
import 'package:recipe_getx/views/screens/verification_screen.dart';
import 'package:recipe_getx/views/widgets/dialog_builder.dart';

class SingInManager extends GetxController {
  var currentMode = AuthMode.login.obs;
  var emailController = TextEditingController().obs;
  var emailValidation = false.obs;
  var nameController = TextEditingController().obs;
  var passWordValidation = false.obs;
  var passwordController = TextEditingController().obs;
  var textController = TextEditingController().obs;
  UserAuth userAuth = UserAuth();

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
      (value) async {
        var loginRes = await userAuth.loginUser(
          email: loginData!.email,
          password: loginData.password,
        );
        if (loginRes.token.isNotEmpty) {
          DialogBuilder().showResultDialog('Login Successful');
          return Get.to(
            () => const MyApp(),
          );
        }
      },
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
      (value) async {
        var response = await userAuth.signInUser(
          confirmPassword: signUPData!.confirmPassword,
          email: signUPData.email,
          name: signUPData.name,
          password: signUPData.password,
        );

        if (response.id.isNotEmpty) {
          DialogBuilder().showResultDialog('Signing in successful');
          return Get.to(
            () => const VerifyScreen(),
            binding: BindingsBuilder(
              () {
                Get.lazyPut<OTPController>(
                  () => OTPController(),
                );
              },
            ),
          );
        } else {
          DialogBuilder().showResultDialog(response.data.email.message);
          return null;
        }
      },
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
