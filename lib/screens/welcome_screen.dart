import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:sos/screens/login_screen.dart';
import 'package:sos/screens/profile_screen.dart';
import 'package:sos/screens/sign_up_screen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    //device size height and width variable
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
          child: Container(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: Container(
                    height: deviceSize.height * .3,
                    width: deviceSize.width * .8,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/sos_welcome_image.png',
                        ),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(children: [
                    TextSpan(
                      text: 'DEV',
                      style: GoogleFonts.rubik(
                          color: Color(0xff333456),
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: 'DOOT',
                      style: GoogleFonts.rubik(
                          color: Color(0xff333456),
                          fontSize: 35,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
                ),
              ],
            ),
            Divider(
              thickness: 1,
              indent: 140,
              endIndent: 140,
              color: Color(0xff6b71ea),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 15.0),
                  child: Material(
                    elevation: 5.0,
                    color: Color(0xff6b71ea),
                    borderRadius: BorderRadius.circular(10.0),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ProfileScreen()));
                      },
                      minWidth: deviceSize.width * .3,
                      height: 42.0,
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.0, horizontal: 15.0),
                  child: Material(
                    elevation: 5.0,
                    color: Color(0xff6b71ea),
                    borderRadius: BorderRadius.circular(10.0),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SignUpScreen()));
                      },
                      minWidth: deviceSize.width * .3,
                      height: 42.0,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
