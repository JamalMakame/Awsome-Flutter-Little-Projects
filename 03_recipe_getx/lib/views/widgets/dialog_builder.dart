import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recipe_getx/views/widgets/loading_indicator.dart';

import '../../components/constants.dart';

class DialogBuilder {
  Future<void> showLoadingDialog() {
    return Get.defaultDialog(
      title: '',
      content: const LoadingIndicator(),
    );
  }

  Future<void> showResultDialog(String text) {
    return Get.defaultDialog(
      title: '',
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
