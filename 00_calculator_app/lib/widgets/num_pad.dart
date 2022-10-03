import 'package:calculator_app/controller/calc_controller.dart';
import 'package:calculator_app/theme_data.dart';
import 'package:calculator_app/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class NumPadView extends GetView<CalcController> {
  NumPadView({Key? key}) : super(key: key);
  final calController = Get.put(CalcController());
  final List<String> buttons = [
    'AC',
    '()',
    '%',
    '/',
    '7',
    '8',
    '9',
    'x',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    '+/-',
    '0',
    '.',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverGrid(
          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 25.h,
            crossAxisSpacing: 25.w,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return customButton(
                backgroundClr: buttons[index] == 'AC'
                    ? MyColors.cBackgroundClr
                    : buttons[index] == '='
                        ? MyColors.greenButtonTextClr
                        : MyColors.buttonBackgroundClr,
                buttonText: buttons[index],
                callback: () {
                  if (buttons[index] == 'AC') {
                    calController.resetResult();
                  } else if (buttons[index] == '()') {
                    calController.addBrackets();
                  } else if (buttons[index] == '+/-') {
                    calController.negateResult();
                  } else if (buttons[index] == '=') {
                    calController.equals();
                  } else if (buttons[index] == '%') {
                    calController.percentResult();
                  } else {
                    calController.append(buttons[index]);
                  }
                },
                textClr: buttons[index] == 'AC' || buttons[index] == '='
                    ? MyColors.buttonBackgroundClr
                    : buttons[index] == '()' ||
                            buttons[index] == '%' ||
                            buttons[index] == '/' ||
                            buttons[index] == 'x' ||
                            buttons[index] == '-' ||
                            buttons[index] == '+'
                        ? MyColors.greenButtonTextClr
                        : MyColors.whiteButtonTextClr,
              );
            },
            childCount: buttons.length,
          ),
        )
      ],
    );
  }
}
