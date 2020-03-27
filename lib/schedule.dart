import 'package:flutter/material.dart';

class MySchedule with ChangeNotifier {
  double _stateManagementTime = 40;
  double get stateManagementTime => _stateManagementTime;

  set stateManagementTime(double newValue) {
    _stateManagementTime = newValue;
    notifyListeners();
  }
}
