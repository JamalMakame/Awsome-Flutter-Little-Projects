import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DetailRecipe extends StatelessWidget {
  const DetailRecipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 375.h,
                  width: double.maxFinite,
                  color: Colors.purple.shade500,
                ),
                Positioned(
                  left: 40.w,
                  top: 76.h,
                  child: GestureDetector(
                    onTap: (() {
                      Get.back();
                    }),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 24.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
