import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tasked/const/app_colors.dart';
import 'package:tasked/controllers/task_controller.dart';
import 'package:tasked/model/task_model.dart';
import 'package:tasked/views/widgets/custom_category_tile.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({Key? key}) : super(key: key);

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  List<String> categoryList = [
    'School',
    'Discussion',
    'Preps',
    'Shopping',
    'Praying',
    'Darsa',
  ];

  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  String _endTime = '9:30 PM';
  final TextEditingController _endTimeController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  int _selectedColor = 0;
  String _selectedDate =
      DateFormat('MMM d, yyy').format(DateTime.now()).toString();

  final String _startTime =
      DateFormat('hh:mm a').format(DateTime.now()).toString();

  final TextEditingController _startTimeController = TextEditingController();
  final TaskController _taskController = Get.put(TaskController());

  _addTaskToDB() async {
    int value = await _taskController.addTask(
      taskModel: TaskModel(
        color: _selectedColor,
        date: _dateController.text,
        description: _descriptionController.text,
        endTime: _endTimeController.text,
        isCompleted: 0,
        name: _nameController.text,
        startTime: _startTimeController.text,
      ),
    );
    debugPrint('My id is $value');
  }

  _validateData() {
    if (_nameController.text.isNotEmpty &&
        _descriptionController.text.isNotEmpty &&
        _dateController.text.isNotEmpty &&
        _startTimeController.text.isNotEmpty &&
        _endTimeController.text.isNotEmpty) {
      _addTaskToDB();
      Get.back();
    } else if (_nameController.text.isEmpty ||
        _descriptionController.text.isEmpty ||
        _dateController.text.isEmpty ||
        _endTimeController.text.isEmpty ||
        _startTimeController.text.isEmpty) {
      Get.snackbar(
        'Required',
        'All fields are required !',
        colorText: Colors.red,
        duration: const Duration(
          seconds: 7,
        ),
        isDismissible: true,
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.white,
        icon: const Icon(
          Icons.warning_amber_rounded,
          color: Colors.red,
          size: 32,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TodoColors.lightTextClr,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(156, 44, 243, 1),
              Color.fromRGBO(58, 72, 248, 1)
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: TodoColors.lightTextClr,
                            size: 37,
                          ),
                        ),
                        Text(
                          'Create a Task',
                          style: Theme.of(context).primaryTextTheme.headline5,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: TodoColors.lightTextClr,
                            size: 37,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 30.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            autofocus: false,
                            cursorColor: Colors.grey,
                            controller: _nameController,
                            style: const TextStyle(
                              color: TodoColors.darkTextClr,
                              fontWeight: FontWeight.w400,
                              fontSize: 24,
                              fontFamily: 'Poppins',
                            ),
                            decoration: const InputDecoration(
                              labelText: 'Name',
                              labelStyle: TextStyle(
                                color: TodoColors.darkTextClr,
                                fontWeight: FontWeight.w500,
                                fontSize: 32,
                                fontFamily: 'Poppins',
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          DateTimePicker(
                            type: DateTimePickerType.date,
                            controller: _dateController,
                            dateLabelText: 'Date',
                            firstDate: DateTime.now().subtract(
                              const Duration(days: 3),
                            ),
                            lastDate: DateTime.now().add(
                              const Duration(days: 30),
                            ),
                            style: const TextStyle(
                              color: TodoColors.darkTextClr,
                              fontWeight: FontWeight.w500,
                              fontSize: 32,
                              fontFamily: 'Poppins',
                            ),
                            dateMask: 'MMM d, yyy',
                            onChanged: (date) =>
                                setState(() => _selectedDate = date),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 30,
                  ),
                  child: MediaQuery.removePadding(
                    context: context,
                    removeLeft: true,
                    removeRight: true,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        color: TodoColors.lightTextClr,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 52,
                          vertical: 42,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: DateTimePicker(
                                    type: DateTimePickerType.time,
                                    controller: _startTimeController,
                                    timeHintText: _startTime,
                                    timeLabelText: 'Start time',
                                    onChanged: (startTime) =>
                                        setState((() => _endTime = startTime)),
                                    style: const TextStyle(
                                      color: TodoColors.darkTextClr,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 32,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  child: DateTimePicker(
                                    type: DateTimePickerType.time,
                                    controller: _endTimeController,
                                    timeHintText: _endTime,
                                    timeLabelText: 'End time',
                                    onChanged: (endTime) =>
                                        setState((() => _endTime = endTime)),
                                    style: const TextStyle(
                                      color: TodoColors.darkTextClr,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 32,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Expanded(
                              child: TextFormField(
                                keyboardType: TextInputType.multiline,
                                maxLines: 6,
                                autofocus: false,
                                cursorColor: Colors.grey,
                                controller: _descriptionController,
                                style: const TextStyle(
                                  color: TodoColors.darkTextClr,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 24,
                                  fontFamily: 'Poppins',
                                ),
                                decoration: const InputDecoration(
                                  labelText: 'Description',
                                  labelStyle: TextStyle(
                                    color: TodoColors.darkTextClr,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 32,
                                    fontFamily: 'Poppins',
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                      width: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'Category',
                              style:
                                  Theme.of(context).primaryTextTheme.headline2,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 20,
                              ),
                              child: SizedBox(
                                height: 190,
                                width: MediaQuery.of(context).size.width,
                                child: Wrap(
                                  spacing: 13,
                                  runSpacing: 16,
                                  children: List.generate(
                                    categoryList.length,
                                    (index) {
                                      return customCategory(
                                        tileName: categoryList[index],
                                        onPress: () {
                                          setState(() {
                                            _selectedColor = index;
                                            debugPrint(
                                                'Index : $_selectedColor');
                                          });
                                        },
                                        categoryClr: index == 0
                                            ? TodoColors.bluishClr
                                            : index == 1
                                                ? Colors.lime
                                                : index == 2
                                                    ? TodoColors.darkTextClr
                                                    : index == 3
                                                        ? TodoColors.pinkClr
                                                        : index == 4
                                                            ? TodoColors
                                                                .yellowClr
                                                            : index == 5
                                                                ? Colors.red
                                                                : Colors.green,
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: (() => _validateData()),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 38.0,
                                ),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 92,
                                  decoration: const BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color.fromRGBO(156, 44, 243, 1),
                                        Color.fromRGBO(58, 72, 248, 1)
                                      ],
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color.fromRGBO(226, 226, 226, 0.25),
                                        offset: Offset(17, 26),
                                        blurRadius: 25,
                                      ),
                                    ],
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(75),
                                    ),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Create Task',
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .headline5,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
