import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:myapp/chart.dart';
import 'package:myapp/slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Booyah"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text("Sample chart"),
              Expanded(child: SimplePieChart()),
              SimpleSlider(),
            ],
          ),
        ),
      ),
    );
  }
}
