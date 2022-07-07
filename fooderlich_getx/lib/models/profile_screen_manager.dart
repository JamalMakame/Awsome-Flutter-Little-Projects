import 'package:fooderlich/api/theme_services.dart';
import 'package:get/get.dart';

class ProfileScreenManager extends GetxController {
  var switchValue = false.obs;

  void _switchToggle(bool value) {
    switchValue.value = value;
  }

  void changeTheme(bool newValue) {
    ThemeService().switchTheme();
    _switchToggle(newValue);
  }
}
