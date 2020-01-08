import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:renalcare/root.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
      appBar: new AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.black,),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: <Widget>[
          new Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 20, 0),
            child: new FlatButton(
              child: new Text(
                "Sign up",
                style: new TextStyle(color: Colors.grey, fontSize: 17),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              highlightColor: Colors.red,
              shape: StadiumBorder(),
            ),
          ),
        ],
      ),
      body: new SingleChildScrollView(
        child: new Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Text(
                "Log in",
                style: new TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
              ),
              new SizedBox(
                height: 70,
              ),
              new TextField(
                keyboardType: TextInputType.emailAddress,
                autocorrect: false,
                decoration: new InputDecoration(
                  // hintText: "Email",
                  labelText: "Email",
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
                  child: new Text("Log in",
                      style: new TextStyle(color: Colors.white)),
                  color: Colors.red,
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
              new Container(
                padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                child: new Text(
                  "Or sign in with social account",
                  textAlign: TextAlign.center,
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new OutlineButton(
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Icon(
                          FontAwesomeIcons.google,
                          size: 20,
                          color: Colors.red,
                        ),
                        new SizedBox(
                          width: 5,
                        ),
                        new Text("Google",
                            style: new TextStyle(color: Colors.red)),
                      ],
                    ),
                    shape: StadiumBorder(),
                    highlightedBorderColor: Colors.red,
                    borderSide: BorderSide(color: Colors.red),
                    onPressed: () {},
                  ),
                  new SizedBox(
                    width: 20,
                  ),
                  new OutlineButton(
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Icon(
                          FontAwesomeIcons.facebookF,
                          size: 20,
                          color: Colors.blueAccent,
                        ),
                        new SizedBox(
                          width: 5,
                        ),
                        new Text("Facebook",
                            style: new TextStyle(color: Colors.blueAccent)),
                      ],
                    ),
                    shape: StadiumBorder(),
                    highlightedBorderColor: Colors.blueAccent,
                    borderSide: BorderSide(color: Colors.blueAccent),
                    onPressed: () {},
                  ),
                ],
              ),
              new SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
