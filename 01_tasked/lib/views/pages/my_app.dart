import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          backgroundColor: TodoColors.backGroundClr,
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (int val) {
            setState(() {
              _index = val;
              _pageController.jumpToPage(_index);
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: _index == 0
                  ? ShaderMask(
                      blendMode: BlendMode.srcATop,
                      shaderCallback: (Rect bounds) {
                        return TodoColors.kPrimaryGradientClr
                            .createShader(bounds);
                      },
                      child: Icon(
                        Icons.home,
                        size: 56.sp,
                      ),
                    )
                  : Icon(
                      Icons.home,
                      size: 46.sp,
                    ),
              label: 'Timer',
            ),
            BottomNavigationBarItem(
              icon: _index == 1
                  ? ShaderMask(
                      blendMode: BlendMode.srcATop,
                      shaderCallback: (Rect bounds) {
                        return TodoColors.kPrimaryGradientClr
                            .createShader(bounds);
                      },
                      child: Icon(
                        Icons.calendar_month,
                        size: 56.sp,
                      ),
                    )
                  : Icon(
                      Icons.calendar_month,
                      size: 46.sp,
                    ),
              label: 'Calender',
            ),
            BottomNavigationBarItem(
              icon: _index == 2
                  ? ShaderMask(
                      blendMode: BlendMode.srcATop,
                      shaderCallback: (Rect bounds) {
                        return TodoColors.kPrimaryGradientClr
                            .createShader(bounds);
                      },
                      child: Icon(
                        Icons.timer,
                        size: 56.sp,
                      ),
                    )
                  : Icon(
                      Icons.timer_outlined,
                      size: 46.sp,
                    ),
              label: 'Timer',
            ),
          ],
        ),
      ),
    );
  }
}
