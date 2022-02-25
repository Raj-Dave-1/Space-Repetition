// 🚩 Dada Ki Jay Ho 🚩

import 'package:flutter/material.dart';
import 'package:spacerepetition/HomePage/AddTask/AddTaskScreen.dart';

class AddTaskButton extends StatefulWidget {
  @override
  _AddTaskButtonState createState() => _AddTaskButtonState();
}

class _AddTaskButtonState extends State<AddTaskButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purpleAccent,
      child: FloatingActionButton(
        onPressed: () async {
          var returned_value = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddTaskScreen(),
              ));
          print(returned_value);
        },
        child: const Text(
          "+",
          style: TextStyle(fontSize: 36),
        ),
      ),
    );
  }
}
