import 'package:flutter/material.dart';
import 'package:myapp/schedule.dart';
import 'package:provider/provider.dart';

class SimpleSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Consumer<MySchedule>(
        builder: (context, state, _) => Slider(
            value: state.stateManagementTime,
            min: 0.0,
            max: 100.0,
            label: '${state.stateManagementTime}',
            onChanged: (double newValue) => {
                  Provider.of<MySchedule>(context, listen: false)
                      .stateManagementTime = newValue,
                }),
      ),
    );
  }
}
