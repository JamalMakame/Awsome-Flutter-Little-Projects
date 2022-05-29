// ignore_for_file: unused_field

import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tasked/const/app_colors.dart';
import 'package:tasked/controllers/task_controller.dart';
import 'package:tasked/model/task_model.dart';

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
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.deepPurple,
          ),
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              Get.back();
                            },
                            icon: const Icon(
                              Icons.arrow_back,
                              color: TodoColors.lightTextClr,
                              size: 23,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 5.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormField(
                              autofocus: false,
                              cursorColor: Colors.grey,
                              controller: _nameController,
                              style: const TextStyle(
                                color: TodoColors.lightTextClr,
                                fontWeight: FontWeight.w400,
                                fontSize: 20,
                              ),
                              decoration: const InputDecoration(
                                labelText: 'Task Title',
                                labelStyle: TextStyle(
                                  color: TodoColors.lightTextClr,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 23,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            DateTimePicker(
                              type: DateTimePickerType.date,
                              controller: _dateController,
                              decoration: const InputDecoration(
                                labelText: 'Task Date',
                                labelStyle: TextStyle(
                                  color: TodoColors.lightTextClr,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 23,
                                ),
                              ),
                              firstDate: DateTime.now().subtract(
                                const Duration(days: 3),
                              ),
                              lastDate: DateTime.now().add(
                                const Duration(days: 30),
                              ),
                              style: const TextStyle(
                                color: TodoColors.lightTextClr,
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
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
                      top: 40,
                    ),
                    child: MediaQuery.removePadding(
                      context: context,
                      removeLeft: true,
                      removeRight: true,
                      child: Container(
                        width: MediaQuery.of(context).size.width - 20,
                        decoration: const BoxDecoration(
                          color: TodoColors.lightTextClr,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 32,
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
                                      decoration: const InputDecoration(
                                        labelText: 'Start time',
                                        labelStyle: TextStyle(
                                          color: TodoColors.darkTextClr,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                        ),
                                      ),
                                      onChanged: (startTime) => setState(
                                          (() => _endTime = startTime)),
                                      style: const TextStyle(
                                        color: TodoColors.darkTextClr,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 32,
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
                                      decoration: const InputDecoration(
                                        labelText: 'End time',
                                        labelStyle: TextStyle(
                                          color: TodoColors.darkTextClr,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20,
                                        ),
                                      ),
                                      onChanged: (endTime) =>
                                          setState((() => _endTime = endTime)),
                                      style: const TextStyle(
                                        color: TodoColors.darkTextClr,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 32,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 15),
                              Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.multiline,
                                  maxLines: 9,
                                  autofocus: false,
                                  cursorColor: Colors.grey,
                                  controller: _descriptionController,
                                  style: const TextStyle(
                                    color: TodoColors.darkTextClr,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 24,
                                  ),
                                  decoration: const InputDecoration(
                                    labelText: 'Task Description',
                                    labelStyle: TextStyle(
                                      color: TodoColors.darkTextClr,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
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
                              const Spacer(),
                              GestureDetector(
                                onTap: (() => _validateData()),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 38.0,
                                  ),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: 62,
                                    decoration: const BoxDecoration(
                                      color: Colors.deepPurple,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromRGBO(
                                              226, 226, 226, 0.25),
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
      ),
    );
  }
}
