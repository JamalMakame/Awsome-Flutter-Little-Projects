import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LandingController extends GetxController {
  var pageContlr = PageController().obs;
  var selectedIndex = 0.obs;

  void onTappedBar(int value) {
    onPageChanged(value);
    pageContlr.value.jumpToPage(value);
  }

  void onPageChanged(int page) {
    selectedIndex.value = page;
  }
}
