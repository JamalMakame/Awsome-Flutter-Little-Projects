import 'package:flutter/material.dart';
import 'package:tasked/const/app_colors.dart';


Widget customCategory({
  required String tileName,
}) {
  return GestureDetector(
    child: Container(
      height: 70,
      width: 156,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff9c2cf3),
            Color(0xff3a49f9),
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
