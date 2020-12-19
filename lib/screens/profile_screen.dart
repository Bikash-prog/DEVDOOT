import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sos/supporter_widgets/drawer_navigation.dart';
import 'package:avatar_glow/avatar_glow.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff6b71ea),
        title: RichText(
          text: TextSpan(children: [
            TextSpan(
              text: 'DEV',
              style: GoogleFonts.rubik(
                  color: Color(0xffffffff),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
              // style: TextStyle(
              //     fontSize: 35,
              //     fontWeight: FontWeight.bold,
              //     color: Color(0xff31326f),
              // ),
            ),
            TextSpan(
              text: 'DOOT',
              style: GoogleFonts.rubik(
                  color: Color(0xffffffff),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ]),
        ),
      ),
      drawer: DrawerNavigation(),
      body: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: 'Emergency',
                  style: GoogleFonts.rubik(
                      color: Color(0xffff4646),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                  // style: TextStyle(
                  //     fontSize: 35,
                  //     fontWeight: FontWeight.bold,
                  //     color: Color(0xff31326f),
                  // ),
                ),
                TextSpan(
                  text: ' Dial',
                  style: GoogleFonts.rubik(
                      color: Color(0xff0e49b5),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ]),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AvatarGlow(
                  glowColor: Color(0xff6b71ea),
                  endRadius: 80.0,
                  duration: Duration(milliseconds: 2000),
                  repeat: true,
                  showTwoGlows: true,
                  repeatPauseDuration: Duration(milliseconds: 100),
                  child: Material(
                    elevation: 8.0,
                    shape: CircleBorder(),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.grey[100],
                      child: FlatButton(
                        onPressed: null,
                          child: Icon(Icons.call,size: 50,color: Color(0xff6b71ea),),
                      ),
                    ),
                    ),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
