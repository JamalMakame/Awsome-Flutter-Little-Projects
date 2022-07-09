import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/constants.dart';

class DialogBuilder {
  Future<void> showLoadingDialog() {
    return Get.defaultDialog(
      content: const SizedBox(
        width: 100,
        height: 100,
        child: Center(
          child: CircularProgressIndicator(
            color: kPrimaryClr,
            strokeWidth: 3,
          ),
        ),
      ),
    );
  }

  Future<void> showResultDialog(String text) {
    return Get.defaultDialog(
      content: SizedBox(
        height: 100,
        width: 100,
        child: Center(
          child: Text(text, textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
