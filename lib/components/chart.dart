import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/schedule.dart';

class SimplePieChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<MySchedule>(
        builder: (context, state, _) =>
            Center(child: Text("${state.stateManagementTime}")));
  }
}
