import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tech_ecommerce_app/app/modules/login/controllers/login_auth.dart';
import 'package:tech_ecommerce_app/app/routes/app_pages.dart';

class LoginController extends GetxController {
  var emailContr = TextEditingController().obs;
  var passcodeContr = TextEditingController().obs;
  var showPassWord = false.obs;
  UserAuth userAuth = UserAuth();

  togglevisibility() {
    showPassWord.value = !showPassWord.value;
  }

  logIn() async {
    var authData = await userAuth.loginUser(
      email: emailContr.value.text,
      password: passcodeContr.value.text,
    );
    if (authData.token.isNotEmpty) {
      Get.offAllNamed(
        Routes.LANDING,
      );
    }
  }
}
