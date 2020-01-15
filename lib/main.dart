import 'package:flutter/material.dart';
import 'package:renalcare/SignIn/Walkthrough.dart';
import 'package:renalcare/root.dart';
import 'package:flutter/services.dart';

import 'SplashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.cyan));
    return MaterialApp(
      title: 'Renal Care',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // dark cyan Color(0xff9595)
        primarySwatch: Colors.cyan,
        // light cyan
        accentColor: Color(0xfff8f8),
      ),
      home: SplashPage(),
      routes: <String, WidgetBuilder>{
        '/root': (BuildContext context) => new MyControlScreen(),
        '/walkthrough': (BuildContext context) => WalkthroughScreen(),
      },
    );
  }
}
