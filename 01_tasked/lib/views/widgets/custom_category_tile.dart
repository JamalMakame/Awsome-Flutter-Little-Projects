import 'package:flutter/material.dart';
import 'package:tasked/const/app_colors.dart';

Widget customCategory({
  required String tileName,
  required Function() onPress,
  required Color categoryClr,
}) {
  return GestureDetector(
    onTap: onPress,
    child: Container(
      height: 70,
      width: 156,
      decoration: BoxDecoration(
        color: categoryClr,
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(226, 226, 226, 0.25),
            offset: Offset(17, 26),
            blurRadius: 25,
          ),
        ],
        borderRadius: const BorderRadius.all(
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
