// Dada Ki Jay Ho

import 'package:flutter/material.dart';
import 'package:spacerepetition/HomePage/AddTask/AddTaskScreen.dart';
import './HomePage/homePage.dart';
import 'HomePage/AddTask/AddTaskScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
