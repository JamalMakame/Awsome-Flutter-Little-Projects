import 'dart:convert';

import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tasked/const/app_colors.dart';
import 'package:tasked/controllers/task_controller.dart';
import 'package:tasked/views/widgets/list_tile_widget.dart';

class TaskCalendarPage extends StatefulWidget {
  const TaskCalendarPage({Key? key}) : super(key: key);

  @override
  State<TaskCalendarPage> createState() => _TaskCalendarPageState();
}

class _TaskCalendarPageState extends State<TaskCalendarPage> {
  List showProgressData = [];

  final DatePickerController _controller = DatePickerController();
  DateTime _selectedValue = DateTime.now();
  final TaskController _taskController = Get.put(TaskController());

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TodoColors.backGroundClr,
      body: Column(
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
                        DateFormat.yMMM().format(DateTime.now()),
                        style: Theme.of(context).primaryTextTheme.headline1,
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: (() async {
                          await Get.toNamed("/CreateTask");
                          _taskController.getTasks();
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
                              begin: Alignment(
                                  0.0374455489218235, 0.7739855647087097),
                              end: Alignment(
                                  -0.7739855647087097, 0.06429413706064224),
                              colors: [
                                Color.fromRGBO(156, 44, 243, 1),
                                Color.fromRGBO(58, 72, 248, 1)
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
                      top: 40,
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
                        child: Obx(
                          () => ListView.builder(
                            shrinkWrap: true,
                            itemCount: _taskController.taskModelList.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  _taskController.delete(
                                    _taskController.taskModelList[index],
                                  );
                                  _taskController.getTasks();
                                },
                                child: Container(
                                  height: 200,
                                  width: MediaQuery.of(context).size.width,
                                  margin: const EdgeInsets.only(bottom: 20.0),
                                  color: Colors.green,
                                  child: Center(
                                    child: Text(
                                      _taskController.taskModelList[index]
                                          .name.toString(),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
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
    );
  }
}
