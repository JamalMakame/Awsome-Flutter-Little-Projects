import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import '../services/date_time.dart';

final myBox = GetStorage('HABIT_TRACKER');

class HabitDatabase {
  Map<DateTime, int> heatMapDataSet = {};

  void createDefaultData() {
    myBox.write('START_DATE', '$todaysDateFormatted()');
  }

  

  void loadHeatMap() {
    DateTime startDate = createDateTimeObject(myBox.read("START_DATE"));

    // count the number of days to load
    int daysInBetween = DateTime.now().difference(startDate).inDays;

    // go from start date to today and add each percentage to the dataset
    // "PERCENTAGE_SUMMARY_yyyymmdd" will be the key in the database
    for (int i = 0; i < daysInBetween + 1; i++) {
      String yyyymmdd = convertDateTimeToString(
        startDate.add(Duration(days: i)),
      );

      double strengthAsPercent = double.parse(
        myBox.read("PERCENTAGE_SUMMARY_$yyyymmdd") ?? "0.0",
      );

      // split the datetime up like below so it doesn't worry about hours/mins/secs etc.

      // year
      int year = startDate.add(Duration(days: i)).year;

      // month
      int month = startDate.add(Duration(days: i)).month;

      // day
      int day = startDate.add(Duration(days: i)).day;

      final percentForEachDay = <DateTime, int>{
        DateTime(year, month, day): (10 * strengthAsPercent).toInt(),
      };

      heatMapDataSet.addEntries(percentForEachDay.entries);
      debugPrint('$heatMapDataSet');
    }
  }
}
