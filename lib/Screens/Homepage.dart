import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextStyle tStyle =
      TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20);
  final TextStyle sStyle = TextStyle(
      color: Colors.black.withOpacity(0.9), fontWeight: FontWeight.normal, fontSize: 16);

  Color color = Colors.cyan;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
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
                          child: ListView(
                            children: [
                              Card(
                                elevation: 5,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                "Those who suffer from Chronic\nKidney Disease (CKD) often\ncomplain of the increased urge\nto urinate or decreased amount\nof urine ",
                                Icon(
                                  Icons.accessible_forward,
                                  color: color,
                                  size: 35,
                                ),
                              ),
                              _listWidgetTile(
                                "Edema",
                                "Swelling of extremities, majorly\nlegs due to water retention. It\ncan also manifest in eyes\npuffiness and swollen legs",
                                Icon(
                                  Icons.accessibility,
                                  color: color,
                                  size: 30,
                                ),
                              ),
                              _listWidgetTile(
                                "Urine Changes",
                                'Noticable changes in urine color...',
                                Icon(
                                  Icons.gesture,
                                  color: color,
                                  size: 30,
                                ),
                              ),
                              _listWidgetTile(
                                "Extreme Fatigue",
                                'Tiredness...',
                                Icon(
                                  Icons.directions_walk,
                                  color: color,
                                  size: 30,
                                ),
                              ),
                              _listWidgetTile(
                                "Predisposing Factors",
                                'Agents that may lead to...',
                                Icon(
                                  Icons.format_align_right,
                                  color: color,
                                  size: 30,
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  "Kidney Stones",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              kidneyThumb("assets/picture.png"),
                              kidneyTile("Kidney Stones",
                                  "Kidney stones (renal lithiasis, nephrolithiasis) are hard deposits made of minerals and salts that form inside your kidneys. Kidney stones have many causes and can affect any part of your urinary tract — from your kidneys to your bladder. Often, stones form when the urine becomes concentrated, allowing minerals to crystallize and stick together. Passing kidney stones can be quite painful, but the stones usually cause no permanent damage if they're recognized in a timely fashion. Depending on your situation, you may need nothing more than to take pain medication and drink lots of water to pass a kidney stone. In other instances — for example, if stones become lodged in the urinary tract, are associated with a urinary infection or cause complications — surgery may be needed. Your doctor may recommend preventive treatment to reduce your risk of recurrent kidney stones if you're at increased risk of developing them again"),
                              kidneyTile("Signs and Symptoms",
                                  "Sharp pains in your back, side, lower abdomen, or groin\npink, red, or brown blood in your urine, also called hematuria\na constant need to urinate\npain while urinating\ninability to urinate or can only urinate a small amount\ncloudy or bad-smelling urine"),
                              kidneyTile("Types of Kidney Stones",
                                  "Kidney stones often have no definite, single cause, although several factors may increase your risk. Kidney stones form when your urine contains more crystal-forming substances — such as calcium, oxalate and uric acid — than the fluid in your urine can dilute. At the same time, your urine may lack substances that prevent crystals from sticking together, creating an ideal environment for kidney stones to form."),
                              ListTile(
                                title: Text(
                                  "Risk Factors: ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              kidneyTile("Family or personal history",
                                  "If someone in your family has kidney stones, you're more likely to develop stones, too. And if you've already had one or more kidney stones, you're at increased risk of developing another."),
                              kidneyTile("Dehydration.",
                                  "Not drinking enough water each day can increase your risk of kidney stones. People who live in warm climates and those who sweat a lot may be at higher risk than others."),
                              kidneyTile("Certain diets",
                                  "Eating a diet that's high in protein, sodium (salt) and sugar may increase your risk of some types of kidney stones. This is especially true with a high-sodium diet. Too much salt in your diet increases the amount of calcium your kidneys must filter and significantly increases your risk of kidney stones."),
                              kidneyTile("Being obese.",
                                  "High body mass index (BMI), large waist size and weight gain have been linked to an increased risk of kidney stones."),
                              kidneyTile("Digestive diseases and surgery",
                                  "Gastric bypass surgery, inflammatory bowel disease or chronic diarrhea can cause changes in the digestive process that affect your absorption of calcium and water, increasing the levels of stone-forming substances in your urine."),
                              kidneyTile("Other medical conditions.",
                                  "Diseases and conditions that may increase your risk of kidney stones include renal tubular acidosis, cystinuria, hyperparathyroidism, certain medications and some urinary tract infections."),
                              ListTile(
                                title: Text(
                                  "Prevention ",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              kidneyTile("Drink plenty of water:",
                                  "Drinking extra water dilutes the substances in urine that lead to stones "),
                              kidneyTile("Reduce sodium",
                                  "A high-sodium diet can trigger kidney stones because it increases the amount of calcium in your urine."),
                              kidneyTile("Limit animal protein",
                                  "Eating too much animal protein, such as red meat, poultry, eggs, and seafood, boosts the level of uric acid and could lead to kidney stones. A high-protein diet also reduces levels of citrate, the chemical in urine that helps prevent stones from forming."),
                              kidneyTile("Eat more calcium-rich foods",
                                  "The most common type of kidney stone is the calcium oxalate stone, leading many people to believe they should avoid eating calcium. The opposite is true. Low-calcium diets may increase your kidney stone risk and your risk of osteoporosis.")
                            ],
                          ),
                        ))
                  ])),
        ],
      ),
    );
  }

  Widget _listWidgetTile(
    String title,
    String sub,
    trailingIcon,
  ) {
    return Card(
      elevation: 5.0,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
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
    );
  }

  Widget kidneyThumb(String imagePathURL) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: 250,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(imagePathURL),
        ),
        color: Colors.red,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
      ),
    );
  }

  Widget kidneyTile(String heading, String content) {
    return Card(
      elevation: 5.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              heading,
              style: tStyle,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              content,
              style: sStyle,
            ),
          )
        ],
      ),
    );
  }
}
