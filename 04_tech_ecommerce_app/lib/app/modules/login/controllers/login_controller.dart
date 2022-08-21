import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tech_ecommerce_app/app/modules/login/controllers/login_auth_controller.dart';
import 'package:tech_ecommerce_app/app/routes/app_pages.dart';

class LoginController extends GetxController {
  var emailContr = TextEditingController().obs;
  var passcodeContr = TextEditingController().obs;
  var showPassWord = false.obs;

  togglevisibility() {
    showPassWord.value = !showPassWord.value;
  }

  logIn() async {
    var authData = await loginUser(
      email: emailContr.value.text,
      password: passcodeContr.value.text,
    );
    if (authData == null) {
      Get.offAllNamed(
        Routes.HOME,
      );
    } 
  }
}
