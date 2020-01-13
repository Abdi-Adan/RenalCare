import 'package:flutter/material.dart';

import 'package:renalcare/SignIn/Walkthrough.dart';

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
                Color(0xfff8f8),
                Color(0xff9595)
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
                  child: LogoIcon(),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                WalkthroughScreen()));
                  },
                  child: Text(
                    "Get Started",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class LogoIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage logoImage = AssetImage("assets/111.png");
    Image image = Image(
      image: logoImage,
    );
    return Container(
      child: image, height: 200,
    );
  }
}
