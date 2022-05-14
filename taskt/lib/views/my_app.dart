import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:taskt/const/app_colors.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:taskt/const/app_theme.dart';
import 'package:taskt/views/home_page.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: TodoTheme.blueTheme,
      home: Scaffold(
        backgroundColor: TodoColors.backGroundClr,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(
              left: 30,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.menu,
                color: TodoColors.darkTextClr,
                size: 37,
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(
                right: 30,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person,
                  color: TodoColors.darkTextClr,
                  size: 37,
                ),
              ),
            )
          ],
        ),
        body: const HomePage(),
        bottomNavigationBar: FloatingNavbar(
          currentIndex: index,
          backgroundColor: TodoColors.backGroundClr,
          selectedItemColor: TodoColors.darkTextClr,
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
