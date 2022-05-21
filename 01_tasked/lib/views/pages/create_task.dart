import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tasked/const/app_colors.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({Key? key}) : super(key: key);

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  final TextEditingController _dateController =
      TextEditingController(text: DateTime.now().toString());
  final TextEditingController _endTimeController = TextEditingController();

  final TextEditingController _nameController =
      TextEditingController(text: 'Jamal Makame');
  String _selectedDate = '';
  String _selectedEndTime = '';
  String _selectedStartTime = '';
  final TextEditingController _startTimeController = TextEditingController(
      text:
          '${TimeOfDay.now().hour.toString().padLeft(2, '0')}:${TimeOfDay.now().minute.toString().padLeft(2, '0')}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TodoColors.lightTextClr,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff9c2cf3),
              Color(0xff3a49f9),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
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
                      padding: const EdgeInsets.only(
                        top: 30,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name',
                            style: Theme.of(context).primaryTextTheme.headline4,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          TextField(
                            controller: _nameController,
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.name,
                            cursorColor: TodoColors.lightTextClr,
                            style: Theme.of(context).primaryTextTheme.headline4,
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Text(
                            'Date',
                            style: Theme.of(context).primaryTextTheme.headline4,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          DateTimePicker(
                            type: DateTimePickerType.date,
                            controller: _dateController,
                            firstDate: DateTime.now().subtract(
                              const Duration(days: 3),
                            ),
                            lastDate: DateTime.now().add(
                              const Duration(days: 30),
                            ),
                            style: Theme.of(context).primaryTextTheme.headline4,
                            icon: const Icon(
                              Icons.event,
                              color: TodoColors.lightTextClr,
                              size: 37,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Start time',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .headline2,
                                ),
                                Text(
                                  'End time',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .headline2,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '01:22pm',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .headline2,
                                ),
                                Text(
                                  '03:20pm',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .headline2,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 50,
                              child: Divider(
                                color: TodoColors.darkTextClr,
                                height: 3,
                                indent: 20,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'Description',
                              style:
                                  Theme.of(context).primaryTextTheme.headline2,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            TextField(
                              controller: TextEditingController(
                                text: 'sed dianummy',
                              ),
                              style:
                                  Theme.of(context).primaryTextTheme.headline3,
                              keyboardType: TextInputType.multiline,
                            ),
                            const SizedBox(height: 20),
                            Text(
                              'Category',
                              style:
                                  Theme.of(context).primaryTextTheme.headline2,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            SizedBox(
                              height: 205,
                              width: MediaQuery.of(context).size.width,
                              child: GridView.builder(
                                itemCount: 6,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 16,
                                  mainAxisSpacing: 19,
                                ),
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: (() {}),
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xff9c2cf3),
                                            Color(0xff3a49f9),
                                          ],
                                        ),
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
                                          'Box $index',
                                          style: Theme.of(context)
                                              .primaryTextTheme
                                              .headline4,
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 38.0,
                              ),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 92,
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xff9c2cf3),
                                      Color(0xff3a49f9),
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