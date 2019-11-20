import 'package:flutter/material.dart';
import 'package:flutter_walkthrough/flutter_walkthrough.dart';
import 'package:flutter_walkthrough/walkthrough.dart';
import 'package:renalcare/root.dart';

class WalkthroughScreen extends StatelessWidget {

  final List<Walkthrough> list = [
    Walkthrough(
      title: "Home",
      content: "General Awarenes of Renal Conditions",
      imageIcon: Icons.camera_enhance,
    ),
    Walkthrough(
      title: "Lifestyle",
      content: "Habits you need to adapt, the dos and donts",
      imageIcon: Icons.fastfood,
    ),
    Walkthrough(
      title: "Transplants",
      content: "Details concerning Kidney transplants",
      imageIcon: Icons.local_pharmacy,
    ),
    Walkthrough(
      title: "Community",
      content: "An intergral community for support",
      imageIcon: Icons.public,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    //here we need to pass the list and the route for the next page to be opened after this.
    return new IntroScreen(
      list,
      new MaterialPageRoute(builder: (context) => new MyControlScreen()),
    );
  }
}

class ContinueWithGoogle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
        shape: StadiumBorder(),
        elevation: 8.0,
        color: Colors.red,
        child: Row(
          children: <Widget>[
            Image.asset(
              'assets/google.png',
              height: 24.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                'Continue with Google',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            ),
          ],
        ),
        onPressed: ()  {
          Navigator.push(context, MaterialPageRoute(builder: (context) => new MyControlScreen()),);
        },
      );
  }
}