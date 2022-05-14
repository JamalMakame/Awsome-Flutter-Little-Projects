import 'package:calculator_app/controller/calc_controller.dart';
import 'package:calculator_app/theme_data.dart';
import 'package:flutter/material.dart';
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
                style: MyColors.buttonText,
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
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
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
            const SizedBox(
              width: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.ruler,
                color: MyColors.whiteButtonTextClr,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.squareRootVariable,
                color: MyColors.whiteButtonTextClr,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                calController.delete();
              },
              icon: const FaIcon(
                FontAwesomeIcons.deleteLeft,
                color: MyColors.whiteButtonTextClr,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
