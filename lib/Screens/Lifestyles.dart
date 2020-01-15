import 'package:flutter/material.dart';

import 'LifestylesDetails.dart';

class LifeStyles extends StatefulWidget {
  @override
  _LifeStylesState createState() => _LifeStylesState();
}

class _LifeStylesState extends State<LifeStyles> {
  Color color = Colors.cyan;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
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
                Text('Nutrition',
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
                          _buildFoodItem(
                              'assets/foods/blueberries.jpg',
                              'Blue Berries',
                              'are packed with...',
                              [
                                'Sodium',
                                '100G',
                                'B12',
                                'Potassium',
                                '100G',
                                'B12',
                                'Calcium',
                                '100G',
                                'B12'
                              ],
                              'Description testing'),
                          _buildFoodItem(
                              'assets/plate1.png',
                              'Red Grapes',
                              'they deliver a ton...',
                              [
                                'Sodium',
                                '100G',
                                'B12',
                                'Potassium',
                                '100G',
                                'B12',
                                'Calcium',
                                '100G',
                                'B12'
                              ],
                              'Description testing'),
                          _buildFoodItem(
                              'assets/foods/eggwhite.jpg',
                              'Egg Whites',
                              'provide a high quality...',
                              [
                                'Sodium',
                                '100G',
                                'B12',
                                'Potassium',
                                '100G',
                                'B12',
                                'Calcium',
                                '100G',
                                'B12'
                              ],
                              'Description testing'),
                          _buildFoodItem(
                              'assets/foods/garlic.jpg',
                              'Garlic',
                              'a good source of...',
                              [
                                'Sodium',
                                '100G',
                                'B12',
                                'Potassium',
                                '100G',
                                'B12',
                                'Calcium',
                                '100G',
                                'B12'
                              ],
                              'Description testing'),
                          _buildFoodItem(
                              'assets/foods/oliveoil.jpg',
                              'Olive Oil',
                              ' healthy source of fat...',
                              [
                                'Sodium',
                                '100G',
                                'B12',
                                'Potassium',
                                '100G',
                                'B12',
                                'Calcium',
                                '100G',
                                'B12'
                              ],
                              'Description testing'),
                          _buildFoodItem(
                              'assets/foods/cabbage.jpg',
                              'Cabbage',
                              'belongs to the...',
                              [
                                'Sodium',
                                '100G',
                                'B12',
                                'Potassium',
                                '100G',
                                'B12',
                                'Calcium',
                                '100G',
                                'B12'
                              ],
                              'Description testing'),
                          _buildFoodItem(
                              'assets/plate6.png',
                              'Skinless Chicken',
                              'skinless chicken...',
                              [
                                'Sodium',
                                '100G',
                                'B12',
                                'Potassium',
                                '100G',
                                'B12',
                                'Calcium',
                                '100G',
                                'B12'
                              ],
                              'Description testing'),
                          _buildFoodItem(
                              'assets/foods/onions.jpg',
                              'Onions',
                              'excellent for providing..',
                              [
                                'Sodium',
                                '100G',
                                'B12',
                                'Potassium',
                                '100G',
                                'B12',
                                'Calcium',
                                '100G',
                                'B12'
                              ],
                              'Description testing'),
                          _buildFoodItem(
                              'assets/foods/macademianuts.jpg',
                              'Macademia Nuts',
                              'They are delicious and...',
                              [
                                'Sodium',
                                '100G',
                                'B12',
                                'Potassium',
                                '100G',
                                'B12',
                                'Calcium',
                                '100G',
                                'B12'
                              ],
                              'Description testing'),
                          _buildFoodItem(
                              'assets/foods/pineapples.jpg',
                              'Pineapple',
                              'pineapple makes...',
                              [
                                'Sodium',
                                '100G',
                                'B12',
                                'Potassium',
                                '100G',
                                'B12',
                                'Calcium',
                                '100G',
                                'B12'
                              ],
                              'Description testing')
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
    List<dynamic> infoCard,
    String des,
  ) {
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailsPage(
                      heroTag: imgPath,
                      foodName: foodName,
                      foodPrice: sub,
                      infoCard: infoCard)));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(children: [
                  Hero(
                    tag: imgPath,
                    child: Container(
                      height: 75.0,
                      width: 75.0,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        ),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(imgPath),
                        ),
                        color: Colors.red,
                      ),
                    ),
                  ),
                  // Hero(
                  //     tag: imgPath,
                  //     child: CircleAvatar(
                  //       radius: 40,
                  //       child: Image(
                  //           image: AssetImage(imgPath),
                  //           fit: BoxFit.fill,
                  //           height: 75.0,
                  //           width: 75.0),
                  //     )),
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
                    color: color,
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
