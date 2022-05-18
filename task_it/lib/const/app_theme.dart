import 'package:flutter/material.dart';
import 'package:task_it/const/app_colors.dart';

class TodoTheme {
  static ThemeData blueTheme = ThemeData(
    backgroundColor: TodoColors.backGroundClr,
    primaryTextTheme: const TextTheme(
      headline1: TextStyle(
        color: TodoColors.darkTextClr,
        fontWeight: FontWeight.w400,
        fontSize: 46,
        fontFamily: 'Poppins',
      ),
      headline2: TextStyle(
        color: TodoColors.darkTextClr,
        fontWeight: FontWeight.w300,
        fontSize: 24,
        fontFamily: 'Poppins',
      ),
      headline3: TextStyle(
        color: TodoColors.darkTextClr,
        fontWeight: FontWeight.w500,
        fontSize: 16,
        fontFamily: 'Poppins',
      ),
      headline4: TextStyle(
        color: TodoColors.lightTextClr,
        fontWeight: FontWeight.w500,
        fontSize: 23,
        fontFamily: 'Poppins',
      ),
      headline5: TextStyle(
        color: TodoColors.lightTextClr,
        fontWeight: FontWeight.w500,
        fontSize: 33,
        fontFamily: 'Poppins',
      ),
      headline6: TextStyle(
        color: TodoColors.darkTextClr,
        fontWeight: FontWeight.w500,
        fontSize: 32,
        fontFamily: 'Poppins',
      ),
      bodyText1: TextStyle(
        color: TodoColors.darkTextClr,
        fontWeight: FontWeight.w500,
        fontSize: 23,
        fontFamily: 'Poppins',
      ),
    ),
  );
}