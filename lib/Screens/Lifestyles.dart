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
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: true,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: Container(
                        height: MediaQuery.of(context).size.height - 200.0,
                        child: ListView(children: [
                          _buildFoodItem(
                              'assets/foods/blueberries.jpg',
                              'Blue Berries',
                              'are packed with...',
                              [
                                'Sodium',
                                '148G(Unit',
                                '1.5mg(Amount)',
                                'Potassium',
                                '148G(Unit)',
                                '114(Amount)',
                                'Phosphorus',
                                '148G(Unit)',
                                '18mg(Amount)'
                              ],
                              "blue berries are packed with nutrients and one of the best sources of anti oxidants called anthocyanins, which may protect also protect against heart disease, certain cancers, cognitive decline and diabetes. They also make a fantastic addition to a kidney - friendly diet, as they are low in sodium, phosphorus and pottasium."),
                          _buildFoodItem(
                              'assets/foods/redgrapes.jpeg',
                              'Red Grapes',
                              'they deliver a ton...',
                              [
                                'Sodium',
                                '148G(Unit)',
                                '1.5mg(Amount)',
                                'Potassium',
                                '148G(Unit)',
                                '114(Amount)',
                                'Phosphorus',
                                '148G(Unit)',
                                '18mg(Amount)'
                              ],
                              "Not only are red grapes delicious, they also deliver a ton of nutrition in a small package. Red grapes are high in vitamin c and contains antioxidants called flavanoids, which have been shlwn to reduce inflammation. They are also high in resveratol, a type of flavanoid that has been shown to benefit heart health and protect against diabetes and cognitive decline. "),
                          _buildFoodItem(
                              'assets/foods/eggwhite.jpg',
                              'Egg Whites',
                              'provide a high quality...',
                              [
                                'Sodium',
                                '66G(Unit)',
                                '110mg(Amount)',
                                'Potassium',
                                '66G(Unit)',
                                '108(Amount)',
                                'Phosphorus',
                                '66G(Unit)',
                                '10mg(Amount)'
                              ],
                              "Egg whites provide a high quality, kidney friendly source of protein, not to mention they are an excellent choice for people undergoing dialysis treatment, as they have higher protein needs but to limit phosphorus. "),
                          _buildFoodItem(
                              'assets/foods/garlic.jpg',
                              'Garlic',
                              'a good source of...',
                              [
                                'Sodium',
                                '9G(Unit)',
                                '1.5mg(Amount)',
                                'Potassium',
                                '9G(Unit)',
                                '36mg(Amount)',
                                'Phosphorus',
                                '9G(Unit)',
                                '14mg(Amount)'
                              ],
                              "It is agood source of manganese, vitamin C and vitamin B6 and contains sulfur compounds that have  anti- inflammatory properties."),
                          _buildFoodItem(
                              'assets/foods/oliveoil.jpg',
                              'Olive Oil',
                              ' healthy source of fat...',
                              [
                                'Sodium',
                                '28G(Unit)',
                                '0.6mg(Amount)',
                                'Potassium',
                                '28G(Unit)',
                                '0.3mg(Amount)',
                                'Phosphorus',
                                '28G(Unit)',
                                '0mg(Amount)'
                              ],
                              "Olive oil is a healthy source of fat and phosphorus -,free, making it a great option for people with kidney disease. The majority of fat in oil is a monounsaturated fat called oleic acid, which has anti-inflammatory properties. Whats more , a monounsaturated fats are stable at high temperatures, making olive oil a healthy choice for cooking. "),
                          _buildFoodItem(
                              'assets/foods/cabbage.jpg',
                              'Cabbage',
                              'belongs to the...',
                              [
                                'Sodium',
                                '70G(Unit)',
                                '13mg(Amount)',
                                'Potassium',
                                "70G(Unit)",
                                "113mg(Amount)",
                                'Phosphorus',
                                "70G(Unit)",
                                "18mg(Amount)"
                              ],
                              "Cabbage belongs to the cruciferous vegetable family and is loaded with vitamins, minerals and powerful plant compounds. Its a great source of vitamin k, vitamin c and many B vitamins. Furthermore, it provides  insoluble fiber, a type of fibre that keeps  the digestive system healthy by promoting regular bowel movements and adding bulk stool."),
                          _buildFoodItem(
                              'assets/foods/skinless.jpeg',
                              'Skinless Chicken',
                              'skinless chicken...',
                              [
                                "Sodium",
                                "84G(Unit)",
                                "63mg(Amount)",
                                'Potassium',
                                "84G(Unit)",
                                "216mg(Amount)",
                                'Phosphorus',
                                "84G(Unit)",
                                "192mg(Amount)"
                              ],
                              "skinless chicken breast contains less phosphorus, potassium and sofium than skin on chicken ."),
                          _buildFoodItem(
                              'assets/foods/onions.jpg',
                              'Onions',
                              'excellent for providing..',
                              [
                                'Sodium',
                                "10G(Unit)",
                                "3mg(Amount)",
                                'Potassium',
                                "10G(Unit)",
                                "102mg(Amount)",
                                'Phosphorus',
                                "10G(Unit)",
                                "20mg(Amount)"
                              ],
                              "Onions are excellent for providing sodium free flavor to renal diet dishes. Whats more, onions are high in vitamin c, manganese and B vitamins  and contain prebiotoc fibers that help keep your digestive  system healthy by feeling beneficial gut bacteria. "),
                          _buildFoodItem(
                              'assets/foods/macademianuts.jpg',
                              'Macademia Nuts',
                              'They are delicious and...',
                              [
                                'Sodium',
                                "28G(Unit)",
                                "1.4mg(Amount)",
                                'Potassium',
                                "28G(Unit)",
                                "103mg(Amount)",
                                'Phosphorus',
                                "28G(Unit)",
                                "53mg(Amount)"
                              ],
                              "Most nuts are high  in phosphorus  , unlike macadamia.They are delicious and are packed with healthy fats , B vitamins, magnesium, copper, iron and manganese. "),
                          _buildFoodItem(
                              'assets/foods/pineapples.jpg',
                              'Pineapple',
                              'pineapple makes...',
                              [
                                'Sodium',
                                "165G(Unit)",
                                "2mg(Amount)",
                                'Potassium',
                                "165G(Unit)",
                                "180mg(Amount)",
                                'Phosphorus',
                                "165G(Unit)",
                                "13mg(Amount)"
                              ],
                              "Many tropical fruits like oranges, bananas and kiwis are very high in potassium. Luckily, pineapple makes  a sweet,low potassium alternative for those with kidney problems. Pineapple is rich in fibre, B vitamins, manganese and bromelain, an enzyme that helps reduce inflammation. ")
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
                        infoCard: infoCard,
                        des: des,
                      )));
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
