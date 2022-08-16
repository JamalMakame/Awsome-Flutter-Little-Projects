import 'package:get/get.dart';

class MyAppManager extends GetxController {
  

  var activeIndex = 0.obs;

  changeIndex(int item) {
    activeIndex.value = item;
  }
}
