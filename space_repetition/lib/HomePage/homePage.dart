// 🚩 Dada Ki Jay Ho 🚩

import 'package:flutter/material.dart';
import 'package:spacerepetition/HomePage/AddTask/AddTaskScreen.dart';
import '../ProfilePage/createProfile.dart';
import 'AddTask/AddTaskButton.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

enum NavigationChoice { Home, Pomodoro, Calender, Profile }

class _HomePageState extends State<HomePage> {
  NavigationChoice navigationChoice = NavigationChoice.Home;
  double iconSize = 36;
  List<Widget> pages = [
    Container(
      child: Center(child: Text("HomePage")),
    ),
    Container(
      child: Center(child: Text("Pomodoro")),
    ),
    Container(
      child: Center(child: Text("Calender")),
    ),
    CreateProfile(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.purple,
        child: pages.elementAt(currentIndex),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: navigationChoice == NavigationChoice.Home ||
              navigationChoice == NavigationChoice.Calender
          ? AddTaskButton()
          : Container(),
      bottomNavigationBar: Container(
        height: 60,
        color: Colors.blue,
        child: FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Home Icon
              GestureDetector(
                onTap: () {
                  navigationChoice = NavigationChoice.Home;
                  currentIndex = 0;
                  setState(() {});
                },
                child: navigationChoice == NavigationChoice.Home
                    ? OpenChoice(Icons.home, "Home")
                    : Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 26.0),
                        child: Icon(
                          Icons.home,
                          size: iconSize,
                        ),
                      ),
              ),
              // Pomodoro Icon
              GestureDetector(
                onTap: () {
                  navigationChoice = NavigationChoice.Pomodoro;
                  currentIndex = 1;
                  setState(() {});
                },
                child: navigationChoice == NavigationChoice.Pomodoro
                    ? OpenChoice(Icons.timer, "Pomodoro")
                    : Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 26.0),
                        child: Icon(
                          Icons.timer,
                          size: iconSize,
                        ),
                      ),
              ),
              GestureDetector(
                onTap: () {
                  navigationChoice = NavigationChoice.Calender;
                  currentIndex = 2;
                  setState(() {});
                },
                child: navigationChoice == NavigationChoice.Calender
                    ? OpenChoice(Icons.calendar_today, "Calendar")
                    : Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 26.0),
                        child: Icon(
                          Icons.calendar_today,
                          size: iconSize,
                        ),
                      ),
              ),
              GestureDetector(
                onTap: () {
                  navigationChoice = NavigationChoice.Profile;
                  currentIndex = 3;
                  setState(() {});
                },
                child: navigationChoice == NavigationChoice.Profile
                    ? OpenChoice(Icons.person, "Profile")
                    : Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 12.0, horizontal: 26.0),
                        child: Icon(
                          Icons.person,
                          size: iconSize,
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OpenChoice extends StatefulWidget {
  final IconData icon;
  final String title;
  OpenChoice(this.icon, this.title);
  @override
  State<OpenChoice> createState() => _OpenChoiceState();
}

class _OpenChoiceState extends State<OpenChoice> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
      color: Colors.redAccent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            widget.icon,
            size: 30,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            widget.title,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
