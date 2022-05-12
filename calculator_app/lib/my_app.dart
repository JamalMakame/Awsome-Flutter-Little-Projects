import 'package:calculator_app/theme_data.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.pageBackgroundClr,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 83,
          right: 19,
          left: 19,
          bottom: 42,
        ),
        child: Column(
          children: const [],
        ),
      ),
    );
  }
}
