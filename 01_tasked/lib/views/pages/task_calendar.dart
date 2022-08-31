import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        padding: EdgeInsets.only(top: 4.h),
        height:
            taskModel.isCompleted == 1 ? Get.height * 0.20 : Get.height * 0.30,
        child: Column(
          children: [
            Container(
              height: 6.h,
              width: 120.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.r),
                color: TodoColors.darkTextClr,
              ),
            ),
            SizedBox(
              height: 20.h,
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
            SizedBox(
              height: 20.h,
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
            SizedBox(
              height: 25.h,
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
        padding: EdgeInsets.symmetric(
          horizontal: 30.w,
        ),
        child: Container(
          width: Get.width,
          height: 62.h,
          decoration: BoxDecoration(
            color: buttonClr,
            border: Border.all(
              width: 2.w,
              color: isClosed == true ? Colors.grey : buttonClr,
            ),
            boxShadow: const [
              BoxShadow(
                color: Color.fromRGBO(226, 226, 226, 0.25),
                offset: Offset(17, 26),
                blurRadius: 25,
              ),
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(20.r),
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
            height: 457.h,
            width: Get.width,
            decoration: BoxDecoration(
              color: TodoColors.lightTextClr,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.r),
                bottomRight: Radius.circular(20.r),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: 45.w,
                right: 45.w,
                top: 153.h,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        DateFormat.yMMM().format(DateTime.now()),
                        style: TextStyle(
                          color: TodoColors.darkTextClr,
                          fontWeight: FontWeight.w400,
                          fontSize: 47.sp,
                        ),
                      ),
                      GestureDetector(
                        onTap: (() async {
                          await Get.to(() => const CreateTask());
                          _taskController.getTasks();
                        }),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 32.w,
                            vertical: 23.h,
                          ),
                          height: 70.h,
                          width: 171.w,
                          decoration: BoxDecoration(
                            gradient: TodoColors.kPrimaryGradientClr,
                            borderRadius: BorderRadius.all(
                              Radius.circular(75.r),
                            ),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.add,
                                  color: TodoColors.lightTextClr,
                                  size: 24.sp,
                                ),
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                'Add Task',
                                style: TextStyle(
                                  color: TodoColors.lightTextClr,
                                  fontFamily: 'Poppins',
                                  fontSize: 21.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 61.h,
                  ),
                  SizedBox(
                    height: 123.h,
                    child: DatePicker(
                      DateTime.now(),
                      width: 60.w,
                      monthTextStyle: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 17.sp,
                        fontWeight: FontWeight.w400,
                        color: TodoColors.darkTextClr,
                      ),
                      dayTextStyle: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w400,
                        color: TodoColors.darkTextClr,
                      ),
                      dateTextStyle: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 19.sp,
                        fontWeight: FontWeight.w400,
                        color: TodoColors.darkTextClr,
                      ),
                      initialSelectedDate: _selectedDate,
                      selectionColor: TodoColors.buttonClr,
                      selectedTextColor: Colors.white70,
                      daysCount: 60,
                      onDateChange: (date) {
                        setState(() {
                          _selectedDate = date;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 15.h,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30.w),
                    child: Text(
                      'Tasks',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        color: TodoColors.darkTextClr,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 10.h,
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
