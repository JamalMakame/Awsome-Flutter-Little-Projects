import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:recipe_getx/views/widgets/dialog_builder.dart';

class OTPController extends GetxController {
  var email = TextEditingController().obs;
 
  var otp = TextEditingController().obs;

  
  var pin2FocusNode = FocusNode().obs;
  var pin3FocusNode = FocusNode().obs;
  var pin4FocusNode = FocusNode().obs;

  updateOtp(String stringValue) {
    int? intValue = int.tryParse(stringValue);
    int? intOtp = int.tryParse(otp.value.toString());
    int newValue = intOtp! + intValue!;
    otp.value = newValue.toString() as TextEditingController;
    debugPrint(otp.value.toString());
  }

  void nextField({
    required String value,
    required FocusNode focusNode,
  }) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
    updateOtp(value);
  }

 

  
}
