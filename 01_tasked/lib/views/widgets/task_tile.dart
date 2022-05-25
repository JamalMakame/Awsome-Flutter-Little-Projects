import 'package:flutter/material.dart';
import 'package:tasked/const/app_colors.dart';
import 'package:tasked/model/task_model.dart';

class TaskTile extends StatelessWidget {
  const TaskTile(this.taskModel, {Key? key}) : super(key: key);

  final TaskModel? taskModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width,
      height: 160,
      margin: const EdgeInsets.only(bottom: 12),
      child: Container(
        padding: const EdgeInsets.all(16),
        //  width: SizeConfig.screenWidth * 0.78,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: TodoColors.lightTextClr,
        ),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 90.96,
                  width: 90.96,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromRGBO(156, 44, 243, 1),
                        Color.fromRGBO(58, 72, 248, 1)
                      ],
                    ),
                  ),
                  child: const Center(
                    child: Image(
                      image: AssetImage('assets/svg/to-do-list 1 (Traced).png'),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    taskModel!.name ?? "",
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: TodoColors.darkTextClr,
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.access_time_rounded,
                        color: Colors.grey[900],
                        size: 18,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        "${taskModel!.startTime} - ${taskModel!.endTime}",
                        style: const TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: TodoColors.darkTextClr,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    taskModel!.description ?? "",
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: TodoColors.darkTextClr,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              height: 60,
              width: 0.5,
              color: Colors.grey[900]!.withOpacity(0.7),
            ),
            RotatedBox(
              quarterTurns: 3,
              child: Text(
                taskModel!.isCompleted == 1 ? "COMPLETED" : "TODO",
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: TodoColors.darkTextClr,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
