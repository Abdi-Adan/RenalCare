import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

import 'Stories.dart';

class Community extends StatefulWidget {
  @override
  _CommunityState createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _thumbStack(
              'https://youtube.com/watch?v=xVtvYIx_tts',
              "assets/patient_from_nairobi.jpg",
              "Patient from Nairobi",
              "Living Donor Kidney Transplant Patient Story...",
            ),
            _thumbStack(
              'https://www.youtube.com/watch?v=F_cXfbPdYoo',
              "assets/father_son.jpg",
              "Father and Son Kidney Transplant",
              "Success story..",
            ),
            _thumbStack(
              'https://www.youtube.com/watch?v=UmGeQUupMFk',
              "assets/success_story.jpg",
              "A second chance at life",
              "Miraculous recovery!...",
            ),
            ListTile(
              title: Text(
                "Testimonials",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            _buildStoryItem(
                "Peter's Story",
                "These were the first words that came to my mind. Many questions ran through my mind and the many answers I required were out of reach at that particular time. In any case, I was distraught enough not to understand any of them. Your kidneys filter all the toxins that are in your blood and send them to your bladder, which subsequently remove the toxins through urine. Important organ, right? With very vital function in your body, that is why when your kidneys are failing and this is left untreated, it could be life-threatening. My decision to seek medical attention and fight this condition led me to Kenyatta National Hospital, which is a centre of excellence for kidney transplants. The nephrologists and nephrology nurses in the hospital play a very critical role in aiding kidney patients and their families cope with the condition; they are Godsent. My doctors, John Ngigi of Kenyatta National Hospital and Ahmed Twahir of Parklands Kidney Centre, were most helpful in getting me to understand what I was going through and what it would take to rise above my condition. Among the options, including a weekly dialysis, the two doctors advised strongly to undergo a kidney transplant. A kidney transplant is one of the two renal replacement therapies available when one’s kidneys fail. It involves placement of another kidney, from your donor, in the patient’s body, the recipient. A kidney transplant improves the patient’s quality of life. To me, a transplant was a new lease of life, a huge relief from the possibility of death and freedom from being tethered to a dialysis machine twice or thrice a week not, to mention a restricted diet. Because my condition was discovered early, I still had some kidney function and this allowed me to prepare both financially and emotionally, a luxury that most of my friends and colleagues at Renal Patients Society, which I head, did not have when they were first diagnosed. From this, I learnt the importance of routine checkups, which I now advocate as a way of keeping in touch with your health. My next task was to look for a kidney donor. My sister Grace, who I will forever be indebted to, donated one of her kidneys as she was a perfect match. With the kidney available for transplant, I now embarked on searching for a good hospital to have the kidney transplant surgery, and this took me all the way to India. Eventually, I settled on Kenyatta National Hospital for many reasons, but mainly because I would undergo the surgery at the comfort of my home country and under the care of very qualified doctors. With the guidance of the KNH Transplant Coordinator, Nancy Wangombe, I went through the pre- transplant preparations and screening and I was ready for my transplant surgery. I thought that was all, that I would have the transplant and life would go on. What I did not know is that the transplant surgery is just one event, whereas living with a foreign kidney was a lifetime affair. Of the things required after a transplant is taking medication religiously without fail, quite a daunting task at the start. There is also regular clinics and lab tests that one must undergo to monitor the performance of the new kidney. All symptoms of illnesses are also monitored closely. Over-the-counter medications and supplements are out of the picture, not unless recommended by the transplant team of doctors. No miti shamba and other fad diets for me. With the ever-present risk of infections, a high level of hygiene must be observed after a transplant. This involves regular washing of hands and being mindful of what and where I eat. Raw foods are discouraged, so I have learnt to give salads and kachumbari a wide berth, except if I have prepared them or I trust the source. Other sources of infections can be crowded places; for instance, funerals and churches, not forgetting bus stops. The first six months after my transplant surgery, I had to completely keep off these places because the new kidney was still very much susceptible to all the risks that affected the native kidneys. The medication taken after kidney transplant lowers the general immunity of the body, leaving one prone to diseases, for instance, skin cancer, due to exposure to the sun’s UV rays, and to avoid this, a sunscreen lotion is crucial. Of all the benefits of a kidney transplant, flexibility of diet is the most immediate. This is something dialysis patients do not have the luxury of enjoying. This luxury must, however, be enjoyed with moderation, as one of the side-effects of some post-transplant drugs is weight gain. Regular clinics and lab tests are also important. My lab tests at Lancet Pathologists free me from the long queues or return trips to collect my result by sending them via email. The regular clinics at KNH and Parklands Kidney Centre are my moments to catch up with my dependable caregivers. There is nothing more fulfilling than being in the care of people wholly invest in their patients’ well-being. The cost of post-kidney transplant drugs is challenging to myself and other transplant patients; they are not cheap. In my case, the starter dose amounted to Sh60,000 per month. This cost usually drops with time but remains way too expensive for a lot of patients, most especially given that the National Hospital Insurance Fund does not cater for these costs. NHIF pays for two sessions of dialysis per week and covers transplant costs for up to Sh500,000, but does not cover for the cost of drugs for transplanted patients. This may be a great hindrance for patients to seek transplant services and opt to remain on dialysis. Information around kidney disease, the symptoms, causes and how one can protect themselves is needed. My search for more details about the disease was discouraging. Even though doctors are helpful, our sessions with them are limited by time and money. Eventually I found comfort from other patients and we collectively formed the Renal Patients Society in 2018. The society is made up of over 200 members, comprising transplant recipients, their donors and dialysis patients. It helps us share our experiences with newly diagnosed patients and those at risk of developing kidney disease, especially diabetes and hypertension patients. A kidney transplant remains the best medical solution for any form of kidney condition. It may bring a new set of challenges, but these become insignificant when compared to the alternatives. As this area of health continues to grow in the country, more robust laws, allowing and regulating deceased transplants and non-related living transplants, are necessary. This will allow more transplants to be conducted in the country, and it will provide room for research to advance kidney transplant in Kenya.",
                " Why me? Why now? These were the first words that came to my mind."),
            _buildStoryItem(
                "Agnes' Stroy",
                "After getting kidney disease, I was on dialysis for almost 8 years before getting my transplant.  During that time, I learnt to do tasks by myself such as setting up the dialysis machine and needling myself. I asked the clinician if I could be a peer supporter at that time, but I was still very unwell so it was not until after I got my transplant that the hospital called me letting me know there was an opportunity available to take part. I have been doing it since I got my transplant so nearly two years now.  I have even gone to conferences and given presentations! My main reason for being a peer supporter was really just to help other patients. When you are sick and you go for dialysis, you don’t talk. You want to say things but you don’t as there is no-one to talk to about how you feel and whether it is going to be ok.  After experiencing this myself I thought, why don’t I go and help others, talk to them and make sure they are not depressed or confused? I began by helping to collect data from the patients for the TP-CKD programme around how patients are managing with their health.  At first it was a little difficult.  It is hard to go and introduce yourself and tell someone who is in pain that it is going to be ok.  They might think ‘you’ve got your kidney, I don’t want to see you’.  I had to introduce the project and Think Kidneys, tell them about how the programme is trying to help them take control and look after themselves; and also help the consultant to really understand what is going on with the patient.  Most of the time the consultant doesn’t have time to go through everything – they only deal with the urgent things.  I would encourage the patients to participate, and told them that the doctor would then know exactly how they are. At the same time I gave them the opportunity to ask me questions – for example, how are you coping since your transplant?  It really gives them hope when they see you having gone through the transplant, being well and looking after yourself. It really helps them to cope with their illness. The experience not only helps the other patients, but also the person who is providing it as well.  When you go through kidney disease, and even the operation itself, it can be really scary.  Someone has lost their life and has given something to you for your own life.  It can be really depressing, so going out and speaking to other patients about it helps you as well as them.  After my own transplant I was just depressed and stayed in the house. When I started to go to the unit once a week and began talking to people, I saw myself getting better, and found I was managing my own medication better as well. One time, a lady saw me who had a daughter with a kidney transplant.  She thought her life was ruined and that she would never get better, but I told her no – you can get through it. It has been such a great thing for me, ",
                "After getting kidney disease, I was on dialysis for almost 8 years..."),
          ],
        ),
      ),
    );
  }

  Widget _thumbStack(
    String launchUrl,
    String imgPath,
    String videoName,
    String subDes,
  ) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: () {
        _launchURL(launchUrl);
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(imgPath),
                ),
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 8),
              child: Card(
                elevation: 10,
                child: ListTile(
                  title: Text(videoName),
                  subtitle: Text(subDes),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url, forceSafariVC: true, forceWebView: true);
    } else {
      throw 'Could not launch url';
    }
  }

  Widget _buildStoryItem(String titlE, String storyDetails, String subDetails) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Stories(
                    title: titlE,
                    storyDetails: storyDetails,
                  )));
        },
        child: Card(
          elevation: 5.0,
          child: ListTile(
            title: Text(titlE),
            subtitle: Text(subDetails),
          ),
        ),
      ),
    );
  }
}
