// Dada Ki Jay Ho

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateProfile extends StatefulWidget {
  const CreateProfile({Key? key}) : super(key: key);

  @override
  _CreateProfileState createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: ListView(
          children: <Widget>[
            nameTextField(),
            SizedBox(
              height: 20,
            ),
            emailTextField(),

            SizedBox(
              height: 20,
            ),

            //mainAxisAlignment: MainAxisAlignment.center,

            Row(
              children: [
                Text(
                  '${date.day}/${date.month}/${date.year}',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                  child: ElevatedButton(
                    child: Text('Select DOB'),
                    onPressed: () async {
                      DateTime? newDate = await showDatePicker(
                          context: context,
                          initialDate: date,
                          firstDate: DateTime(1900),
                          lastDate: DateTime(2100));
                      if (newDate == null) return;
                      setState(() => date = newDate);
                    },
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 20,
            ),
            phonenoTextField(),
            SizedBox(
              height: 20,
            ),
            Button(context),
          ],
        ),
      ),
    );
  }
}

Widget nameTextField() {
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(
          borderSide: BorderSide(
        color: Colors.teal,
      )),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
        color: Colors.orange,
        width: 2,
      )),
      prefixIcon: Icon(
        Icons.person,
        color: Colors.green,
      ),
      labelText: "Name",
      helperText: "Field can't be empty",
      hintText: "First Name",
    ),
  );
}

Widget emailTextField() {
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(
          borderSide: BorderSide(
        color: Colors.teal,
      )),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
        color: Colors.orange,
        width: 2,
      )),
      prefixIcon: Icon(
        Icons.email,
        color: Colors.green,
      ),
      labelText: "Email",
      helperText: "Field can't be empty",
      hintText: "xyz@gmail.com",
    ),
  );
}

Widget phonenoTextField() {
  return TextFormField(
    decoration: InputDecoration(
      border: OutlineInputBorder(
          borderSide: BorderSide(
        color: Colors.teal,
      )),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
        color: Colors.orange,
        width: 2,
      )),
      prefixIcon: Icon(
        Icons.phone,
        color: Colors.green,
      ),
      labelText: "Phone No",
      helperText: "Please enter Phone No",
      hintText: "10 digit phone no",
    ),
  );
}

Widget Button(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 70),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        InkWell(
          onTap: () => {
            showDialog(
                context: context,
                builder: (context) => CupertinoAlertDialog(
                      title: Text("Are You Sure"),
                      actions: [Text("Yes"), Text("No")],
                      content: Text("Just Testing"),
                    ),
            ),
          },
          child: Container(
            height: 60,
            width: 500,
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Text(
                "Done",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        )
      ],
    ),
  );
}
