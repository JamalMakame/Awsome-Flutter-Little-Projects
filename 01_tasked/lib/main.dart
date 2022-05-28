import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasked/db/task_db_helper.dart';
import 'package:tasked/views/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DBHelper.initDB();
  runApp(
    const GetMaterialApp(
      home: MyHomePage(),
    ),
  );
}
