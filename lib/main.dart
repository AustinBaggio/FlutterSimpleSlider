import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/homepage.dart';
import './models/schedule.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MySchedule(),
      child: MaterialApp(
        title: 'Austin A is a better dev than Baggio',
        // Honestly disgusting that you forgot to make the app dark theme
        theme: ThemeData(brightness: Brightness.dark),
        home: HomePage(),
      ),
    );
  }
}
