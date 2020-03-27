import 'package:flutter/material.dart';
// import 'package:charts_flutter/flutter.dart' as charts;
import 'package:provider/provider.dart';
import 'package:myapp/schedule.dart';

class SimplePieChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MySchedule>(
        builder: (context, state, _) =>
            Center(child: Text("${state.stateManagementTime}")));
  }
}
