import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tech_ecommerce_app/app/modules/login/controllers/login_auth_controller.dart';

class LoginController extends GetxController {
  var emailContr = TextEditingController().obs;
  var passcodeContr = TextEditingController().obs;
  var showPassWord = false.obs;

  togglevisibility() {
    showPassWord.value = !showPassWord.value;
  }

  logIn({
    required String email,
    required String password,
  }) async {
    await loginUser(
      email: email,
      password: password,
    );
  }
}
