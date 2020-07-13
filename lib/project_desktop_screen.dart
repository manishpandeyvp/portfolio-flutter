import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'home_desktop_screen.dart';
import 'about_desktop.dart';

class ProjectDesktopScreen extends StatefulWidget {
  @override
  _ProjectDesktopScreenState createState() => _ProjectDesktopScreenState();
}

class _ProjectDesktopScreenState extends State<ProjectDesktopScreen> {
  Color homeColor = Color(0xFF434A54);
  Color aboutColor = Color(0xFF434A54);
  Color linkedInColor = Color(0xFF434A54);
  Color githubColor = Color(0xFF434A54);
  Color googleColor = Color(0xFF434A54);
  Color fbColor = Color(0xFF434A54);
  Color instagramColor = Color(0xFF434A54);
  Color basicBlindStickColor = Color(0xFF434A54);
  Color brailleKeyboardColor = Color(0xFF434A54);
  Color restroAutomationColor = Color(0xFF434A54);
  Color questerColor = Color(0xFF434A54);
  Color climaColor = Color(0xFF434A54);
  Color todoeyColor = Color(0xFF434A54);
  Color flashChatColor = Color(0xFF434A54);

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
                              onHover: (bool x) {
                                setState(() {
                                  if (x) {
                                    aboutColor = Color(0xFFDA4453);
                                  } else {
                                    aboutColor = Color(0xFF434A54);
                                  }
                                });
                              },
                              hoverColor: Colors.transparent,
                              onTap: () {
                                setState(() {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              AboutDesktopScreen()));
                                });
                              },
                              child: Text(
                                'ABOUT',
                                style: TextStyle(
                                  color: aboutColor,
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
                                'PROJECTS',
                                style: TextStyle(
                                  color: Color(0xFFDA4453),
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
                                      width: 2, color: Color(0xFFDA4453)))),
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
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PrContainer(size: size),
                      PrContainer(
                        size: size,
                      ),
                      PrContainer(
                        size: size,
                      ),
                      PrContainer(
                        size: size,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      PrContainer(size: size),
                      PrContainer(
                        size: size,
                      ),
                      PrContainer(
                        size: size,
                      ),
                      PrContainer(
                        size: size,
                      ),
                    ],
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
                          url:
                              "https://www.instagram.com/_.wubba_lubba_dub_dub/",
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

class PrContainer extends StatelessWidget {
  const PrContainer({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(size.height * 0.02),
      height: size.height * 0.3,
      width: size.height * 0.3,
      decoration: BoxDecoration(
          border: Border(
        top: BorderSide(width: size.height * 0.01, color: Color(0xFF434A54)),
        bottom: BorderSide(width: size.height * 0.01, color: Color(0xFF434A54)),
        left: BorderSide(width: size.height * 0.01, color: Color(0xFF434A54)),
        right: BorderSide(width: size.height * 0.01, color: Color(0xFF434A54)),
      )),
    );
  }
}
