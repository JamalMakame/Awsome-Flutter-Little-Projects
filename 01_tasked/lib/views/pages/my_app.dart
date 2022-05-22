import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasked/const/app_colors.dart';
import 'package:tasked/const/app_theme.dart';
import 'package:tasked/views/pages/alarm_page.dart';
import 'package:tasked/views/pages/create_task.dart';
import 'package:tasked/views/pages/home_page.dart';
import 'package:tasked/views/pages/task_calendar.dart';
import 'package:tasked/views/pages/timer_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;
  List list = [
    const HomePage(),
    const TaskCalendarPage(),
    const TimerPage(),
    const AlarmPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/HomePage',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/TaskCalendarPage',
          page: () => const TaskCalendarPage(),
        ),
        GetPage(
          name: '/CreateTask',
          page: () => const CreateTask(),
        ),
        GetPage(
          name: '/TimerPage',
          page: () => const TimerPage(),
        ),
      ],
      theme: TodoTheme.blueTheme,
      home: Scaffold(
        backgroundColor: TodoColors.backGroundClr,
        body: list[index],
        bottomNavigationBar: FloatingNavbar(
          currentIndex: index,
          backgroundColor: TodoColors.backGroundClr,
          selectedItemColor: TodoColors.iconClr,
          unselectedItemColor: Colors.deepPurple[200],
          iconSize: 42,
          fontSize: 19,
          items: [
            FloatingNavbarItem(
              title: 'Home',
              icon: (Icons.home),
            ),
            FloatingNavbarItem(
              title: 'Calendar',
              icon: (Icons.calendar_month),
            ),
            FloatingNavbarItem(
              title: 'Timer',
              icon: (Icons.timer),
            ),
            FloatingNavbarItem(
              title: 'Alarm',
              icon: (Icons.alarm),
            ),
          ],
          onTap: (int val) {
            setState(() {
              index = val;
            });
          },
        ),
      ),
    );
  }
}
