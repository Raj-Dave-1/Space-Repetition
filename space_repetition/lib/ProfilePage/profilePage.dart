import 'package:flutter/material.dart';
import 'package:spacerepetition/HomePage/homePage.dart';
import 'createProfile.dart';
class ProfilePage extends StatefulWidget
{
  @override

  ProfilePageState createState()=> ProfilePageState();


}
class ProfilePageState extends State<ProfilePage>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement buil
      return Scaffold(
          body: Button(),
      );
    }
    Widget Button()
    {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 70),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,

          children: <Widget>[
            Text("Button to add img",textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 18,

            ),
            ),
            SizedBox(height: 30,),
            InkWell(
              onTap: () => {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>CreateProfile(),))
            },
              child: Container(
                height: 60,
                width: 80,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Center(
                  child: Text("Add Profile",style: TextStyle(
                    color: Colors.white,
                    fontSize: 8,

                  ),),
                ),
              ),
            )
          ],
        ),
      );
    }



}