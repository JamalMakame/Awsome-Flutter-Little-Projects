import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasked/const/app_colors.dart';
import 'package:tasked/model/task_model.dart';

class TaskTile extends StatelessWidget {
  const TaskTile(this.taskModel, {Key? key}) : super(key: key);

  final TaskModel? taskModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 53.w),
      width: Get.width,
      height: 143.h,
      margin: EdgeInsets.only(bottom: 5.h),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: TodoColors.lightTextClr,
        ),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 61.h,
                  width: 61.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.r),
                    ),
                    gradient: TodoColors.kPrimaryGradientClr,
                  ),
                  child: Center(
                    child: Image(
                      image: const AssetImage(
                        'assets/svg/to-do-list 1 (Traced).png',
                      ),
                      width: 25.sp,
                      height: 30.sp,
                    ),
                  ),
                ),
              ],
            ),
             SizedBox(
              width: 15.w,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    taskModel!.name ?? "",
                    style:  TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                      color: TodoColors.darkTextClr,
                    ),
                  ),
                   SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.access_time_rounded,
                        color: Colors.grey[900],
                        size: 18.sp,
                      ),
                       SizedBox(width: 4.w),
                      Text(
                        "${taskModel!.startTime} - ${taskModel!.endTime}",
                        style:  TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: TodoColors.darkTextClr,
                        ),
                      ),
                    ],
                  ),
                   SizedBox(height: 4.h),
                  Text(
                    taskModel!.description ?? "",
                    style:  TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      color: TodoColors.darkTextClr,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin:  EdgeInsets.symmetric(horizontal: 10.w),
              height: 60.h,
              width: 0.5,
              color: Colors.grey[900]!.withOpacity(0.7),
            ),
            RotatedBox(
              quarterTurns: 3,
              child: Text(
                taskModel!.isCompleted == 1 ? "COMPLETED" : "TODO",
                style:  TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14.sp,
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
