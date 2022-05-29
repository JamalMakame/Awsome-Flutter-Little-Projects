import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tasked/const/app_colors.dart';
import 'package:tasked/controllers/task_controller.dart';
import 'package:tasked/model/task_model.dart';
import 'package:tasked/services/notification_services.dart';
import 'package:tasked/views/pages/create_task.dart';
import 'package:tasked/views/widgets/task_tile.dart';

class TaskCalendarPage extends StatefulWidget {
  const TaskCalendarPage({Key? key}) : super(key: key);

  @override
  State<TaskCalendarPage> createState() => _TaskCalendarPageState();
}

class _TaskCalendarPageState extends State<TaskCalendarPage> {
  late NotifyHelper notifyHelper;
  List showProgressData = [];
  final TaskModel taskModel = TaskModel();

  DateTime _selectedDate = DateTime.now();
  final TaskController _taskController = Get.find<TaskController>();

  @override
  void initState() {
    super.initState();
    _taskController.getTasks();
    notifyHelper = NotifyHelper();
    notifyHelper.initializeNotification();
    notifyHelper.requestingIOSPermissions();
  }

  Future<dynamic> customBottomSheet({
    required TaskModel taskModel,
  }) {
    return Get.bottomSheet(
      Container(
        padding: const EdgeInsets.only(top: 4),
        height: taskModel.isCompleted == 1
            ? MediaQuery.of(context).size.height * 0.30
            : MediaQuery.of(context).size.height * 0.40,
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
          height: 62,
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
            height: MediaQuery.of(context).size.height / 3.5,
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
                horizontal: 15,
                vertical: 30,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        DateFormat.yMMM().format(DateTime.now()),
                        style: const TextStyle(
                          color: TodoColors.darkTextClr,
                          fontWeight: FontWeight.w400,
                          fontSize: 30,
                        ),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: (() async {
                          await Get.to(() => const CreateTask());
                          _taskController.getTasks();
                        }),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 13,
                            vertical: 13,
                          ),
                          height: 40,
                          width: 100,
                          decoration: const BoxDecoration(
                            color: Colors.deepPurple,
                            borderRadius: BorderRadius.all(
                              Radius.circular(75),
                            ),
                          ),
                          child: Row(
                            children: const [
                              Icon(
                                Icons.add,
                                color: TodoColors.lightTextClr,
                                size: 13,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Add Task',
                                style: TextStyle(
                                  color: TodoColors.lightTextClr,
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
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
                      top: 20,
                    ),
                    child: SizedBox(
                      height: 90,
                      child: DatePicker(
                        DateTime.now(),
                        width: 60,
                        monthTextStyle: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: TodoColors.darkTextClr,
                        ),
                        dayTextStyle: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: TodoColors.darkTextClr,
                        ),
                        dateTextStyle: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: TodoColors.darkTextClr,
                        ),
                        initialSelectedDate: _selectedDate,
                        selectionColor: Colors.deepPurple,
                        selectedTextColor: Colors.white70,
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
                        fontSize: 20,
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
                              TaskModel taskModel =
                                  _taskController.taskModelList[index];
                              if (taskModel.date ==
                                  DateFormat('yyyy-MM-d')
                                      .format(_selectedDate)) {
                                notifyHelper.scheduledNotification(
                                    hour: int.parse(taskModel.startTime
                                        .toString()
                                        .split(':')[0]),
                                    minutes: int.parse(taskModel.startTime
                                        .toString()
                                        .split(':')[1]),
                                    taskModel: taskModel);
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
                                return Container();
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
