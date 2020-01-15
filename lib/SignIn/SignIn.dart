import 'package:flutter/material.dart';
import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';



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

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
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
                controller: nameController,
                keyboardType: TextInputType.text,
                autocorrect: false,
                decoration: new InputDecoration(
                  // hintText: "Email",
                  labelText: "Name",
                ),
              ),
              new SizedBox(
                height: 20,
              ),
              new TextField(
                controller: emailController,
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
                controller: passwordController,
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
              RaisedButton(
                child: new Text("Sign up",
                    style: new TextStyle(color: Colors.white)),
                color: Colors.cyan,
                elevation: 15.0,
                shape: StadiumBorder(),
                splashColor: Colors.blue,
                onPressed: () {
                  saveDetails();
                },
              ),
              SizedBox(
                height: 30,
              )
            ],
          ),
        ),
      ),
    );
  }

  void saveDetails() {
    String name = nameController.text;
    String email = emailController.text;
    String password = passwordController.text;
    saveDetailsPreferences(name, email, password).then((bool commited) {
      Navigator.of(context).pushReplacementNamed('/root');
    });
  }
}

Future<bool> saveDetailsPreferences(
    String name, String email, String password) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('name', name);
  prefs.setString('email', email);
  prefs.setString('password', password);
  return prefs.commit();
}

