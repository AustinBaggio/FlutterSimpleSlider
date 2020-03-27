import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:myapp/homepage.dart';
import 'package:myapp/schedule.dart';

void main() => runApp(
      ChangeNotifierProvider(
        create: (context) => MySchedule(),
        child: MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Austin A is a better dev than Baggio',
      // Honestly disgusting that you forgot to make the app dark theme
      theme: ThemeData(brightness: Brightness.dark),
      home: HomePage(),
    );
  }
}
