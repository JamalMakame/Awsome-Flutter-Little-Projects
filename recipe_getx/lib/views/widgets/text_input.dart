import 'package:custom_input_text/custom_input_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recipe_getx/components/constants.dart';

Widget customeTextInput({
  required String placeholder,
  required TextEditingController textController,
  required IconData icon,
  required TextInputType keyboardType,
  required Function onChanged
}) {
  return CustomInputText(
    placeholder: placeholder,
    textController: textController,
    backgroundColor: Colors.white,
    borderRadius: 1,
    enabled: true,
    icon: icon,
    keyboardType: keyboardType,
    validation: true,
    onfocusColor: kPrimaryClr,
    onChanged: onChanged(),
  );
}
