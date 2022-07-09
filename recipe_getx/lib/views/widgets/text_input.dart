import 'package:custom_input_text/custom_input_text.dart';
import 'package:flutter/material.dart';
import 'package:recipe_getx/components/constants.dart';

Widget customTextInput({
  required String placeholder,
  required TextEditingController textController,
  required IconData icon,
  required bool isPassword,
}) {
  return CustomInputText(
    placeholder: placeholder,
    textController: textController,
    backgroundColor: Colors.white,
    borderRadius: 1,
    enabled: true,
    icon: icon,
    validation: true,
    onfocusColor: kPrimaryClr,
    isPassword: isPassword,
  );
}
