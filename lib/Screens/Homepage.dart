import 'package:flutter/material.dart';
import 'package:renalcare/root.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // IconTheme
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "RenalCare",
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: MyDrawer(),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Text(
              "RenalCare",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 185,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(75.0),
              ),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 300,
                    child: ListView(
                      children: <Widget>[
                        _listWidgetTile("What is renal Disease? ", 'Also known as CKD...', Icon(Icons.format_align_right))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _listWidgetTile(
    String title,
    String sub,
    trailingIcon,
  ) {
    return InkWell(
      splashColor: Colors.redAccent,
      child: Card(
        elevation: 5.0,
        child: ListTile(
          leading: Text(title),
          subtitle: Text(sub),
          trailing: trailingIcon,
          onTap: () {},
        ),
      ),
    );
  }
}
