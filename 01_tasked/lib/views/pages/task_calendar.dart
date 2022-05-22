import 'dart:convert';

import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasked/const/app_colors.dart';
import 'package:tasked/views/widgets/list_tile_widget.dart';

class TaskCalendarPage extends StatefulWidget {
  const TaskCalendarPage({Key? key}) : super(key: key);

  @override
  State<TaskCalendarPage> createState() => _TaskCalendarPageState();
}

class _TaskCalendarPageState extends State<TaskCalendarPage> {
  final DatePickerController _controller = DatePickerController();

  List showProgressData = [];

  @override
  void initState() {
    super.initState();
    _readData();
  }

  _readData() async {
    await DefaultAssetBundle.of(context)
        .loadString('assets/json/task_progress.json')
        .then((value) {
      setState(() {
        showProgressData = jsonDecode(value);
      });
    });
  }

  DateTime _selectedValue = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TodoColors.backGroundClr,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 302,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: TodoColors.lightTextClr,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 45,
                  vertical: 30,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Oct, 2022',
                          style: Theme.of(context).primaryTextTheme.headline1,
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: (() {
                            Get.toNamed("/CreateTask");
                          }),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32,
                              vertical: 23,
                            ),
                            height: 70,
                            width: 171,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xff9c2cf3),
                                  Color(0xff3a49f9),
                                ],
                              ),
                              borderRadius: BorderRadius.all(
                                Radius.circular(75),
                              ),
                            ),
                            child: Row(
                              children: const [
                                Icon(
                                  Icons.add,
                                  color: TodoColors.lightTextClr,
                                  size: 23,
                                ),
                                Spacer(),
                                Text(
                                  'Add Task',
                                  style: TextStyle(
                                    color: TodoColors.lightTextClr,
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 48,
                      ),
                      child: SizedBox(
                        height: 123,
                        child: DatePicker(
                          DateTime.now(),
                          controller: _controller,
                          initialSelectedDate: DateTime.now(),
                          selectionColor: TodoColors.backGroundClr,
                          selectedTextColor: Colors.white,
                          inactiveDates: [
                            DateTime.now().add(const Duration(days: 3)),
                            DateTime.now().add(const Duration(days: 4)),
                            DateTime.now().add(const Duration(days: 7)),
                          ],
                          daysCount: 60,
                          onDateChange: (date) {
                            setState(() {
                              _selectedValue = date;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  left: 45,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tasks',
                      style: Theme.of(context).primaryTextTheme.bodyText1,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                        ),
                        child: MediaQuery.removeViewPadding(
                          context: context,
                          removeTop: true,
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: showProgressData.length,
                            itemBuilder: (context, index) {
                              return customTile(
                                projectTitle: showProgressData[index]
                                    ['project title'],
                                lastChangedTime: showProgressData[index]
                                    ['time'],
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
