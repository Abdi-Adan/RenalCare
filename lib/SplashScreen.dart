import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.cyan,
                Colors.lightBlueAccent,
                Colors.cyan,
              ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 300,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 100,
                  child: Image.asset("assets/111.png"),
                ),
              ),
              Text(
                "Renal Care",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: RaisedButton(
                  shape: StadiumBorder(),
                  color: Colors.cyan,
                  elevation: 7.0,
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed('/root');
                  },
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Text(
                  "Prepared by Dr. Kenneth Onyango.\nkennethonyango25@gmail.com\nTel: +254729251451",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
