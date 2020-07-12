import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'home_desktop_screen.dart';

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
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              HomeDesktopScreen()));
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
                              onTap: () {},
                              child: Text(
                                'PROJECTS',
                                style: TextStyle(
                                  color: projectColor,
                                  fontSize: size.height * 0.02,
                                  fontWeight: FontWeight.w700,
                                  letterSpacing: 2,
//                                  decoration: TextDecoration.underline,
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
                                  FittedBox(
                                    child: Padding(
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
                          FittedBox(
                            child: InkWell(
                              onTap: () {},
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
                                        FittedBox(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 2),
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
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'This is Manish Kumar Pandey. Electronics and Communication Engineer,'
                                      'and a Flutter Developer \nhaving interests in Android App Designing, '
                                      'Web App Designing, and Data Science.',
                                      style: TextStyle(
                                          color: preFinalYearColor
                                              .withOpacity(0.7),
                                          fontSize: size.height * 0.018,
                                          fontWeight: FontWeight.w100,
                                          letterSpacing: 1,
                                          fontFamily: 'ConcertOne'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          FittedBox(
                            child: InkWell(
                              onTap: () {},
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
                                        FittedBox(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 2),
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
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'This is Manish Kumar Pandey. Electronics and Communication Engineer,'
                                      'and a Flutter Developer \nhaving interests in Android App Designing, '
                                      'Web App Designing, and Data Science.',
                                      style: TextStyle(
                                          color:
                                              secondYearColor.withOpacity(0.7),
                                          fontSize: size.height * 0.018,
                                          fontWeight: FontWeight.w100,
                                          letterSpacing: 1,
                                          fontFamily: 'ConcertOne'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          FittedBox(
                            child: InkWell(
                              onTap: () {},
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
                                        FittedBox(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 2),
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
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'This is Manish Kumar Pandey. Electronics and Communication Engineer,'
                                      'and a Flutter Developer \nhaving interests in Android App Designing, '
                                      'Web App Designing, and Data Science.',
                                      style: TextStyle(
                                          color:
                                              firstYearColor.withOpacity(0.7),
                                          fontSize: size.height * 0.018,
                                          fontWeight: FontWeight.w100,
                                          letterSpacing: 1,
                                          fontFamily: 'ConcertOne'),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.05,
                          ),
                          FittedBox(
                            child: InkWell(
                              onTap: () {},
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
                                        FittedBox(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 2),
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
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'This is Manish Kumar Pandey. Electronics and Communication Engineer,'
                                      'and a Flutter Developer \nhaving interests in Android App Designing, '
                                      'Web App Designing, and Data Science.',
                                      style: TextStyle(
                                          color:
                                              schoolDaysColor.withOpacity(0.7),
                                          fontSize: size.height * 0.018,
                                          fontWeight: FontWeight.w100,
                                          letterSpacing: 1,
                                          fontFamily: 'ConcertOne'),
                                    )
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
                    child: Container(),
                  ),
                ],
              ),
              Spacer(),
              FittedBox(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
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
                          url: null,
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
                          url: null,
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
                          url: null,
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
                          url: null,
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
                          url: null,
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
              ),
            ],
          ),
        ));
  }
}
