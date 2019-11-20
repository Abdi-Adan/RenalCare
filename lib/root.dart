import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:renalcare/Screens/Community.dart';
import 'package:renalcare/Screens/Homepage.dart';
import 'package:renalcare/Screens/Lifestyles.dart';
import 'package:renalcare/Screens/Transplants.dart';

class MyControlScreen extends StatefulWidget {
  @override
  _MyControlScreenState createState() => _MyControlScreenState();
}

class _MyControlScreenState extends State<MyControlScreen> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  List<Widget> _screens = [
    HomePage(),
    Lifestyles(),
    Transplants(),
    Community(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_page],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 50.0,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.fastfood,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.local_pharmacy,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.public,
            size: 30,
            color: Colors.white,
          ),
        ],
        color: Colors.red,
        buttonBackgroundColor: Color(0xff680011),
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      
      child: ListView(
        children: <Widget>[
          DrawerHeader(

              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.redAccent,
                radius: 40,
                child: Text(
                  "K",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 80.0,
                  ),
                ),
              )),
          InkWell(
            splashColor: Colors.deepOrange,
            child: ListTile(
              title: Text("Name"),
              subtitle: Text('Clinton Sang'),
              trailing: Icon(Icons.perm_contact_calendar),
              onTap: () {},
            ),
          ),
          InkWell(
            splashColor: Colors.deepOrange,
            child: ListTile(
              title: Text("ID"),
              subtitle: Text("37177280"),
              trailing: Icon(Icons.calendar_view_day),
              onTap: () {},
            ),
          ),
          InkWell(
            splashColor: Colors.deepOrange,
            child: ListTile(
              title: Text("Phone Number"),
              subtitle: Text("+254723073552"),
              trailing: Icon(Icons.phone),
              onTap: () {},
            ),
          ),
          InkWell(
            splashColor: Colors.deepOrange,
            child: ListTile(
              title: Text("LogOut"),
              trailing: Icon(Icons.lock),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}

