import 'package:get/get.dart';
import 'package:tasked/db/task_db_helper.dart';
import 'package:tasked/model/task_model.dart';

class TaskController extends GetxController {
  @override
  void onReady() {
    super.onReady();
  }

  Future addTask({
    TaskModel? taskModel,
  }) async {
    return await DBHelper.insert(taskModel!);
  }
}
