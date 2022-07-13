import 'package:get/get.dart';

class HomeScreenManager extends GetxController {
  var tabIndex = 0.obs;

  changeTabIndex(int item) {
    tabIndex.value = item;
  }
}
