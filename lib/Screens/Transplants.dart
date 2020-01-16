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
                      "If you are on dialysis and have no other health conditions that would increase the risk of surgery, you can receive a transplant. Our team will perform a thorough evaluation to ensure you are a candidate.If your kidney functions at less than 20% and you are not on dialysis, you also can be a candidate for transplant. There generally is no age limit nor weight restrictions for transplant; we can discuss your options.",
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
                      "The kidney can be donated from a deceased person who registered as an organ donor. You also can also receive a kidney from a healthy family member (living related donor) or friend (living unrelated donor). This procedure is referred to as living donor transplantation. Your donor will not compromise their health with one kidney. After donating a kidney, the donor's remaining healthy kidney will grow until it is able to do the work of two kidneys. ",
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
      ),
    );
  }
}
