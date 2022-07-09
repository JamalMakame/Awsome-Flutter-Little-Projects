import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SingInManager extends GetxController {
  var emailValidation = false.obs;
  var passWordValidation = false.obs;

  TextEditingController textController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  validatePassword(String pswd) {
    if (pswd.isNotEmpty && pswd.length <= 8) {
      passWordValidation.value = true;
    } else {
      passWordValidation.value = false;
    }
  }

  validateEmail(String emailAddress) {
    String pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    RegExp regExp = RegExp(pattern);
    if (emailAddress.isNotEmpty && regExp.hasMatch(emailAddress)) {
      emailValidation.value = true;
    } else {
      emailValidation.value = false;
    }
  }
}
