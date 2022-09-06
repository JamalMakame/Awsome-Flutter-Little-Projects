import 'package:email_otp/email_otp.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:html/parser.dart';
import 'package:recipe_getx/views/widgets/dialog_builder.dart';

class OTPController extends GetxController {
  var email = TextEditingController().obs;
  EmailOTP myauth = EmailOTP();
  var otp = TextEditingController().obs;
  var pin2FocusNode = FocusNode().obs;
  var pin3FocusNode = FocusNode().obs;
  var pin4FocusNode = FocusNode().obs;

  updateOtp(String stringValue) {
    int? intValue = int.tryParse(stringValue);
    int? intOtp = int.tryParse(otp.value.toString());
    int newValue = intOtp! + intValue!;
    otp.value = newValue.toString() as TextEditingController;
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

  verifyOTP() async {
    if (await myauth.verifyOTP(otp: otp.value) == true) {
      DialogBuilder().showResultDialog("OTP is verified");
    } else {
      DialogBuilder().showResultDialog("Invalid OTP");
    }
  }

  sendOTP() async {
    myauth.setConfig(
        appEmail: "makamej@tapel-halal.cyou",
        appName: "Recipe App",
        userEmail: email.value,
        otpLength: 6,
        otpType: OTPType.digitsOnly);
    if (await myauth.sendOTP() == true) {
      DialogBuilder().showResultDialog("OTP has been sent");
    } else {
      DialogBuilder().showResultDialog("Oops, OTP send failed");
    }
  }
}
