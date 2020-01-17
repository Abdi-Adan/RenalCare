import 'package:flutter/material.dart';

class Transplants extends StatefulWidget {
  @override
  _TransplantsState createState() => _TransplantsState();
}

class _TransplantsState extends State<Transplants> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: "Pre-Transplants,",
              ),
              Tab(
                text: "Post-Transplants",
              )
            ],
          ),
          elevation: 0,
          title: Text(
            "Chronic Kidney Disease, (CKD).",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.cyan,
        ),
        body: TabBarView(
          children: <Widget>[
            PreTransplants(),
            PostTransplants(),
          ],
        ),
      ),
    );
  }
}

class PreTransplants extends StatefulWidget {
  @override
  _PreTransplantsState createState() => _PreTransplantsState();
}

class _PreTransplantsState extends State<PreTransplants> {
  String image = "assets/foods/transplantbanner.jpg";
  final TextStyle tStyle =
      TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20);
  final TextStyle sStyle = TextStyle(
      color: Colors.black, fontWeight: FontWeight.normal, fontSize: 16);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Kidney Transplant?",
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
                    "What is a Kidney Transplant?",
                    style: tStyle,
                  ),
                  Text(
                    "Kidney transplantation is a surgical procedure that places a healthy kidney from another person into your body. This new kidney takes over the work of your failed kidneys.The kidneys remove excess fluid and waste from your blood. When your kidneys lose their filtering ability, dangerous levels of fluid and waste accumulate in your body - what is known as kidney failure. Kidney transplant is often the best treatment for kidney failure.",
                    style: sStyle,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Why Do I Need a Kidney Transplant?",
                    style: tStyle,
                  ),
                  Text(
                    "Many people choose transplant because it is often the best treatment option for kidney failure. You can either get a transplant right away from a living donor, or you may be on the organ waitlist and receive dialysis in the meantime. The sooner you get the transplant, the better. Studies show that those who get a transplant live longer than those who stay on dialysis.",
                    style: sStyle,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Who Can Receive a Transplant?",
                    style: tStyle,
                  ),
                  Text(
                    "If you are on dialysis and have no other health conditions that would increase the risk of surgery, you can receive a transplant. Our team will perform a thorough evaluation to ensure you are a candidate.If your kidney functions at less than 20% and you are not on dialysis, you also can be a candidate for transplant. The recepients age for receiving a graft is limited to 65 years and below to an age group between 13 to 19 yeears age.Most reports comparing survival of kidney transplant recepients and patients on dialysis are based on registry data from multiple centres and have major limitations. The selection and work up procedures of transplant recepients vary between centres and the same goes for the choice of immunosuppressive protocals and follow up procedures.",
                    style: sStyle,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "How Do I Get a Kidney for Transplant?",
                    style: tStyle,
                  ),
                  Text(
                    "The kidney can be donated from a deceased person who registered as an organ donor. You also can also receive a kidney from a healthy family member (living related donor) or friend (living unrelated donor). This procedure is referred to as living donor transplantation. Your donor will not compromise their health with one kidney. After donating a kidney, the donor's remaining healthy kidney will be able to do the work of two kidneys. ",
                    style: sStyle,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Why Can't I Stay on Dialysis?",
                    style: tStyle,
                  ),
                  Text(
                    "The kidney can be donated from a deceased person who registered as an organ donor. You also can also receive a kidney from a healthy family member (living related donor) or friend (living unrelated donor). This procedure is referred to as living donor transplantation. Your donor will not compromise their health with one kidney. After donating a kidney, the donor's remaining healthy kidney will grow until it is able to do the work of two kidneys. ",
                    style: sStyle,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "When Can You Receive a Transplant?",
                    style: tStyle,
                  ),
                  Text(
                    "If you have a healthy living donor, we will immediately begin the evaluation process for you and your donor. This process normally takes one to three months, if you and your donor follow all the instructions promptly.If you don't have a donor but the medical evaluation shows that you are a good candidate for a transplant, you will be put on the national transplant waitlist to receive a kidney from a deceased donor. Having someone who can donate a kidney to you is a wonderful gift but not a reality for everyone. Most people are placed on the waitlist to wait for a kidney from a deceased donor",
                    style: sStyle,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PostTransplants extends StatefulWidget {
  @override
  _PostTransplantsState createState() => _PostTransplantsState();
}

class _PostTransplantsState extends State<PostTransplants> {
  final TextStyle tStyle =
      TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20);
  final TextStyle sStyle = TextStyle(
      color: Colors.black, fontWeight: FontWeight.normal, fontSize: 16);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: ListTile(
              title: Text(
                "What happens in the first 48hrs",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            title: Text(
              "The early period of post-transplant surgery requires frequent monitoring in order to maintain the fluid balance.",
              style: TextStyle(fontSize: 14),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          postTile("Oligo anuria",
              "The patient might experience cases of passing urine. When the patient experiences cases of oligo anuria, it is important to establish the causes of graft dysfunction."),
          postTile("Urine leak",
              "Although this is rare, urine passage into the peritoneal cavity can be observed. If this is suspected, an isotope scan can be performed."),
          postTile("Rejection",
              "This might happen due to donor-directed antibodies that were present prior to implantation."),
          postTile("Ileus.",
              "This is the inability of the intestine (bowel) to contract normally and move waste out of the body. This is usually common after the surgery."),
          ListTile(
            title: Text(
              "Two weeks to six months post-transplant",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            title: Text(
              "(Agents for supporting Post-Transplant patients)",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          postTile("Monitoring",
              "Rejection is rarely diagnosed the first 5 days post transplant. Follow up is therefore necessary  for the purpose of acute rejection, in any instances."),
          postTile("Family Support",
              "Dialysis does not only change the life of the patient, but also the families essential for the family members to learn effective support practices to help with both the emotional development and lifestyle improvement."),
          postTile("Patient Education.",
              "The patient should have knowledge on lifestyle habits; what and what not to eat, knowledge of drug and substance use and precautions."),
          postTile("Immunosuppressants",
              "There are instances where the medicine can lower the body's ability to reject a transplanted kidney. After the transplant, the body takes the new kidney as foreign as it adjusts to it, and in this it will attack the new kidney. The immunosuppressants therefore prevents the body from damaging the new organ, while minimizing the side effects."),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListTile(
              title: Text(
                "Agents used for maintenance of immunosuppression.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          postTile("Calcineurin Inhibitors",
              "These are medicine that inhibits the action of Calcineurin; Calcineurin is the enzyme that activates the T-Cells of the immune system."),
          postTile("Corticosteroids.",
              "These are drugs that lowers inflammation in the body by reducing the immune system activity. Because the corticosteroids ease swelling, itching and allergic reaction."),
          postTile("Antiproliferative drugs.",
              "These are drugs that reduce the strength of the body,s immune sysem  to reduce the unlikelihood of the body rejecting the transplanted kidney. "),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListTile(
              title: Text(
                "Costs of Renal Transplants.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          postTile("In Kenya,",
              "Total cost is approximately 1.5 Million inclusive of Compatibility testing (costs 200,000 alone) which is done in South Africa after the samples are taken from the patient. Less 500,000 which is covered by NHIF; Totaling to about 1 Million payable by the patient. The Compatibility testing facility is currently under Construction at KNH."),
        ],
      ),
    ]));
  }

  Widget postTile(String heading, String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Card(
        elevation: 5.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Container(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  heading,
                  style: tStyle,
                ),
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
            ),
          ],
        ),
      ),
    );
  }
}
