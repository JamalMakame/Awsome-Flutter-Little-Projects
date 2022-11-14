// ignore_for_file: unused_field

import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    'Design',
    'Meeting',
    'Coding',
    'BCE',
    'Testing',
    'Quick call',
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
        padding: const EdgeInsets.all(23),
        duration: const Duration(
          seconds: 7,
        ),
        isDismissible: true,
        snackPosition: SnackPosition.TOP,
        backgroundColor: Colors.white,
        icon: Icon(
          Icons.warning_amber_rounded,
          color: Colors.red,
          size: 62.sp,
        ),
      );
    }
  }

  Widget _buildChips() {
    List<Widget> chips = [];

    for (int i = 0; i < categoryList.length; i++) {
      ChoiceChip choiceChip = ChoiceChip(
        selected: _selectedColor == i,
        label: Text(
          categoryList[i],
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: TodoColors.buttonClr,
        selectedColor: Colors.blue,
        onSelected: (bool selected) {
          setState(() {
            if (selected) {
              _selectedColor = i;
            }
          });
        },
      );

      chips.add(
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: choiceChip,
        ),
      );
    }

    return Wrap(
      children: chips,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TodoColors.lightTextClr,
      body: SingleChildScrollView(
        child: Container(
          height: Get.height,
          width: Get.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromRGBO(156, 44, 243, 1),
                Color.fromRGBO(58, 72, 248, 1),
              ],
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
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
                            icon: Icon(
                              Icons.arrow_back,
                              color: TodoColors.lightTextClr,
                              size: 44.sp,
                            ),
                          ),
                          Text(
                            'Create a Task',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 24.sp,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            null,
                            color: TodoColors.lightTextClr,
                            size: 44.sp,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 52.w),
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
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: 61.h,
                    ),
                    child: MediaQuery.removePadding(
                      context: context,
                      removeLeft: true,
                      removeRight: true,
                      child: Container(
                        decoration: BoxDecoration(
                          color: TodoColors.lightTextClr,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40.r),
                            topRight: Radius.circular(40.r),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 52.w,
                            vertical: 42.h,
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
                                      decoration: InputDecoration(
                                        labelText: 'Start time',
                                        labelStyle: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 22.sp,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0XFFBFC8E8),
                                        ),
                                      ),
                                      onChanged: (startTime) => setState(
                                          (() => _endTime = startTime)),
                                      style: TextStyle(
                                        color: TodoColors.darkTextClr,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 32.sp,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  Expanded(
                                    child: DateTimePicker(
                                      type: DateTimePickerType.time,
                                      controller: _endTimeController,
                                      timeHintText: _endTime,
                                      decoration: InputDecoration(
                                        labelText: 'End time',
                                        labelStyle: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 22.sp,
                                          fontWeight: FontWeight.w600,
                                          color: const Color(0XFFBFC8E8),
                                        ),
                                      ),
                                      onChanged: (endTime) =>
                                          setState((() => _endTime = endTime)),
                                      style: TextStyle(
                                        color: TodoColors.darkTextClr,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 32.sp,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20.h),
                              Expanded(
                                child: TextFormField(
                                  keyboardType: TextInputType.multiline,
                                  maxLines: 9,
                                  autofocus: false,
                                  cursorColor: Colors.grey,
                                  controller: _descriptionController,
                                  style: TextStyle(
                                    color: TodoColors.darkTextClr,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 24.sp,
                                  ),
                                  decoration: InputDecoration(
                                    labelText: 'Description',
                                    labelStyle: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0XFFBFC8E8),
                                    ),
                                    focusedBorder: const UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Colors.grey,
                                        width: 0,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 220.h,
                                child: Column(children: [
                                  Text(
                                    'Category',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 22.sp,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0XFFBFC8E8),
                                    ),
                                  ),
                                  _buildChips(),
                                ]),
                              ),
                              GestureDetector(
                                onTap: (() => _validateData()),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: 38.h,
                                  ),
                                  child: Container(
                                    width: Get.width,
                                    height: 92.h,
                                    decoration: BoxDecoration(
                                      gradient: TodoColors.kPrimaryGradientClr,
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Color.fromRGBO(
                                              226, 226, 226, 0.25),
                                          offset: Offset(17, 26),
                                          blurRadius: 25,
                                        ),
                                      ],
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(75.r),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Create Task',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontSize: 24.sp,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
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
