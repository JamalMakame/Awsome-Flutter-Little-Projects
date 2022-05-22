import 'package:flutter/material.dart';
import 'package:tasked/const/app_colors.dart';

class AlarmPage extends StatefulWidget {
  const AlarmPage({Key? key}) : super(key: key);

  @override
  State<AlarmPage> createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: TodoColors.backGroundClr,
    );
  }
}