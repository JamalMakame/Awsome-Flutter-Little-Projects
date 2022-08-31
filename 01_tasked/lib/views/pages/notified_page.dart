import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:tasked/const/app_colors.dart';

class NotifiedPage extends StatelessWidget {
  final String label;
  const NotifiedPage({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TodoColors.backGroundClr,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: ShaderMask(
          blendMode: BlendMode.srcATop,
          shaderCallback: ((bounds) {
            return TodoColors.kPrimaryGradientClr.createShader(bounds);
          }),
          child: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back,
              size: 32.sp,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 20.h,
              ),
              child: ShaderMask(
                blendMode: BlendMode.srcATop,
                shaderCallback: (bounds) {
                  return TodoColors.kPrimaryGradientClr.createShader(bounds);
                },
                child: Text(
                  'Hello, Jamal',
                  style: TextStyle(
                    fontSize: 33.sp,
                    fontWeight: FontWeight.w400,
                    color: TodoColors.lightTextClr,
                  ),
                ),
              ),
            ),
             SizedBox(
              height: 20.h,
            ),
            ShaderMask(
              blendMode: BlendMode.srcATop,
              shaderCallback: ((bounds) {
                return TodoColors.kPrimaryGradientClr.createShader(bounds);
              }),
              child:  Text(
                'You have a new reminder',
                style: TextStyle(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w400,
                  color: TodoColors.lightTextClr,
                ),
              ),
            ),
             SizedBox(
              height: 30.h,
            ),
            Container(
              height: Get.height * 0.62,
              width: Get.width * 0.85,
              decoration: BoxDecoration(
                gradient: TodoColors.kPrimaryGradientClr,
                borderRadius: BorderRadius.circular(40.r),
              ),
              child: Padding(
                padding:  EdgeInsets.symmetric(
                  horizontal: 30.w,
                  vertical: 40.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading:  Icon(
                        Icons.account_balance,
                        color: Colors.white,
                        size: 42.sp,
                      ),
                      title: Text(
                        'Title',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 37.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white
                        ),
                      ),
                    ),
                     SizedBox(
                      height: 25.h,
                    ),
                    Text(
                      label.toString().split('|')[0],
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 37.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                      ),
                    ),
                     SizedBox(
                      height: 25.h,
                    ),
                    ListTile(
                      leading:  Icon(
                        Icons.assignment,
                        color: Colors.white,
                        size: 42.sp,
                      ),
                      title: Text(
                        'Description',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 37.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white
                        ),
                      ),
                    ),
                     SizedBox(
                      height: 25.h,
                    ),
                    Text(
                      label.toString().split('|')[1],
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 37.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                      ),
                    ),
                     SizedBox(
                      height: 25.h,
                    ),
                    ListTile(
                      leading:  Icon(
                        Icons.alarm,
                        color: Colors.white,
                        size: 42.sp,
                      ),
                      title: Text(
                        'Time',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 37.sp,
                          fontWeight: FontWeight.w400,
                          color: Colors.white
                        ),
                      ),
                    ),
                     SizedBox(
                      height: 25.h,
                    ),
                    Text(
                      label.toString().split('|')[2],
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 37.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
