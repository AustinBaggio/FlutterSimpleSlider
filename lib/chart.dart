import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;


class SimplePieChart extends StatefulWidget{
  @override
  _SimplePieChartState createState() => _SimplePieChartState();
}

class _SimplePieChartState extends State<SimplePieChart> {
  Widget build(BuildContext context){
    return charts.PieChart(
      _seriesPieData,
      animate: true,
      animationDuration: Duration(seconds: 3),
    );
  }

  List<charts.Series<Task, String>> _seriesPieData;

  _generateData() {
    var pieData = [
      new Task("Work", 35.4, Color(0xff123423)),
      new Task("Play", 5, Color(0xff575757)),
      new Task("Eat", 31, Color(0xff203954)),
      new Task("Sleep", 14, Color(0xff223456)),
    ];

    _seriesPieData.add(
      charts.Series(
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.taskValue,
        colorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(task.colorVal),
        id: "Daily Task",
        data: pieData,
        labelAccessorFn: (Task row, _) => '${row.taskValue}',
      ),
    );
  }

  void initState() {
    super.initState();
    _seriesPieData = List<charts.Series<Task, String>>();
    _generateData();
  }
}

void editData(){
  
}

class Task {
  String task;
  double taskValue;
  Color colorVal;
  Task(this.task, this.taskValue, this.colorVal);
}

