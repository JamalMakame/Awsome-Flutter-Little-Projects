import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:productivity_timer/timer_model.dart';

class CountDownProvider extends ChangeNotifier {
  Timer? timer;

  int _remainingTime = 0;

  int get time => _remainingTime;

  set time(int value) {
    _remainingTime = value;
    notifyListeners();
  }

  setTime(int value) {
    _remainingTime = value;
    notifyListeners();
  }

  startTime() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingTime == 0) {
        timer.cancel();
      } else {
        time--;
      }
    });
    notifyListeners();
  }

  stopTime() {
    timer?.cancel();
    notifyListeners();
  }
}
