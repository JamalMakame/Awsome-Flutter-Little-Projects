import 'package:flutter/material.dart';
import 'package:tasked/const/app_colors.dart';

Widget customCategory({
  required String tileName,
  required Function onPress,
}) {
  return GestureDetector(
    onTap: onPress(),
    child: Container(
      height: 70,
      width: 156,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          //begin: Alignment(0.0374455489218235, 0.7739855647087097),
          //end: Alignment(-0.7739855647087097, 0.06429413706064224),
          colors: [
            Color.fromRGBO(156, 44, 243, 1),
            Color.fromRGBO(58, 72, 248, 1)
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(226, 226, 226, 0.25),
            offset: Offset(17, 26),
            blurRadius: 25,
          ),
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(75),
        ),
      ),
      child: Center(
        child: Text(
          tileName,
          style: const TextStyle(
            color: TodoColors.lightTextClr,
            fontWeight: FontWeight.w500,
            fontSize: 23,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    ),
  );
}
