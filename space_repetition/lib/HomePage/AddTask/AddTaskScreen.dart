// 🚩 Dada Ki Jay Ho 🚩

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddTaskScreen extends StatefulWidget {
  @override
  _AddTaskScreenState createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  @override
  Widget build(BuildContext context) {
    final double fullWidth = MediaQuery.of(context).size.width;
    final double fullHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SafeArea(
        child: Container(
          color: Colors.white,
//          color: Colors.deepPurpleAccent.shade100,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Create New Task Text Field | TextField
                  CreateNewTask(fullHeight, fullWidth),
                  const SizedBox(
                    height: 20,
                  ),

                  // sub task | TextField
                  SubTask(fullHeight, fullWidth),

                  const SizedBox(height: 20),

                  Container(
//                    color: Colors.purpleAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Due Date
                        DueDate(fullHeight, fullWidth),
                        // Priority
                        PrioritySelector(fullHeight, fullWidth),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Repetition Date
                  Container(
                    color: Colors.orange,
                    child: Text("date"),
                    width: fullWidth,
                    height: 100,
                  ),
                  // notes
                  Container(
                    color: Colors.deepPurpleAccent,
                    child: Text("notes"),
                    width: fullWidth,
                    height: 100,
                  ),
                  // url
                  Container(
                    color: Colors.cyan,
                    child: Text("url"),
                    width: fullWidth,
                    height: 55,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CreateNewTask extends StatelessWidget {
  double fullWidth, fullHeight;

  CreateNewTask(this.fullHeight, this.fullWidth);

  @override
  Widget build(BuildContext context) {
    return Container(
      // NOTE: alignment can be used to fill unused space to understand: try to remove below alignment
      alignment: Alignment.center,
      decoration: BoxDecoration(
//                      color: Colors.green,
          ),
      width: fullWidth,
      height: 100,
      child: Container(
        width: fullWidth,
//                      color: Colors.amber,
        child: Row(
          children: [
            const Expanded(
              child: TextField(
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xff434C5E),
                ),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
//                    TODO: why below thing is not working
//                    borderSide: BorderSide(
//                      width: 3,
//                      color: Color(0xff434C5E),
//                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  hintText: "Create New Task",
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            // Done IconButton
            Container(
              decoration: const BoxDecoration(
                color: Color(0xff434C5E),
                borderRadius: BorderRadius.horizontal(
                  left: Radius.elliptical(100, 50),
                ),
              ),
              width: 60,
              height: 60,
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SubTask extends StatelessWidget {
  final double fullHeight;
  final double fullWidth;

  SubTask(this.fullHeight, this.fullWidth);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Color(0xff434C5E).withOpacity(.3),
        ),
        borderRadius: BorderRadius.circular(12),
//        color: Colors.blue,
      ),
      padding: const EdgeInsets.only(left: 10, right: 20, top: 18, bottom: 14),
      width: fullWidth,
      child: Container(
//        color: Colors.green,
        // SubTask TextField
        child: TextField(
          style: const TextStyle(
            color: Color(0xff434C5E),
            fontSize: 14,
          ),
          decoration: InputDecoration(
            isDense: true,
            floatingLabelAlignment: FloatingLabelAlignment.start,
            hintText: "Add Sub-Tasks",
            // Icon Button | Add Icon | +
            icon: Container(
              decoration: BoxDecoration(
                color: Color(0xffEFF0F8),
                borderRadius: BorderRadius.circular(15),
              ),
              child: IconButton(
                icon: const Icon(
                  Icons.add,
                  color: Color(0xff434C5E),
                  size: 22,
                ),
                onPressed: () {
                  print("add subtask pressed");
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DueDate extends StatelessWidget {
  double fullWidth, fullHeight;

  DueDate(this.fullHeight, this.fullWidth);

  @override
  Widget build(BuildContext context) {
    double boxwidth = fullWidth * 0.43;
    return Container(
      width: boxwidth,
      height: 68,
      decoration: BoxDecoration(
//        color: Colors.green,
        border: Border.all(
          color: Color(0xff434C5E).withOpacity(.3),
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffEFF0F8),
            ),
            margin: EdgeInsets.only(left: 12, right: 14),
            padding: EdgeInsets.all(11),
            child: const Icon(
              FontAwesomeIcons.calendarCheck,
              size: 22,
              color: Color(0xff434C5E),
            ),
          ),
          Container(
//            color: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Due Date",
                  style: TextStyle(fontSize: 13),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "26 April, 22",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PrioritySelector extends StatelessWidget {
  double fullWidth, fullHeight;

  PrioritySelector(this.fullHeight, this.fullWidth);

  @override
  Widget build(BuildContext context) {
    double boxwidth = fullWidth * 0.43;
    return Container(
      decoration: BoxDecoration(
//        color: Colors.green,
        border: Border.all(
          color: Color(0xff434C5E).withOpacity(.3),
        ),
        borderRadius: BorderRadius.circular(30),
        color: Colors.deepOrange.withOpacity(0.4),
      ),
      width: boxwidth,
      height: 68,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffEFF0F8),
            ),
            margin: EdgeInsets.only(left: 12, right: 14),
            padding: EdgeInsets.all(11),
            child: const Icon(
//              FontAwesomeIcons.star,
              FontAwesomeIcons.starHalfAlt,
//              FontAwesomeIcons.solidStar,
              size: 22,
              color: Color(0xff434C5E),
            ),
          ),
          Container(
//            color: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Priority",
                  style: TextStyle(fontSize: 13),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "Medium",
                  style: TextStyle(fontSize: 13),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
