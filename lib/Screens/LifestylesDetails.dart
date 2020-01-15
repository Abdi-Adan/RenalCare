import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String heroTag;
  final String foodName;
  final String foodPrice;
  final List<dynamic> infoCard;
  final String des;

  DetailsPage(
      {this.heroTag, this.foodName, this.foodPrice, this.infoCard, this.des});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  var selectedCard = 'Sodium';
  Color color = Colors.cyan;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff680011),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text('Details',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 25.0,
                  color: Colors.white)),
          centerTitle: true,
        ),
        body: Stack(children: [
          Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.transparent),
          Positioned(
              top: 75.0,
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(45.0),
                        topRight: Radius.circular(45.0),
                      ),
                      color: Colors.white),
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width)),
          Positioned(
              top: 30.0,
              left: (MediaQuery.of(context).size.width / 2) - 100.0,
              child: Hero(
                  tag: widget.heroTag,
                  child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(widget.heroTag),
                              fit: BoxFit.cover)),
                      height: 200.0,
                      width: 200.0))),
          Positioned(
            top: 220.0,
            left: 0.0,
            right: 0.0,
            child: Container(
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
                            Text(widget.foodName,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(height: 20.0),
                            Text(widget.des),
                            SizedBox(height: 20.0),
                            Container(
                                height: 150.0,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    _buildInfoCard(widget.infoCard[0],
                                        widget.infoCard[1], widget.infoCard[2]),
                                    SizedBox(width: 10.0),
                                    _buildInfoCard(widget.infoCard[3],
                                        widget.infoCard[4], widget.infoCard[5]),
                                    SizedBox(width: 10.0),
                                    _buildInfoCard(widget.infoCard[6],
                                        widget.infoCard[7], widget.infoCard[8]),
                                  ],
                                )),
                            SizedBox(height: 20.0),
                            SizedBox(
                              height: 50,
                            )
                          ]))),
                ],
              ),
            ),
          )
        ]));
  }

  Widget _buildInfoCard(String cardTitle, String info, String unit) {
    return InkWell(
        onTap: () {
          selectCard(cardTitle);
        },
        child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeIn,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: cardTitle == selectedCard ? Color(0xff9595) : Colors.white,
              border: Border.all(
                  color: cardTitle == selectedCard
                      ? Colors.transparent
                      : Colors.grey.withOpacity(0.3),
                  style: BorderStyle.solid,
                  width: 0.75),
            ),
            height: 100.0,
            width: 100.0,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 15.0),
                    child: Text(cardTitle,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12.0,
                          color: cardTitle == selectedCard
                              ? Colors.white
                              : Colors.grey.withOpacity(0.7),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, bottom: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(info,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 14.0,
                                color: cardTitle == selectedCard
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold)),
                        Text(unit,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12.0,
                              color: cardTitle == selectedCard
                                  ? Colors.white
                                  : Colors.black,
                            ))
                      ],
                    ),
                  )
                ])));
  }

  selectCard(cardTitle) {
    setState(() {
      selectedCard = cardTitle;
    });
  }
}
