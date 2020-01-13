import 'package:flutter/material.dart';

class Stories extends StatefulWidget {
  final String title;
  final String storyDetails;

  const Stories({this.title, this.storyDetails});
  @override
  _StoriesState createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
    );
  }
}