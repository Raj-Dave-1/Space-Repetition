// 🚩 Dada Ki Jay Ho 🚩

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

enum NavigationChoice { Home, Pomodoro, Calender, Profile }

class _HomePageState extends State<HomePage> {
  NavigationChoice navigationChoice = NavigationChoice.Home;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      navigationChoice = NavigationChoice.Home;
                      setState(() {});
                    },
                    child: navigationChoice == NavigationChoice.Home
                        ? OpenChoice(Icons.home, "Home")
                        : Icon(
                            Icons.home,
                            size: 26,
                          ),
                  ),
                  GestureDetector(
                    onTap: () {
                      navigationChoice = NavigationChoice.Pomodoro;
                      setState(() {});
                    },
                    child: navigationChoice == NavigationChoice.Pomodoro
                        ? OpenChoice(Icons.timer, "Pomodoro")
                        : Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.timer,
                              size: 26,
                            ),
                          ),
                  ),
                  GestureDetector(
                    onTap: () {
                      navigationChoice = NavigationChoice.Calender;
                      setState(() {});
                    },
                    child: navigationChoice == NavigationChoice.Calender
                        ? OpenChoice(Icons.calendar_today, "Calendar")
                        : Icon(
                            Icons.calendar_today,
                            size: 26,
                          ),
                  ),
                  GestureDetector(
                    onTap: () {
                      navigationChoice = NavigationChoice.Profile;
                      setState(() {});
                    },
                    child: navigationChoice == NavigationChoice.Profile
                        ? OpenChoice(Icons.person, "Profile")
                        : Icon(
                            Icons.person,
                            size: 26,
                          ),
                  ),
                ],
              ),
            ),
          )
        ],
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
      child: Row(
        children: [
          Icon(
            widget.icon,
            size: 30,
          ),
          Text(widget.title)
        ],
      ),
    );
  }
}
