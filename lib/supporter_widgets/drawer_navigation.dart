import 'package:flutter/material.dart';
import 'package:sos/screens/login_screen.dart';
import 'package:sos/screens/sign_up_screen.dart';


class DrawerNavigation extends StatefulWidget {
  @override
  _DrawerNavigationState createState() => _DrawerNavigationState();
}

class _DrawerNavigationState extends State<DrawerNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Annu'),
              accountEmail:  Text('Certified DEVDOOT user'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.black54,
                  child: Icon(Icons.verified_user,color: Colors.white,),
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xff7579e7),
              ),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LogInScreen()));
              },
            ),
            ListTile(
              title: Text('Nearby Devdoots'),
              leading: Icon(Icons.people),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LogInScreen()));
              },
            ),

            ListTile(
              title: Text('Ask a question?'),
              leading: Icon(Icons.question_answer),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SignUpScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}