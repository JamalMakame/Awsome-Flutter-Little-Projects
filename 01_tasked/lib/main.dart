import 'package:flutter/material.dart';
import 'package:tasked/db/task_db_helper.dart';
import 'package:tasked/views/pages/my_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await DBHelper.initDB();
  runApp(
    const MyApp(),
  );
}
