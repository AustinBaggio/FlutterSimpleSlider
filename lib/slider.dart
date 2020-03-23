import 'package:flutter/material.dart';
import 'package:myapp/chart.dart' as pie;


class SimpleSlider extends StatefulWidget {
  @override
  _SimpleSliderState createState() {
    return _SimpleSliderState();
  }
}

class _SimpleSliderState extends State {
  int _value = 9;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Slider(
        value:_value.toDouble(),
        min:0.0,
        max:10.0,
        divisions: 10,
        label: '$_value',
        onChanged: (double newValue){
          setState(() {
            
            _value = newValue.round();
          });
        },
      ),
    );
  }
}
