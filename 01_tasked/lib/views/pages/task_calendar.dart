
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tasked/const/app_colors.dart';
import 'package:tasked/controllers/task_controller.dart';
import 'package:tasked/model/task_model.dart';
import 'package:tasked/views/widgets/task_tile.dart';

class TaskCalendarPage extends StatefulWidget {
  const TaskCalendarPage({Key? key}) : super(key: key);

  @override
  State<TaskCalendarPage> createState() => _TaskCalendarPageState();
}

class _TaskCalendarPageState extends State<TaskCalendarPage> {
  List showProgressData = [];
  final TaskModel taskModel = TaskModel();

  DatePickerController _controller = DatePickerController();
  DateTime _selectedDate = DateTime.now();
  final TaskController _taskController = Get.put(TaskController());

  @override
  void initState() {
    super.initState();
    _taskController.getTasks();
  }

  Future<dynamic> customBottomSheet({
    required TaskModel taskModel,
  }) {
    return Get.bottomSheet(
      Container(
        padding: const EdgeInsets.only(top: 4),
        height: taskModel.isCompleted == 1
            ? MediaQuery.of(context).size.height * 0.24
            : MediaQuery.of(context).size.height * 0.32,
        child: Column(
          children: [
            Container(
              height: 6,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: TodoColors.darkTextClr,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            taskModel.isCompleted == 1
                ? Container()
                : customBottomSheetButton(
                    isClosed: false,
                    context: context,
                    onTap: () {
                      _taskController.markTaskCompleted(taskModel.id!);
                      Get.back();
                    },
                    title: 'Task Completed',
                    buttonClr: Colors.blueAccent,
                  ),
            const SizedBox(
              height: 20,
            ),
            customBottomSheetButton(
              isClosed: false,
              onTap: () {
                _taskController.delete(taskModel);
                Get.back();
              },
              context: context,
              title: 'Delete Task',
              buttonClr: Colors.red,
            ),
            const SizedBox(
              height: 25,
            ),
            customBottomSheetButton(
              onTap: () {
                Get.back();
              },
              isClosed: true,
              context: context,
              title: 'Close',
              buttonClr: Colors.white,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  GestureDetector customBottomSheetButton({
    required Function() onTap,
    required BuildContext context,
    required String title,
    required Color buttonClr,
    required bool isClosed,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          // vertical: 40.0,
          horizontal: 30,
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 82,
          decoration: BoxDecoration(
            color: buttonClr,
            border: Border.all(
              width: 2,
              color: isClosed == true ? Colors.grey : buttonClr,
            ),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(226, 226, 226, 0.25),
                offset: Offset(17, 26),
                blurRadius: 25,
              ),
            ],
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: Center(
            child: Text(
              title,
              style: isClosed == true
                  ? Theme.of(context).primaryTextTheme.headline6
                  : Theme.of(context).primaryTextTheme.headline5,
            ),
          ),
        ),
      ),
    );
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
                        width: 80,
                        monthTextStyle: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: TodoColors.darkTextClr,
                        ),
                        dayTextStyle: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: TodoColors.darkTextClr,
                        ),
                        dateTextStyle: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: TodoColors.darkTextClr,
                        ),
                        controller: _controller,
                        initialSelectedDate: _selectedDate,
                        selectionColor: Colors.deepPurpleAccent,
                        selectedTextColor: Colors.white,
                        daysCount: 60,
                        onDateChange: (date) {
                          setState(() {
                            _selectedDate = date;
                            
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
              padding: const EdgeInsets.symmetric(
                vertical: 15,
                //horizontal: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Text(
                      'Tasks',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: TodoColors.darkTextClr,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                      ),
                      child: MediaQuery.removeViewPadding(
                        context: context,
                        removeTop: true,
                        child: Obx(
                          () => ListView.builder(
                            shrinkWrap: true,
                            itemCount: _taskController.taskModelList.length,
                            itemBuilder: (context, index) {
                              if (taskModel.date == _controller.toString()) {
                                return AnimationConfiguration.staggeredList(
                                  duration: const Duration(
                                    milliseconds: 600,
                                  ),
                                  position: index,
                                  child: SlideAnimation(
                                    child: FadeInAnimation(
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: GestureDetector(
                                              onTap: () {
                                                customBottomSheet(
                                                  taskModel: _taskController
                                                      .taskModelList[index],
                                                );
                                              },
                                              child: TaskTile(
                                                _taskController
                                                    .taskModelList[index],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              } else {
                                return AnimationConfiguration.staggeredList(
                                  duration: const Duration(
                                    milliseconds: 600,
                                  ),
                                  position: index,
                                  child: SlideAnimation(
                                    child: FadeInAnimation(
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: GestureDetector(
                                              onTap: () {
                                                customBottomSheet(
                                                  taskModel: _taskController
                                                      .taskModelList[index],
                                                );
                                              },
                                              child: TaskTile(
                                                _taskController
                                                    .taskModelList[index],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              }
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
