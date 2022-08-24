import 'package:calculator_app/theme_data.dart';
import 'package:calculator_app/widgets/num_pad.dart';
import 'package:calculator_app/widgets/result_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  var userAnswer = '';
  var userQuestion = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            right: 19.w,
            left: 19.w,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 280.h,
                child: ResultView(),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 20.h,
                  bottom: 25.h,
                ),
                child: const Divider(
                  color: MyColors.dividerClr,
                  thickness: 2,
                ),
              ),
              Expanded(
                child: NumPadView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
