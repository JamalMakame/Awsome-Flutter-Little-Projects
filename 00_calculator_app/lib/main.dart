import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:calculator_app/theme_data.dart';
import 'my_app.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      builder: (context, child) {
        return GetMaterialApp(
          theme: ThemeData(
            scaffoldBackgroundColor: MyColors.pageBackgroundClr,
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: MyApp(),
        );
      },
    ),
  );
}
