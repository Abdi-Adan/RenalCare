import 'package:flutter/material.dart';

class Transplants extends StatefulWidget {
  @override
  _TransplantsState createState() => _TransplantsState();
}

class _TransplantsState extends State<Transplants> {
  final TextStyle tStyle =
      TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20);
  final TextStyle sStyle = TextStyle(
      color: Colors.black, fontWeight: FontWeight.normal, fontSize: 16);
  String image = "assets/foods/transplantbanner.jpg";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: <Widget>[
              Container(
                height: 300,
                width: double.infinity,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(16.0, 250.0, 16.0, 16.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5.0)),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Kidney Transplat?",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text("Dec 21, 2019 by Dr. Ken Ochieng'"),
                    Divider(),
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                        "Renal Disease is a progressive loss in renal function over a period of time. The organ affected here are the Kidneys. This condition is also knowna as Renal Chronic Disease (CKD). Renal Disease is a progressive loss in renal function over a period of time. The organ affected here are the Kidneys. This condition is also knowna as Renal Chronic Disease (CKD). Renal Disease is a progressive loss in renal function over a period of time. The organ affected here are the Kidneys. This condition is also knowna as Renal Chronic Disease (CKD). Renal Disease is a progressive loss in renal function over a period of time. The organ affected here are the Kidneys. This condition is also knowna as Renal Chronic Disease (CKD).")
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
