import 'package:get/get.dart';

import 'package:tech_ecommerce_app/app/modules/login/controllers/login_auth_controller.dart';

import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}
