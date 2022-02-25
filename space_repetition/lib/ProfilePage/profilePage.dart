import 'package:flutter/material.dart';
import 'package:spacerepetition/HomePage/homePage.dart';

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
          body: Container(
          child: Stack(
            alignment: Alignment.center,
            children: [
              profilePic(),
            ],
          ),
        )
      );
    }
    Widget profilePic()=>CircleAvatar(
      backgroundColor: Colors.grey.shade800,
      backgroundImage: NetworkImage(
          'https://th.bing.com/th/id/OIP.LfUcKCHKBamgN20k7KQWeAHaHT?pid=ImgDet&rs=1'
      ),


    );

}