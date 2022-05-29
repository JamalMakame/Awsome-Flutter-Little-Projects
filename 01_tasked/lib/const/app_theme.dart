import 'package:flutter/material.dart';
import 'package:tasked/const/app_colors.dart';

class TodoTheme {
  static ThemeData blueTheme = ThemeData(
    backgroundColor: TodoColors.backGroundClr,
    primaryTextTheme: const TextTheme(
      headline1: TextStyle(
        color: TodoColors.darkTextClr,
        fontWeight: FontWeight.w400,
        fontSize: 16,
      ),
      headline2: TextStyle(
        color: TodoColors.darkTextClr,
        fontWeight: FontWeight.w300,
        fontSize: 17,
      ),
      headline3: TextStyle(
        color: TodoColors.darkTextClr,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
      headline4: TextStyle(
        color: TodoColors.lightTextClr,
        fontWeight: FontWeight.w500,
        fontSize: 13,
      ),
      headline5: TextStyle(
        color: TodoColors.lightTextClr,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
      headline6: TextStyle(
        color: TodoColors.darkTextClr,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
      bodyText1: TextStyle(
        color: TodoColors.darkTextClr,
        fontWeight: FontWeight.w500,
        fontSize: 13,
      ),
    ),
  );
}
