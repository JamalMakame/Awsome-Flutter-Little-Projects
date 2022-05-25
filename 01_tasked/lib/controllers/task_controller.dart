import 'package:get/get.dart';
import 'package:tasked/db/task_db_helper.dart';
import 'package:tasked/model/task_model.dart';

class TaskController extends GetxController {
  var taskModelList = <TaskModel>[].obs;

  Future addTask({
    TaskModel? taskModel,
  }) async {
    return await DBHelper.insert(taskModel!);
  }

  void getTasks() async {
    List<Map<String, dynamic>> tasks = await DBHelper.query();
    taskModelList.assignAll(tasks.map((e) => TaskModel.fromMap(e)).toList());
  }

  void delete(TaskModel taskModel) {
    DBHelper.delete(taskModel);
  }
}
