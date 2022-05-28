import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tasked/const/app_colors.dart';
import 'package:tasked/controllers/task_controller.dart';
import 'package:tasked/model/task_model.dart';
import 'package:tasked/services/notification_services.dart';
import 'package:tasked/views/widgets/card_widget.dart';
import 'package:tasked/views/widgets/indicator_widget.dart';
import 'package:tasked/views/widgets/task_tile.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  late NotifyHelper notifyHelper;
  List showProgressData = [];
  final TaskModel taskModel = TaskModel();

  DateTime _selectedDate = DateTime.now();
  final TaskController _taskController = Get.put(TaskController());

  @override
  void initState() {
    super.initState();
    _taskController.getTasks();
    notifyHelper = NotifyHelper();
    notifyHelper.initializeNotification();
    notifyHelper.requestingIOSPermissions();
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

  @override
  Widget build(BuildContext context) {
    PageController _pageController = PageController(viewportFraction: 0.88);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: TodoColors.backGroundClr,
      body: Container(
        padding: const EdgeInsets.only(top: 70),
        child: Column(
          children: [
            Container(
              width: width,
              height: 100,
              margin: const EdgeInsets.only(left: 25, right: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: TodoColors.lightTextClr,
              ),
              child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.deepPurple,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Hello! Jamal',
                          style: TextStyle(
                            color: TodoColors.darkTextClr,
                            fontSize: 31,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Have a nice day',
                          style: TextStyle(
                            color: TodoColors.darkTextClr,
                            fontSize: 24,
                            fontWeight: FontWeight.w300,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 70,
                      height: 70,
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications,
                          color: TodoColors.iconClr,
                          size: 33,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                children: [
                  const Text(
                    "Project Overview",
                    style: TextStyle(
                      color: Color(0xFF1f2326),
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "Show all",
                    style: TextStyle(
                      color: TodoColors.darkTextClr,
                      fontSize: 20,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: TodoColors.iconClr,
                    ),
                    child: GestureDetector(
                      onTap: () {},
                      child: const Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: TodoColors.lightTextClr,
                          size: 30,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 220,
              child: PageView.builder(
                controller: _pageController,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return customCards(
                    projectNumber: (index + 1).toString(),
                    projectTitle: 'title',
                    projectDate: 'date',
                    projectClr: index.isEven
                        ? Colors.deepPurple
                        : Colors.deepPurple.shade600,
                    context: context,
                  );
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            indicator(
              context: context,
              count: 4,
              pageController: _pageController,
            ),
            Container(
              padding: const EdgeInsets.only(
                left: 25,
                right: 25,
                top: 25,
              ),
              child: Row(
                children: [
                  const Text(
                    "Recent Tasks",
                    style: TextStyle(
                      color: Color(0xFF1f2326),
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "Show all",
                    style: TextStyle(
                      color: TodoColors.darkTextClr,
                      fontSize: 20,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  const SizedBox(
                    width: 7,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: TodoColors.iconClr,
                    ),
                    child: GestureDetector(
                      onTap: () {},
                      child: const Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: TodoColors.lightTextClr,
                          size: 30,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
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
                        debugPrint(taskModel.toJson());
                        if (taskModel.date ==
                            DateFormat('yyyy-MM-d').format(_selectedDate)) {
                          notifyHelper.scheduledNotification(
                              hour: int.parse(
                                  taskModel.startTime.toString().split(':')[0]),
                              minutes: int.parse(
                                  taskModel.startTime.toString().split(':')[1]),
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
                                          _taskController.taskModelList[index],
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
    );
  }
}
