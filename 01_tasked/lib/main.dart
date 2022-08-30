import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasked/db/task_db_helper.dart';

import 'views/pages/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DBHelper.initDB();
  runApp(
    ScreenUtilInit(
      designSize: const Size(618.5, 1337.9),
      minTextAdapt: true,
      builder: (context, child) {
        return const GetMaterialApp(
          home: MyApp(),
        );
      },
    ),
  );
}
