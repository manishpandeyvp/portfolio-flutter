import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'home_desktop_screen.dart';
import 'project_desktop_screen.dart';

class AboutDesktopScreen extends StatefulWidget {
  @override
  _AboutDesktopScreenState createState() => _AboutDesktopScreenState();
}

class _AboutDesktopScreenState extends State<AboutDesktopScreen> {
  Color homeColor = Color(0xFF434A54);
  Color projectColor = Color(0xFF434A54);
  Color linkedInColor = Color(0xFF434A54);
  Color githubColor = Color(0xFF434A54);
  Color googleColor = Color(0xFF434A54);
  Color fbColor = Color(0xFF434A54);
  Color instagramColor = Color(0xFF434A54);
  Color preFinalYearColor = Color(0xFF434A54);
  Color secondYearColor = Color(0xFF434A54);
  Color firstYearColor = Color(0xFF434A54);
  Color schoolDaysColor = Color(0xFF434A54);
  bool preFinalYearVisibility = true;
  bool secondYearVisibility = true;
  bool firstYearVisibility = true;
  bool schoolDaysVisibility = true;
  bool preFinalYearDescVisibility = false;
  bool secondYearDescVisibility = false;
  bool firstYearDescVisibility = false;
  bool schoolDaysDescVisibility = false;
  bool sizedBoxVisibility1 = true;
  bool sizedBoxVisibility2 = true;
  bool sizedBoxVisibility3 = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xFFFDFDFD),
        body: Container(
          alignment: Alignment.center,
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              FittedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: [
                      SizedBox(
                        width: size.width * 0.05,
                        height: 1,
                        child: Divider(
                          thickness: 1,
                          color: Color(0xFF434A54),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.01,
                      ),
                      FittedBox(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 2),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  Navigator.push(context,
                                      FadeRoute(page: HomeDesktopScreen()));
                                });
                              },
                              onHover: (bool x) {
                                setState(() {
                                  if (x) {
                                    homeColor = Color(0xFFDA4453);
                                  } else {
                                    homeColor = Color(0xFF434A54);
                                  }
                                });
                              },
                              hoverColor: Colors.transparent,
                              child: Text(
                                'HOME',
                                style: TextStyle(
                                  color: homeColor,
                                  fontSize: size.height * 0.02,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 2,
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 2, color: Colors.transparent))),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.01,
                      ),
                      CircleAvatar(
                        radius: size.height * 0.003,
                        backgroundColor: Color(0xFF434A54).withOpacity(0.5),
                      ),
                      SizedBox(
                        width: size.width * 0.01,
                      ),
                      FittedBox(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 2),
                            child: InkWell(
                              child: Text(
                                'ABOUT',
                                style: TextStyle(
                                  color: Color(0xFFDA4453),
                                  fontSize: size.height * 0.02,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 2,
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 2, color: Color(0xFFDA4453)))),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.01,
                      ),
                      CircleAvatar(
                        radius: size.height * 0.003,
                        backgroundColor: Color(0xFF434A54).withOpacity(0.5),
                      ),
                      SizedBox(
                        width: size.width * 0.01,
                      ),
                      FittedBox(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 2),
                            child: InkWell(
                              onHover: (bool x) {
                                setState(() {
                                  if (x) {
                                    projectColor = Color(0xFFDA4453);
                                  } else {
                                    projectColor = Color(0xFF434A54);
                                  }
                                });
                              },
                              hoverColor: Colors.transparent,
                              onTap: () {
                                setState(() {
                                  Navigator.push(context,
                                      FadeRoute(page: ProjectDesktopScreen()));
                                });
                              },
                              child: Text(
                                'PROJECTS',
                                style: TextStyle(
                                  color: projectColor,
                                  fontSize: size.height * 0.02,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 2,
                                ),
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 2, color: Colors.transparent))),
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.01,
                      ),
                      SizedBox(
                        width: size.width * 0.05,
                        height: 1,
                        child: Divider(
                          thickness: 1,
                          color: Color(0xFF434A54),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              Row(
                children: [
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        children: [
                          FittedBox(
                            child: Container(
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: size.height * 0.007,
                                    backgroundColor:
                                        Color(0xFFDA4453).withOpacity(0.5),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.01,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 2),
                                    child: InkWell(
                                      child: Text(
                                        'My Story!',
                                        style: TextStyle(
                                            color: Color(0xFFDA4453),
                                            fontSize: size.height * 0.05,
                                            fontWeight: FontWeight.w700,
                                            letterSpacing: 2,
                                            fontFamily: 'ConcertOne'),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.01,
                                  ),
                                  CircleAvatar(
                                    radius: size.height * 0.007,
                                    backgroundColor:
                                        Color(0xFFDA4453).withOpacity(0.5),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          Visibility(
                            visible: preFinalYearVisibility,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  secondYearVisibility = false;
                                  firstYearVisibility = false;
                                  schoolDaysVisibility = false;
                                  preFinalYearDescVisibility = true;
                                  sizedBoxVisibility1 = false;
                                  sizedBoxVisibility2 = false;
                                  sizedBoxVisibility3 = false;
                                });
                              },
                              onHover: (bool x) {
                                setState(() {
                                  if (x) {
                                    preFinalYearColor = Color(0xFFDA4453);
                                  } else {
                                    preFinalYearColor =
                                        Color(0xFF434A54).withOpacity(0.7);
                                  }
                                });
                              },
                              hoverColor: Colors.transparent,
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: size.width * 0.05,
                                          height: 1,
                                          child: Divider(
                                            thickness: 1,
                                            color: preFinalYearColor,
                                          ),
                                        ),
                                        SizedBox(
                                          width: size.width * 0.01,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 2),
                                          child: InkWell(
                                            child: Text(
                                              'PRE FINAL YEAR',
                                              style: TextStyle(
                                                color: preFinalYearColor
                                                    .withOpacity(0.7),
                                                fontSize: size.height * 0.018,
                                                fontWeight: FontWeight.w700,
                                                letterSpacing: 2,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Gonna start soon...!!',
                                      style: TextStyle(
                                          color: preFinalYearColor
                                              .withOpacity(0.7),
                                          fontSize: size.height * 0.02,
                                          fontWeight: FontWeight.w100,
                                          letterSpacing: 1,
                                          fontFamily: 'ConcertOne'),
                                    ),
                                    Visibility(
                                      visible: preFinalYearDescVisibility,
                                      child: SizedBox(
                                        height: size.height * 0.05,
                                      ),
                                    ),
                                    Visibility(
                                      visible: preFinalYearDescVisibility,
                                      child: Text(
                                        '......... | ............... | .................... ',
                                        style: TextStyle(
                                            color: Color(0xFF434A54)
                                                .withOpacity(0.7),
                                            fontSize: size.height * 0.02,
                                            fontWeight: FontWeight.w100,
                                            letterSpacing: 1,
                                            fontFamily: 'ConcertOne'),
                                      ),
                                    ),
                                    Visibility(
                                      visible: preFinalYearDescVisibility,
                                      child: SizedBox(
                                        height: size.height * 0.05,
                                      ),
                                    ),
                                    Visibility(
                                        visible: preFinalYearDescVisibility,
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              secondYearVisibility = true;
                                              firstYearVisibility = true;
                                              schoolDaysVisibility = true;
                                              preFinalYearDescVisibility =
                                                  false;
                                              sizedBoxVisibility1 = true;
                                              sizedBoxVisibility2 = true;
                                              sizedBoxVisibility3 = true;
                                            });
                                          },
                                          child: Icon(
                                            Icons.arrow_back,
                                            size: size.height * 0.05,
                                            color: Color(0xFFDA4453),
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Visibility(
                            visible: sizedBoxVisibility1,
                            child: SizedBox(
                              height: size.height * 0.05,
                            ),
                          ),
                          Visibility(
                            visible: secondYearVisibility,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  preFinalYearVisibility = false;
                                  firstYearVisibility = false;
                                  schoolDaysVisibility = false;
                                  secondYearDescVisibility = true;
                                  sizedBoxVisibility1 = false;
                                  sizedBoxVisibility2 = false;
                                  sizedBoxVisibility3 = false;
                                });
                              },
                              onHover: (bool x) {
                                setState(() {
                                  if (x) {
                                    secondYearColor = Color(0xFFDA4453);
                                  } else {
                                    secondYearColor =
                                        Color(0xFF434A54).withOpacity(0.7);
                                  }
                                });
                              },
                              hoverColor: Colors.transparent,
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: size.width * 0.05,
                                          height: 1,
                                          child: Divider(
                                            thickness: 1,
                                            color: secondYearColor,
                                          ),
                                        ),
                                        SizedBox(
                                          width: size.width * 0.01,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'SECOND YEAR',
                                            style: TextStyle(
                                              color: secondYearColor
                                                  .withOpacity(0.7),
                                              fontSize: size.height * 0.018,
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: 2,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Python | Braille Keyboard | Flute | Ukelele | Event Coordinator and Club Associate | '
                                      'Electronics Club | Saaz | Flutter | Lockdown',
                                      style: TextStyle(
                                          color:
                                              secondYearColor.withOpacity(0.7),
                                          fontSize: size.height * 0.02,
                                          fontWeight: FontWeight.w100,
                                          letterSpacing: 1,
                                          fontFamily: 'ConcertOne'),
                                    ),
                                    Visibility(
                                      visible: secondYearDescVisibility,
                                      child: SizedBox(
                                        height: size.height * 0.05,
                                      ),
                                    ),
                                    Visibility(
                                      visible: secondYearDescVisibility,
                                      child: Text(
                                        'In my Sophomore year at the College, I started learning Python. Continued the same theme'
                                        'of my project, I developed a Braille Keyboard with my team under Prof Biswajeet. I learnt '
                                        'how to play the Ukelele,  and the Flute. In te latter months of my time as a sophomore, '
                                        'I fell in love with Flutter, a hybrid app/web/desktop development platform, which has had me hooked.',
                                        style: TextStyle(
                                            color: Color(0xFF434A54)
                                                .withOpacity(0.7),
                                            fontSize: size.height * 0.02,
                                            fontWeight: FontWeight.w100,
                                            letterSpacing: 1,
                                            fontFamily: 'ConcertOne'),
                                      ),
                                    ),
                                    Visibility(
                                      visible: secondYearDescVisibility,
                                      child: SizedBox(
                                        height: size.height * 0.05,
                                      ),
                                    ),
                                    Visibility(
                                        visible: secondYearDescVisibility,
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              preFinalYearVisibility = true;
                                              firstYearVisibility = true;
                                              schoolDaysVisibility = true;
                                              secondYearDescVisibility = false;
                                              sizedBoxVisibility1 = true;
                                              sizedBoxVisibility2 = true;
                                              sizedBoxVisibility3 = true;
                                            });
                                          },
                                          child: Icon(
                                            Icons.arrow_back,
                                            size: size.height * 0.05,
                                            color: Color(0xFFDA4453),
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Visibility(
                            visible: sizedBoxVisibility2,
                            child: SizedBox(
                              height: size.height * 0.05,
                            ),
                          ),
                          Visibility(
                            visible: firstYearVisibility,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  preFinalYearVisibility = false;
                                  secondYearVisibility = false;
                                  schoolDaysVisibility = false;
                                  firstYearDescVisibility = true;
                                  sizedBoxVisibility1 = false;
                                  sizedBoxVisibility2 = false;
                                  sizedBoxVisibility3 = false;
                                });
                              },
                              onHover: (bool x) {
                                setState(() {
                                  if (x) {
                                    firstYearColor = Color(0xFFDA4453);
                                  } else {
                                    firstYearColor =
                                        Color(0xFF434A54).withOpacity(0.7);
                                  }
                                });
                              },
                              hoverColor: Colors.transparent,
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: size.width * 0.05,
                                          height: 1,
                                          child: Divider(
                                            thickness: 1,
                                            color: firstYearColor,
                                          ),
                                        ),
                                        SizedBox(
                                          width: size.width * 0.01,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'FIRST YEAR',
                                            style: TextStyle(
                                              color: firstYearColor
                                                  .withOpacity(0.7),
                                              fontSize: size.height * 0.018,
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: 2,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'C | Basic Blind Stick | Content Developer | Electronics Club | Saaz | Guitar | '
                                      'Restro Automation | First Runner Up | Second Runner Up',
                                      style: TextStyle(
                                          color:
                                              firstYearColor.withOpacity(0.7),
                                          fontSize: size.height * 0.02,
                                          fontWeight: FontWeight.w100,
                                          letterSpacing: 1,
                                          fontFamily: 'ConcertOne'),
                                    ),
                                    Visibility(
                                      visible: firstYearDescVisibility,
                                      child: SizedBox(
                                        height: size.height * 0.05,
                                      ),
                                    ),
                                    Visibility(
                                      visible: firstYearDescVisibility,
                                      child: Text(
                                        'My introduction to IIITDMJ and College life was in 2018. I started learning how to code in '
                                        'C. As a project taken under Prof Biswajeet, we developed a Blind Stick, which was given a lot '
                                        'of praise. Did an internship at Toppr, and learnt hoe to play Guitar. I was first and '
                                        'second runner up in LED Matrix and Circuit Master at Abhikalpan\'19.',
                                        style: TextStyle(
                                            color: Color(0xFF434A54)
                                                .withOpacity(0.7),
                                            fontSize: size.height * 0.02,
                                            fontWeight: FontWeight.w100,
                                            letterSpacing: 1,
                                            fontFamily: 'ConcertOne'),
                                      ),
                                    ),
                                    Visibility(
                                      visible: firstYearDescVisibility,
                                      child: SizedBox(
                                        height: size.height * 0.05,
                                      ),
                                    ),
                                    Visibility(
                                        visible: firstYearDescVisibility,
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              secondYearVisibility = true;
                                              preFinalYearVisibility = true;
                                              schoolDaysVisibility = true;
                                              firstYearDescVisibility = false;
                                              sizedBoxVisibility1 = true;
                                              sizedBoxVisibility2 = true;
                                              sizedBoxVisibility3 = true;
                                            });
                                          },
                                          child: Icon(
                                            Icons.arrow_back,
                                            size: size.height * 0.05,
                                            color: Color(0xFFDA4453),
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Visibility(
                            visible: sizedBoxVisibility3,
                            child: SizedBox(
                              height: size.height * 0.05,
                            ),
                          ),
                          Visibility(
                            visible: schoolDaysVisibility,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  preFinalYearVisibility = false;
                                  secondYearVisibility = false;
                                  firstYearVisibility = false;
                                  schoolDaysDescVisibility = true;
                                  sizedBoxVisibility1 = false;
                                  sizedBoxVisibility2 = false;
                                  sizedBoxVisibility3 = false;
                                });
                              },
                              onHover: (bool x) {
                                setState(() {
                                  if (x) {
                                    schoolDaysColor = Color(0xFFDA4453);
                                  } else {
                                    schoolDaysColor =
                                        Color(0xFF434A54).withOpacity(0.7);
                                  }
                                });
                              },
                              hoverColor: Colors.transparent,
                              child: Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          width: size.width * 0.05,
                                          height: 1,
                                          child: Divider(
                                            thickness: 1,
                                            color: schoolDaysColor,
                                          ),
                                        ),
                                        SizedBox(
                                          width: size.width * 0.01,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(bottom: 2),
                                          child: Text(
                                            'SCHOOL DAYS',
                                            style: TextStyle(
                                              color: schoolDaysColor
                                                  .withOpacity(0.7),
                                              fontSize: size.height * 0.018,
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: 2,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'BS&G | Class & House Representative | Volunteering | Olympiads | Drawing Competitions | '
                                      'Testing Camps ',
                                      style: TextStyle(
                                          color:
                                              schoolDaysColor.withOpacity(0.7),
                                          fontSize: size.height * 0.02,
                                          fontWeight: FontWeight.w100,
                                          letterSpacing: 1,
                                          fontFamily: 'ConcertOne'),
                                    ),
                                    Visibility(
                                      visible: schoolDaysDescVisibility,
                                      child: SizedBox(
                                        height: size.height * 0.05,
                                      ),
                                    ),
                                    Visibility(
                                      visible: schoolDaysDescVisibility,
                                      child: Text(
                                        'In the time before I started my undergraduate studies, I was a student at the Kendriya Vidyalaya. '
                                        'While there, I had been the class representative. I had also been awarded the Rashtrapati Award '
                                        'in Bharat Scouts and Guides. I participated and won in a few drawing competitions too. '
                                        'Volunteering in the 2014 Lok Sabha elections was a highlight in my time at school.',
                                        style: TextStyle(
                                            color: Color(0xFF434A54)
                                                .withOpacity(0.7),
                                            fontSize: size.height * 0.02,
                                            fontWeight: FontWeight.w100,
                                            letterSpacing: 1,
                                            fontFamily: 'ConcertOne'),
                                      ),
                                    ),
                                    Visibility(
                                      visible: schoolDaysDescVisibility,
                                      child: SizedBox(
                                        height: size.height * 0.05,
                                      ),
                                    ),
                                    Visibility(
                                        visible: schoolDaysDescVisibility,
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              secondYearVisibility = true;
                                              firstYearVisibility = true;
                                              preFinalYearVisibility = true;
                                              schoolDaysDescVisibility = false;
                                              sizedBoxVisibility1 = true;
                                              sizedBoxVisibility2 = true;
                                              sizedBoxVisibility3 = true;
                                            });
                                          },
                                          child: Icon(
                                            Icons.arrow_back,
                                            size: size.height * 0.05,
                                            color: Color(0xFFDA4453),
                                          ),
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          FittedBox(
                            child: Container(
                              child: Row(
                                children: [
                                  FittedBox(
                                    child: Padding(
                                      padding: const EdgeInsets.only(bottom: 2),
                                      child: InkWell(
                                        child: Text(
                                          'EDUCATION',
                                          style: TextStyle(
                                              color: Color(0xFFDA4453),
                                              fontSize: size.height * 0.018,
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: 2,
                                              fontFamily: 'ConcertOne'),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width * 0.01,
                                  ),
                                  SizedBox(
                                    width: size.width * 0.05,
                                    height: 1,
                                    child: Divider(
                                      thickness: 1,
                                      color: Color(0xFFDA4453),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          FittedBox(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  FittedBox(
                                    child: Text(
                                      'PDPM Indian Institute of Information Technology,\n'
                                              'Design and Manufacturing, Jabalpur, Madhya Pradesh'
                                          .toUpperCase(),
                                      textAlign: TextAlign.end,
                                      style: TextStyle(
                                        color: Color(0xFF434A54),
                                        fontSize: size.height * 0.018,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: 2,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Bachelor of Technology in Electronics and Communication Engineering\n'
                                    'Electronics and Communication Engineering\nAugust 2018 - Current\n'
                                    'Current CPI of 7.5 on scale of 10',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        color:
                                            Color(0xFFDA4453).withOpacity(0.8),
                                        fontSize: size.height * 0.02,
                                        fontWeight: FontWeight.w100,
                                        letterSpacing: 1,
                                        fontFamily: 'ConcertOne'),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          FittedBox(
                            child: Text(
                              'Kendriya Vidyalaya Gomti Nagar lucknow'
                                  .toUpperCase(),
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                color: Color(0xFF434A54),
                                fontSize: size.height * 0.018,
                                fontWeight: FontWeight.w700,
                                letterSpacing: 2,
                              ),
                            ),
                          ),
                          Text(
                            'High School and Intermediate\n'
                            'April 2014 - April 2017\n'
                            '10 CGPA in X and 92.8% in XII',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                                color: Color(0xFFDA4453).withOpacity(0.8),
                                fontSize: size.height * 0.02,
                                fontWeight: FontWeight.w100,
                                letterSpacing: 1,
                                fontFamily: 'ConcertOne'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                ],
              ),
              Spacer(),
              FittedBox(
                child: Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.04,
                      height: 1,
                      child: Divider(
                        thickness: 1,
                        color: Color(0xFF434A54),
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    InkWell(
                      onHover: (bool x) {
                        setState(() {
                          if (x) {
                            linkedInColor = Color(0xFFDA4453);
                          } else {
                            linkedInColor = Color(0xFF434A54);
                          }
                        });
                      },
                      hoverColor: Colors.transparent,
                      onTap: () {},
                      child: SocialMediaButton.linkedin(
                        url:
                            "https://www.linkedin.com/in/manish-pandey-8a4213179/",
                        size: size.height * 0.03,
                        color: linkedInColor,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    CircleAvatar(
                      radius: size.height * 0.003,
                      backgroundColor: Color(0xFF434A54).withOpacity(0.5),
                    ),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    InkWell(
                      onHover: (bool x) {
                        setState(() {
                          if (x) {
                            githubColor = Color(0xFFDA4453);
                          } else {
                            githubColor = Color(0xFF434A54);
                          }
                        });
                      },
                      hoverColor: Colors.transparent,
                      onTap: () {},
                      child: SocialMediaButton.github(
                        url: "https://github.com/manishpandeyvp",
                        size: size.height * 0.03,
                        color: githubColor,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    CircleAvatar(
                      radius: size.height * 0.003,
                      backgroundColor: Color(0xFF434A54).withOpacity(0.5),
                    ),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    InkWell(
                      onHover: (bool x) {
                        setState(() {
                          if (x) {
                            googleColor = Color(0xFFDA4453);
                          } else {
                            googleColor = Color(0xFF434A54);
                          }
                        });
                      },
                      hoverColor: Colors.transparent,
                      onTap: () {},
                      child: SocialMediaButton.google(
                        url: "mailto:2018140@iiitdmj.ac.in",
                        size: size.height * 0.03,
                        color: googleColor,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    CircleAvatar(
                      radius: size.height * 0.003,
                      backgroundColor: Color(0xFF434A54).withOpacity(0.5),
                    ),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    InkWell(
                      onHover: (bool x) {
                        setState(() {
                          if (x) {
                            fbColor = Color(0xFFDA4453);
                          } else {
                            fbColor = Color(0xFF434A54);
                          }
                        });
                      },
                      hoverColor: Colors.transparent,
                      onTap: () {},
                      child: SocialMediaButton.facebook(
                        url: "https://www.facebook.com/manishpandeyvp/",
                        size: size.height * 0.03,
                        color: fbColor,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    CircleAvatar(
                      radius: size.height * 0.003,
                      backgroundColor: Color(0xFF434A54).withOpacity(0.5),
                    ),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    InkWell(
                      onHover: (bool x) {
                        setState(() {
                          if (x) {
                            instagramColor = Color(0xFFDA4453);
                          } else {
                            instagramColor = Color(0xFF434A54);
                          }
                        });
                      },
                      hoverColor: Colors.transparent,
                      onTap: () {},
                      child: SocialMediaButton.instagram(
                        url: "https://www.instagram.com/_.wubba_lubba_dub_dub/",
                        size: size.height * 0.03,
                        color: instagramColor,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    SizedBox(
                      width: size.width * 0.04,
                      height: 1,
                      child: Divider(
                        thickness: 1,
                        color: Color(0xFF434A54),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text('designed by manish pandey',
                    style: TextStyle(
                        color: Color(0xFF434A54).withOpacity(0.6),
                        fontSize: size.height * 0.016,
                        fontWeight: FontWeight.w100,
                        letterSpacing: 1,
                        fontFamily: 'MuseoModerno')),
              ),
            ],
          ),
        ));
  }
}

class FadeRoute extends PageRouteBuilder {
  final Widget page;
  FadeRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
