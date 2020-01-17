import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextStyle tStyle =
      TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16);
  final TextStyle sStyle = TextStyle(
      color: Colors.black.withOpacity(0.9),
      fontWeight: FontWeight.normal,
      fontSize: 14);

  Color color = Colors.cyan;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        elevation: 0,
        centerTitle: false,
        title: Text(
          "Chronic Kidney Disease",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.info,
              color: Colors.white,
            ),
            onPressed: () {
              showGeneralDialog(
                  context: context,
                  barrierDismissible: true,
                  barrierLabel: MaterialLocalizations.of(context)
                      .modalBarrierDismissLabel,
                  barrierColor: Colors.black45,
                  transitionDuration: const Duration(milliseconds: 200),
                  pageBuilder: (BuildContext buildContext, Animation animation,
                      Animation secondaryAnimation) {
                    return Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width - 10,
                        height: MediaQuery.of(context).size.height - 80,
                        padding: EdgeInsets.all(20),
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "CONTACTS\n\nProf A.J.O Were\nConsultant, Physician, Nephrologist at Nairobi Hospital, KNH, Deputy Director,East African Kidney Institute.\nContact 0722711444 or 0729251451\nDr. Mwongera Frank Kamunde\nUpper Hill Medical Centre Nairobi Kidney Centre, 1st Floor +254 20 271 8182\nDr. Ahmed Twahir Majid Parklands Mediplaza, Third Parklands Ave Tel:020-3752727,3740397, 0733-220834",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 20),
                            RaisedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                "Back",
                                style: TextStyle(color: Colors.black),
                              ),
                              color: const Color(0xFF1BC0C5),
                            )
                          ],
                        ),
                      ),
                    );
                  });
            },
          ),
          SizedBox(
            width: 15,
          ),
        ],
        backgroundColor: Colors.cyan,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text('What is CKD?',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0)),
                SizedBox(width: 10.0),
              ],
            ),
          ),
          SizedBox(height: 40.0),
          Container(
              height: MediaQuery.of(context).size.height - 165.0,
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
                                          "Chronic Kidney Disease is a progressive loss in renal function over a period of time. The organ affected here are the Kidneys."),
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
                                "Those who suffer from Chronic\nKidney Disease (CKD) often\ncomplain of the increased urge\nto urinate or decreased amount\nof urine.\n ",
                                Icon(
                                  Icons.accessible_forward,
                                  color: color,
                                  size: 35,
                                ),
                              ),
                              _listWidgetTile(
                                "Edema",
                                "Swelling of extremities, majorly\nlegs due to water retention. It\ncan also manifest in eyes\npuffiness and swollen legs.\n",
                                Icon(
                                  Icons.accessibility,
                                  color: color,
                                  size: 30,
                                ),
                              ),
                              _listWidgetTile(
                                "Urine Changes",
                                'As the kidneys looses the\nability to work properly  there\nare noticable changes in\nurine colour, shade or smell.\n',
                                Icon(
                                  Icons.gesture,
                                  color: color,
                                  size: 30,
                                ),
                              ),
                              _listWidgetTile(
                                "Extreme Fatigue",
                                "The moment the  normal\nfunction of kidneys are\naltered and can't remove\nwaste from the body as\nneeded fatigue sets in.\n",
                                Icon(
                                  Icons.directions_walk,
                                  color: color,
                                  size: 30,
                                ),
                              ),
                              _predisposingDialog(
                                  "Predisposing factors:",
                                  "Diseases, conditions and agents  that may\nlead or leads to renal diseases include:\n ",
                                  "1. Blood clots in the veins and arteries in and around the kidneys.\n2. Cholesreral deposits that block blood flow in the kidneys.\n3. Glomerulonephritis (Inflammation of the tiny filters in the kidneys)\n4. Haemolytic Uremic Syndrome\n5. Some infections.\n6. Conditions such as diabetes, and high blood pressure are the major culprits in (CKD)\n7. Obesity has also been shown to be  a risk factor\n8. Lower levels of klotho protein in the blood stream of both animals and human beings was found to have a correlation."),
                              ListTile(
                                title: Text(
                                  "Kidney Stones",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              kidneyThumb("assets/picture.png"),
                              SizedBox(
                                height: 10,
                              ),
                              kidneyTile("Kidney Stones",
                                  "Kidney stones (renal lithiasis, nephrolithiasis) are hard deposits made of minerals and salts that form inside your kidneys. Kidney stones have many causes and can affect any part of your urinary tract, from your kidneys to your bladder. Often, stones form when the urine becomes concentrated, allowing minerals to crystallize and stick together. Passing kidney stones can be quite painful, but the stones usually cause no permanent damage if they're recognized in a timely fashion. Depending on your situation, you may need nothing more than to take pain medication and drink lots of water to pass a kidney stone. In other instances for example, if stones become lodged in the urinary tract, are associated with a urinary infection or cause complications surgery may be needed. Your doctor may recommend preventive treatment to reduce your risk of recurrent kidney stones if you're at increased risk of developing them again"),
                              kidneyTile("Signs and Symptoms",
                                  "-Sharp pains in your back-side, lower abdomen, or groin.\n-Pink, red, or brown blood in your urine, also called hematuria.\nA constant need to urinate.\n-Pain while urinating.\n-Inability to urinate or can only urinate a small amount.\n-Cloudy or bad-smelling urine"),
                              ListTile(
                                title: Text(
                                  "Types of Kidney Stones ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                              kidneyTile("Calcium stones",
                                  "Most kidney stones are calcium stones, usually in the form of calcium oxalate. Oxalate is a naturally occurring substance found in food and is also made daily by your liver. Some fruits and vegetables, as well as nuts and chocolate, have high oxalate content. Dietary factors, high doses of vitamin D, intestinal bypass surgery and several metabolic disorders can increase the concentration of calcium or oxalate in urine. Calcium stones may also occur in the form of calcium phosphate. This type of stone is more common in metabolic conditions, such as renal tubular acidosis. It may also be associated with certain migraine headaches or with taking certain seizure medications, such as topiramate (Topamax)."),
                              kidneyTile("Struvite stones",
                                  "Struvite stones form in response to an infection, such as a urinary tract infection. These stones can grow quickly and become quite large, sometimes with few symptoms or little warning."),
                              kidneyTile("Uric acid stones",
                                  "Uric acid stones can form in people who don't drink enough fluids or who lose too much fluid, those who eat a high-protein diet, and those who have gout. Certain genetic factors also may increase your risk of uric acid stones."),
                              kidneyTile("Cystine stones",
                                  "These stones form in people with a hereditary disorder that causes the kidneys to excrete too much of certain amino acids (cystinuria)."),
                              ListTile(
                                title: Text(
                                  "Risk Factors: ",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
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

  Widget _predisposingDialog(
    String title,
    String sub,
    String data,
  ) {
    return InkWell(
      onTap: () {
        showGeneralDialog(
            context: context,
            barrierDismissible: true,
            barrierLabel:
                MaterialLocalizations.of(context).modalBarrierDismissLabel,
            barrierColor: Colors.black45,
            transitionDuration: const Duration(milliseconds: 200),
            pageBuilder: (BuildContext buildContext, Animation animation,
                Animation secondaryAnimation) {
              return Center(
                child: Container(
                  width: MediaQuery.of(context).size.width - 10,
                  height: MediaQuery.of(context).size.height - 80,
                  padding: EdgeInsets.all(20),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        data,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      SizedBox(height: 30),
                      RaisedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Back",
                          style: TextStyle(color: Colors.black),
                        ),
                        color: const Color(0xFF1BC0C5),
                      )
                    ],
                  ),
                ),
              );
            });
      },
      child: Card(
        elevation: 5.0,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
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
            ],
          ),
        ),
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
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
    return Container(
      child: Card(
        elevation: 5.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
