import 'package:flutter/material.dart';
import 'package:myapp/slider.dart';
import 'package:myapp/chart.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booyah"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(child: SimplePieChart()),
            SimpleSlider(),
          ],
        ),
      ),
    );
  }
}
