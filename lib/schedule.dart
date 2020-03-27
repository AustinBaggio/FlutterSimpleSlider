import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class MySchedule with ChangeNotifier {
  Task modifiableTask = new Task("Work", 35.4, Color(0xff123423));
  double get stateManagementTime => modifiableTask.taskValue;

  set stateManagementTime(double newValue) {
    modifiableTask.taskValue = newValue;
    // lol this is a hack but idc I'm lazy
    seriesPieData = [seriesPieData[0]];
    notifyListeners();
  }

  List<charts.Series<Task, String>> seriesPieData;

  MySchedule() {
    this.seriesPieData = [
      charts.Series(
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.taskValue,
        colorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(task.colorVal),
        id: "Daily Task",
        data: [
          modifiableTask,
          new Task("Play", 5, Color(0xff575757)),
          new Task("Eat", 31, Color(0xff203954)),
          new Task("Sleep", 14, Color(0xff223456)),
        ],
        labelAccessorFn: (Task row, _) => '${row.taskValue}',
      ),
    ];
  }
}

class Task {
  String task;
  double taskValue;
  Color colorVal;
  Task(this.task, this.taskValue, this.colorVal);
}
