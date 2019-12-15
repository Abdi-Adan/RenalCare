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
                      Colors.deepPurple,
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
                Text(
                  "Ken Ochieng'",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  "kenochieng@gmail.com",
                  style: TextStyle(color: Colors.redAccent, fontSize: 16.0),
                ),
                SizedBox(
                  height: 30,
                ),
                buildRow(Icons.home, "Home"),
                Divider(),
                buildRow(Icons.person_pin, "Your Profile"),
                Divider(),
                buildRow(Icons.email, "Contacts"),
                Divider(),
                buildRow(Icons.info_outline, "help"),
                Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildRow(IconData icon, String title) {
    final TextStyle tStyle = TextStyle(color: Colors.white, fontSize: 16.0);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.white,
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            title,
            style: tStyle,
          ),
        ],
      ),
    );
  }
}

// class MyDrawer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         children: <Widget>[
//           DrawerHeader(
//               decoration: BoxDecoration(
//                 color: Colors.red,
//               ),
//               child: CircleAvatar(
//                 backgroundColor: Colors.redAccent,
//                 radius: 40,
//                 child: Text(
//                   "K",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 80.0,
//                   ),
//                 ),
//               )),
//           InkWell(
//             splashColor: Colors.deepOrange,
//             child: ListTile(
//               title: Text("Name"),
//               subtitle: Text('Clinton Sang'),
//               trailing: Icon(Icons.perm_contact_calendar),
//               onTap: () {},
//             ),
//           ),
//           InkWell(
//             splashColor: Colors.deepOrange,
//             child: ListTile(
//               title: Text("ID"),
//               subtitle: Text("37177280"),
//               trailing: Icon(Icons.calendar_view_day),
//               onTap: () {},
//             ),
//           ),
//           InkWell(
//             splashColor: Colors.deepOrange,
//             child: ListTile(
//               title: Text("Phone Number"),
//               subtitle: Text("+254723073552"),
//               trailing: Icon(Icons.phone),
//               onTap: () {},
//             ),
//           ),
//           InkWell(
//             splashColor: Colors.deepOrange,
//             child: ListTile(
//               title: Text("LogOut"),
//               trailing: Icon(Icons.lock),
//               onTap: () {},
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
