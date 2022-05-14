import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:calculator_app/theme_data.dart';
import 'my_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    GetMaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: MyColors.pageBackgroundClr,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyApp(),
    ),
  );
}
