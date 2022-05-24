import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tasked/model/task_model.dart';

class DBHelper {
  static Database? _db;
  static const int _version = 1;
  static const String _tableName = 'tasks';

  static Future initDB() async {
    if (_db != null) {
      return;
    }
    try {
      String path = '${await getDatabasesPath()}tasks.db';
      _db = await openDatabase(
        path,
        version: _version,
        onCreate: (db, version) {
          debugPrint('Creating a new one');
          return db.execute('''
              CREATE TABLE $_tableName (
              id INTEGER PRIMARY KEY AUTOINCREMENT,
              name STRING, description STRING, date STRING, 
              startTime STRING, endTime STRING, color INTEGER, 
              isCompleted INTEGER)
            ''');
        },
      );
    } catch (e) {
      debugPrint('$e');
    }
  }

  static Future insert(TaskModel taskModel) async {
    debugPrint('Insert function called');
    return await _db!.insert(_tableName, taskModel.toMap());
  }
}