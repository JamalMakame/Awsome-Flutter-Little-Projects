import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasked/const/app_colors.dart';
import 'package:tasked/const/app_theme.dart';
import 'package:tasked/views/pages/content_page.dart';
import 'package:tasked/views/pages/task_calendar.dart';
import 'package:tasked/views/pages/timer_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late int _index;
  late PageController _pageController;

  late List<Widget> _list;

  @override
  void initState() {
    super.initState();
    _index = 0;
    _list = [
      const ContentPage(),
      const TaskCalendarPage(),
      const TimerPage(),
    ];
    _pageController = PageController(initialPage: _index);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: TodoTheme.blueTheme,
      home: Scaffold(
        backgroundColor: TodoColors.backGroundClr,
        body: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: _list,
        ),
        bottomNavigationBar: FloatingNavbar(
          currentIndex: _index,
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
          ],
          onTap: (int val) {
            setState(() {
              _index = val;
              _pageController.jumpToPage(_index);
            });
          },
        ),
      ),
    );
  }
}
