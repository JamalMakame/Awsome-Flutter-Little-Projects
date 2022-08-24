import 'package:calculator_app/controller/calc_controller.dart';
import 'package:calculator_app/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class ResultView extends GetView<CalcController> {
  ResultView({Key? key}) : super(key: key);

  final calController = Get.put(CalcController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          textDirection: TextDirection.rtl,
          children: [
            Obx(
              () => Text(
                controller.equation,
                style: MyColors.buttonText.copyWith(
                  fontSize: 36.sp,
                ),
              ),
            ),
          ],
        ),
        const Spacer(),
        Row(
          textDirection: TextDirection.rtl,
          children: [
            Obx(
              () => Text(
                calController.result,
                style: MyColors.buttonText.copyWith(
                  color: MyColors.resultClr,
                  fontSize: 36.sp,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.clockRotateLeft,
                color: MyColors.whiteButtonTextClr,
              ),
            ),
            SizedBox(
              width: 20.h,
            ),
            IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.ruler,
                color: MyColors.whiteButtonTextClr,
                size: 24.sp,
              ),
            ),
            SizedBox(
              width: 20.h,
            ),
            IconButton(
              onPressed: () {},
              icon: FaIcon(
                FontAwesomeIcons.squareRootVariable,
                color: MyColors.whiteButtonTextClr,
                size: 24.sp,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                calController.delete();
              },
              icon: FaIcon(
                FontAwesomeIcons.deleteLeft,
                color: MyColors.whiteButtonTextClr,
                size: 24.sp,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
