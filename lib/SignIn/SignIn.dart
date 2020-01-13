import 'package:flutter/material.dart';
import 'package:renalcare/SignIn/LoginPage.dart';
import 'package:renalcare/root.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool eye = true;

  void _toggle() {
    setState(() {
      eye = !eye;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: <Widget>[
          new Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 20, 0),
            child: new FlatButton(
              child: new Text(
                "Log In",
                style: new TextStyle(color: Colors.grey, fontSize: 17),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => LoginPage()));
              },
              highlightColor: Colors.red,
              shape: StadiumBorder(),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Text(
                "Sign up",
                style: new TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
              ),
              new SizedBox(
                height: 40,
              ),
              new TextField(
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  labelText: "Email",
                ),
              ),
              new SizedBox(
                height: 20,
              ),
              new TextField(
                keyboardType: TextInputType.text,
                autocorrect: false,
                decoration: new InputDecoration(
                  // hintText: "Email",
                  labelText: "Name",
                ),
              ),
              new SizedBox(
                height: 30,
              ),
              new TextField(
                keyboardType: TextInputType.text,
                autocorrect: false,
                decoration: new InputDecoration(
                  labelText: "Password",
                  suffixIcon: new GestureDetector(
                    child: new Icon(
                      Icons.remove_red_eye,
                    ),
                    onTap: _toggle,
                  ),
                ),
                obscureText: eye,
              ),
              new SizedBox(
                height: 30,
              ),
              new SizedBox(
                height: 50,
                child: new RaisedButton(
                  child: new Text("Sign up",
                      style: new TextStyle(color: Colors.white)),
                  color: Colors.cyan,
                  elevation: 15.0,
                  shape: StadiumBorder(),
                  splashColor: Colors.redAccent,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) =>
                                MyControlScreen()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
