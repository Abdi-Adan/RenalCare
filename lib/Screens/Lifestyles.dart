import 'package:flutter/material.dart';

import 'LifestylesDetails.dart';

class LifeStyles extends StatefulWidget {
  @override
  _LifeStylesState createState() => _LifeStylesState();
}

class _LifeStylesState extends State<LifeStyles> {
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
                Text('Healthy',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
                SizedBox(width: 10.0),
                Text('Food',
                    style: TextStyle(color: Colors.white, fontSize: 25.0))
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
                          _buildFoodItem('assets/plate1.png', 'Blue Berries',
                              'are packed with nutrients and one of the best sources of anti-oxidants...'),
                          _buildFoodItem('assets/plate2.png', 'Red Grapes',
                              'they also deliver a ton of nutrition in a small package...'),
                          _buildFoodItem('assets/plate6.png', 'Egg Whites',
                              'provide a high quality, kidney friendly source of protein...'),
                          _buildFoodItem('assets/plate5.png', 'Garlic',
                              'a good source of manganese, vitamin C and vitamin B6...'),
                          _buildFoodItem('assets/plate5.png', 'Olive Oil',
                              ' healthy source of fat and phosphorus -,free...'),
                          _buildFoodItem('assets/plate5.png', 'Cabbage',
                              'belongs to the cruciferous vegetable family and is loaded with...'),
                          _buildFoodItem(
                              'assets/plate5.png',
                              'Skinless Chicken',
                              'skinless chicken breast contains less phosphorus, potassium and sofium than skin...'),
                          _buildFoodItem('assets/plate5.png', 'Onions',
                              'excellent for providing sodium free flavor to renal diet dishes..'),
                          _buildFoodItem('assets/plate5.png', 'Macademia Nuts',
                              'They are delicious and are packed with healthy fats , B vitamins...'),
                          _buildFoodItem('assets/plate5.png', 'Pineapple',
                              'pineapple makes  a sweet,low potassium alternative for those with kidney problems...')
                        ]))),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFoodItem(
    String imgPath,
    String foodName,
    String sub,
  ) {
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailsPage(
                      heroTag: imgPath, foodName: foodName, foodPrice: sub)));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(children: [
                  Hero(
                      tag: imgPath,
                      child: Image(
                          image: AssetImage(imgPath),
                          fit: BoxFit.cover,
                          height: 75.0,
                          width: 75.0)),
                  SizedBox(width: 10.0),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(foodName,
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold)),
                        Text(sub,
                            style:
                                TextStyle(fontSize: 15.0, color: Colors.grey))
                      ])
                ])),
                IconButton(
                    icon: Icon(Icons.launch),
                    color: Colors.red,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailsPage(
                              heroTag: imgPath,
                              foodName: foodName,
                              foodPrice: sub)));
                    })
              ],
            )));
  }
}
