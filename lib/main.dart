import 'package:flutter/material.dart';
import 'package:renalcare/root.dart';
import 'package:flutter/services.dart';

import 'SplashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.red));
    return MaterialApp(
      title: 'Renal Care',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SplashPage(),
      routes: <String, WidgetBuilder>{
        '/root': (BuildContext context) => new MyControlScreen(),
      },
    );
  }
}
