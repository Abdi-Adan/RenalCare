import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: ListView(
        children: <Widget>[
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text('What is Renal Disease?',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
                SizedBox(width: 10.0),
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: Container(
                        height: MediaQuery.of(context).size.height - 300.0,
                        child: ListView(children: [
                          Card(
                            elevation: 5,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                      "Renal Disease is a progressive loss in renal function over a period of time. The organ affected here are the Kidneys. This condition is also knowna as Renal Chronic Disease (CKD)."),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ListTile(
                            title: Text(
                              "Symptomps Include: ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          _listWidgetTile(
                        "Urination Problems",
                        'Increased Urge to Urinate...',
                        Icon(
                          Icons.accessible_forward,
                          color: Colors.red,
                          size: 35,
                        ),
                        "Renal Disease is a progressive loss in renal function over a period of time. The organ affected here are the Kidneys. This condition is also knowna as Renal Chronic Disease (CKD)."),
                    _listWidgetTile(
                        "Edema",
                        'Swelling of extremities...',
                        Icon(
                          Icons.accessibility,
                          color: Colors.red,
                          size: 30,
                        ),
                        "Renal Disease is a progressive loss in renal function over a period of time. The organ affected here are the Kidneys. This condition is also knowna as Renal Chronic Disease (CKD)."),
                    _listWidgetTile(
                        "Urine Changes",
                        'Noticable changes in urine color...',
                        Icon(
                          Icons.gesture,
                          color: Colors.red,
                          size: 30,
                        ),
                        "Renal Disease is a progressive loss in renal function over a period of time. The organ affected here are the Kidneys. This condition is also knowna as Renal Chronic Disease (CKD)."),
                    _listWidgetTile(
                        "Extreme Fatigue",
                        'Tiredness...',
                        Icon(
                          Icons.directions_walk,
                          color: Colors.red,
                          size: 30,
                        ),
                        "Renal Disease is a progressive loss in renal function over a period of time. The organ affected here are the Kidneys. This condition is also knowna as Renal Chronic Disease (CKD)."),
                    _listWidgetTile(
                        "Predisposing Factors",
                        'Agents that may lead to...',
                        Icon(
                          Icons.format_align_right,
                          color: Colors.red,
                          size: 30,
                        ),
                        "Renal Disease is a progressive loss in renal function over a period of time. The organ affected here are the Kidneys. This condition is also knowna as Renal Chronic Disease (CKD)."),
                  ],),))
                        ])),
              ],
            ),
          );
  }

  Widget _listWidgetTile(
    String title,
    String sub,
    trailingIcon,
    String popUpDetails,
  ) {
    return InkWell(
      splashColor: Colors.redAccent,
      onTap: () {
        showDialog<String>(
            context: context,
            builder: (BuildContext context) => SimpleDialog(
                    title: Text(
                      title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        child: Text(
                          popUpDetails,
                          style: TextStyle(color: Colors.black),
                        ),
                      )
                    ]));
      },
      child: Card(
        elevation: 5.0,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    sub,
                  ),
                ],
              ),
              IconButton(
                icon: trailingIcon,
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
