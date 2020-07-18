import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'home_desktop_screen.dart';
import 'about_desktop.dart';
import 'package:url_launcher/url_launcher.dart';

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
  Future<void> _launched;

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

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
                                  Navigator.push(context,
                                      FadeRoute(page: AboutDesktopScreen()));
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
                      PrContainer(
                        size: size,
                        title: 'BLIND STICK',
                        desc:
                            'The project proposed the design and architecture of a '
                            'new concept of Smart Electronic Guiding Stick for blind people',
                      ),
                      PrContainer(
                        size: size,
                        title: 'BRAILLE KEYBOARD',
                        desc:
                            'The project proposed the design and possible ways to '
                            'reduce the cost of Braille Keyboards available in the market',
                      ),
                      PrContainer(
                        size: size,
                        title: 'RESTRO AUTOMATION',
                        desc:
                            'Tried to reduce the waiting time of customers for '
                            'their orders and digitalized the various processes carried out in between',
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _launched = _launchInBrowser(
                                "https://github.com/SMV-IIITDMJ/Quester");
                          });
                        },
                        onHover: (bool x) {
                          if (x) {
                            setState(() {
                              questerColor = Color(0xFFDA4453);
                            });
                          } else {
                            setState(() {
                              questerColor = Color(0xFF434A54);
                            });
                          }
                        },
                        hoverColor: Colors.transparent,
                        child: Container(
                          margin: EdgeInsets.all(size.height * 0.02),
                          height: size.height * 0.3,
                          width: size.height * 0.3,
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                  width: size.height * 0.01,
                                  color: questerColor),
                              bottom: BorderSide(
                                  width: size.height * 0.01,
                                  color: questerColor),
                              left: BorderSide(
                                  width: size.height * 0.01,
                                  color: questerColor),
                              right: BorderSide(
                                  width: size.height * 0.01,
                                  color: questerColor),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  'QUESTER',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: questerColor,
                                      fontSize: size.height * 0.023,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 2,
                                      fontFamily: 'ConcertOne'),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.04,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(
                                  'Quester sets you on a path of doing small and easy, yet heavily contributiing missions'
                                  'for saving the Planet',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      color: questerColor.withOpacity(0.6),
                                      fontSize: size.height * 0.020,
                                      fontWeight: FontWeight.w100,
                                      letterSpacing: 1,
                                      fontFamily: 'ConcertOne'),
                                ),
                              ),
                              Spacer(),
                              SocialMediaButton.github(
                                url: null,
                                color: questerColor,
                                size: size.height * 0.03,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {},
                        onHover: (bool x) {
                          if (x) {
                            setState(() {
                              climaColor = Color(0xFFDA4453);
                            });
                          } else {
                            setState(() {
                              climaColor = Color(0xFF434A54);
                            });
                          }
                        },
                        hoverColor: Colors.transparent,
                        child: Container(
                          margin: EdgeInsets.all(size.height * 0.02),
                          height: size.height * 0.3,
                          width: size.height * 0.3,
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                  width: size.height * 0.01, color: climaColor),
                              bottom: BorderSide(
                                  width: size.height * 0.01, color: climaColor),
                              left: BorderSide(
                                  width: size.height * 0.01, color: climaColor),
                              right: BorderSide(
                                  width: size.height * 0.01, color: climaColor),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  'CLIMA',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: climaColor,
                                      fontSize: size.height * 0.023,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 2,
                                      fontFamily: 'ConcertOne'),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.04,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(
                                  'Clima is a weather telling app which also let you search '
                                  'weather details for different locations',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      color: climaColor.withOpacity(0.6),
                                      fontSize: size.height * 0.020,
                                      fontWeight: FontWeight.w100,
                                      letterSpacing: 1,
                                      fontFamily: 'ConcertOne'),
                                ),
                              ),
                              Spacer(),
                              SocialMediaButton.github(
                                url: null,
                                color: climaColor,
                                size: size.height * 0.03,
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            _launched = _launchInBrowser(
                                "https://github.com/manishpandeyvp/todoey");
                          });
                        },
                        onHover: (bool x) {
                          if (x) {
                            setState(() {
                              todoeyColor = Color(0xFFDA4453);
                            });
                          } else {
                            setState(() {
                              todoeyColor = Color(0xFF434A54);
                            });
                          }
                        },
                        hoverColor: Colors.transparent,
                        child: Container(
                          margin: EdgeInsets.all(size.height * 0.02),
                          height: size.height * 0.3,
                          width: size.height * 0.3,
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                  width: size.height * 0.01,
                                  color: todoeyColor),
                              bottom: BorderSide(
                                  width: size.height * 0.01,
                                  color: todoeyColor),
                              left: BorderSide(
                                  width: size.height * 0.01,
                                  color: todoeyColor),
                              right: BorderSide(
                                  width: size.height * 0.01,
                                  color: todoeyColor),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  'TODOEY',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: todoeyColor,
                                      fontSize: size.height * 0.023,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 2,
                                      fontFamily: 'ConcertOne'),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.04,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(
                                  'Todoey let you organize your Todo list',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      color: todoeyColor.withOpacity(0.6),
                                      fontSize: size.height * 0.020,
                                      fontWeight: FontWeight.w100,
                                      letterSpacing: 1,
                                      fontFamily: 'ConcertOne'),
                                ),
                              ),
                              Spacer(),
                              SocialMediaButton.github(
                                url: null,
                                color: todoeyColor,
                                size: size.height * 0.03,
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        onHover: (bool x) {
                          if (x) {
                            setState(() {
                              flashChatColor = Color(0xFFDA4453);
                            });
                          } else {
                            setState(() {
                              flashChatColor = Color(0xFF434A54);
                            });
                          }
                        },
                        hoverColor: Colors.transparent,
                        child: Container(
                          margin: EdgeInsets.all(size.height * 0.02),
                          height: size.height * 0.3,
                          width: size.height * 0.3,
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                  width: size.height * 0.01,
                                  color: flashChatColor),
                              bottom: BorderSide(
                                  width: size.height * 0.01,
                                  color: flashChatColor),
                              left: BorderSide(
                                  width: size.height * 0.01,
                                  color: flashChatColor),
                              right: BorderSide(
                                  width: size.height * 0.01,
                                  color: flashChatColor),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  'FLASH CHAT',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: flashChatColor,
                                      fontSize: size.height * 0.023,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 2,
                                      fontFamily: 'ConcertOne'),
                                ),
                              ),
                              SizedBox(
                                height: size.height * 0.04,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(
                                  'Flashchat provides you a chatting platform',
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      color: flashChatColor.withOpacity(0.6),
                                      fontSize: size.height * 0.020,
                                      fontWeight: FontWeight.w100,
                                      letterSpacing: 1,
                                      fontFamily: 'ConcertOne'),
                                ),
                              ),
                              Spacer(),
                              SocialMediaButton.github(
                                url: null,
                                color: flashChatColor,
                                size: size.height * 0.03,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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

class PrContainer extends StatelessWidget {
  const PrContainer({
    Key key,
    @required this.size,
    @required this.desc,
    @required this.title,
  }) : super(key: key);

  final Size size;
  final String title;
  final String desc;

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(
              title,
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: Color(0xFF434A54),
                  fontSize: size.height * 0.023,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2,
                  fontFamily: 'ConcertOne'),
            ),
          ),
          SizedBox(
            height: size.height * 0.04,
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              desc,
              textAlign: TextAlign.end,
              style: TextStyle(
                  color: Color(0xFF434A54).withOpacity(0.6),
                  fontSize: size.height * 0.020,
                  fontWeight: FontWeight.w100,
                  letterSpacing: 1,
                  fontFamily: 'ConcertOne'),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(left: 8, bottom: 8),
            child: Icon(
              Icons.description,
              color: Color(0xFF434A54),
              size: size.height * 0.03,
            ),
          )
        ],
      ),
    );
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
