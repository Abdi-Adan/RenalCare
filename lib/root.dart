import 'package:flutter/material.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

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
    LifeStyles(),
    Transplants(),
    Community(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Renal Kidney Disease",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.red,
      ),
      drawer: buildDrawer(),
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

  buildDrawer() {
    return ClipPath(
      clipper: OvalRightBorderClipper(),
      child: Container(
        padding: const EdgeInsets.only(left: 16.0, right: 40),
        decoration: BoxDecoration(color: Color(0xff680011), boxShadow: [
          BoxShadow(color: Color(0xff680011)),
        ]),
        width: 300,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: Icon(
                      Icons.power_settings_new,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  height: 90,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(colors: [
                      Color(0xff680011),
                      Colors.redAccent,
                    ]),
                  ),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.red,
                    child: Text(
                      "K",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                SizedBox(
                  height: 30,
                ),
                buildRow(Icon(Icons.home), "Name", "Ken Ochieng"),
                buildRow(Icon(Icons.person_pin), "Email", "kenochieng@gmail.com"),
                buildRow(Icon(Icons.phone), "Contacts Us", "Our Hospitals"),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildRow(Icon icon, String title, String subtitle) {
    final TextStyle tStyle = TextStyle(color: Colors.white, fontSize: 16.0);
    return InkWell(
      splashColor: Colors.redAccent,
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: InkWell(
          splashColor: Colors.redAccent,
          onTap: () {},
          child: Card(
            elevation: 5.0,
            child: ListTile(
              leading: icon,
              title: Text(
                title,
                style: tStyle,
              ),
              subtitle: Text(subtitle),
            ),
          ),
        ),
      ),
    );
  }
}

