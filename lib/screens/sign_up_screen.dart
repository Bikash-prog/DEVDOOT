import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:sos/screens/profile_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  _showOtpScreenInDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (param) {
          return AlertDialog(
            actions: [
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel'),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => ProfileScreen()));
                },
                child: Text('Done'),
              )
            ],
            title: Text('Enter Your OTP'),
            content: SingleChildScrollView(
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'OTP',
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    //device size height and width variable
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: deviceSize.height,
            width: deviceSize.width,
            color: Color(0xffffffff),
            child: CustomPaint(
              painter: DesignPainter(),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: 'SO',
                            style: GoogleFonts.rubik(
                                color: Color(0xff333456),
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                            // style: TextStyle(
                            //     fontSize: 35,
                            //     fontWeight: FontWeight.bold,
                            //     color: Color(0xff31326f),
                            // ),
                          ),
                          TextSpan(
                            text: 'S',
                            style: GoogleFonts.rubik(
                                color: Color(0xff333456),
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                        ]),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Text(
                      'You\'ll receive an OTP',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.rubik(
                        color: Color(0xff818181),
                        fontSize: 22,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: deviceSize.height * .15,
                  ),
                  Container(
                    height: deviceSize.height * .3,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        color: Colors.transparent,
                        width: deviceSize.width * .8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, top: 10, right: 10),
                              child: IntlPhoneField(
                                decoration: InputDecoration(
                                  labelText: 'Phone Number',
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(),
                                  ),
                                ),
                                initialCountryCode: 'IN',
                                onSubmitted: (phone) {
                                  _showOtpScreenInDialog(context);
                                },
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),

                          ],
                        ),
                      ),
                    ),
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

class DesignPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    Paint paint = Paint();
    Path mainBackground = Path();
    mainBackground.addRect(Rect.fromLTRB(0, 0, width, height));
    paint.color = Color(0xffffff);
    canvas.drawPath(mainBackground, paint);

    Path ovalPath = Path();

    ovalPath.moveTo(0, 0);
    ovalPath.quadraticBezierTo(width * .06, height * .8, width * .8, height);

    ovalPath.quadraticBezierTo(width, height, 0, height);

    paint.color = Color(0xff5c6e91);
    canvas.drawPath(ovalPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
