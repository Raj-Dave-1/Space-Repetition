// 🚩 Dada Ki Jay Ho 🚩

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
          color: Colors.deepPurpleAccent.shade100,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // title
                  Container(
                    // NOTE: alignment can be used to fill unused space to understand: try to remove below alignment
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.green,
                    ),
                    width: fullWidth,
                    height: 100,
                    child: Container(
                      width: fullWidth,
                      color: Colors.amber,
                      child: Row(
                        children: [
                          const Expanded(
                            child: TextField(
                              decoration:
                                  InputDecoration(border: OutlineInputBorder()),
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
                  ),
                  // sub task
                  Container(
                    color: Colors.blue,
                    width: fullWidth,
                    height: 120,
                    child: Text("subtask"),
                  ),
                  // Priority
                  Container(
                    color: Colors.deepOrange,
                    child: Text("Priority"),
                    width: fullWidth * 0.4,
                    height: 55,
                  ),
                  // date
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
