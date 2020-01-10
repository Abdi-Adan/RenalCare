import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

class Community extends StatefulWidget {
  @override
  _CommunityState createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _thumbStack("assets/foods/blueberries.jpg", "Transplants",
                "As a child, I always...", 'https://www.youtube.com/watch?v=aCEDwQ1Y4Mw'),
            _thumbStack("assets/foods/transplantbanner.jpg", "Transplants",
                "As a child, I always...", 'https://www.youtube.com/watch?v=aCEDwQ1Y4Mw'),
            _thumbStack("assets/foods/transplantbanner.jpg", "Transplants",
                "As a child, I always...", 'https://www.youtube.com/watch?v=aCEDwQ1Y4Mw'),
            _thumbStack("assets/foods/transplantbanner.jpg", "Transplants",
                "As a child, I always...", 'https://www.youtube.com/watch?v=aCEDwQ1Y4Mw'),
          ],
        ),
      ),
    );
  }

  Widget _thumbStack(
    String url,
    String imgString,
    String videoName,
    String subDes,
  ) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {
        _launchURL(url);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(imgString),
                ),
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 8),
              child: Card(
                elevation: 10,
                child: ListTile(
                  title: Text(videoName),
                  subtitle: Text(subDes),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future _launchURL(String url) async {
    String url;
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: true, forceWebView: true);
    }else{
      throw 'Could not launch $url';
    }
  }
}
