import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_media_buttons/social_media_buttons.dart';
import 'about_desktop.dart';
import 'project_desktop_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeDesktopScreen extends StatefulWidget {
  @override
  _HomeDesktopScreenState createState() => _HomeDesktopScreenState();
}

class _HomeDesktopScreenState extends State<HomeDesktopScreen> {
  Color aboutColor = Color(0xFF434A54);
  Color projectColor = Color(0xFF434A54);
  Color linkedInColor = Color(0xFF434A54);
  Color githubColor = Color(0xFF434A54);
  Color googleColor = Color(0xFF434A54);
  Color fbColor = Color(0xFF434A54);
  Color instagramColor = Color(0xFF434A54);
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
        body: Stack(
          children: [
            Container(
              height: size.height,
              width: size.width,
              decoration: BoxDecoration(
                  color: Color(0xFFFDFDFD),
                  image: DecorationImage(
                      alignment: Alignment.bottomRight,
                      image: AssetImage('assets/profile.png'),
                      fit: BoxFit.scaleDown)),
            ),
            Container(
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
                                  child: Text(
                                    'HOME',
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
                                        aboutColor = Color(0xFFDA4453);
                                      } else {
                                        aboutColor = Color(0xFF434A54);
                                      }
                                    });
                                  },
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          FadeRoute(
                                              page: AboutDesktopScreen()));
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
                                          width: 2,
                                          color: Colors.transparent))),
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
                                  hoverColor: Color(0xFFDA4453),
                                  onTap: () {
                                    setState(() {
                                      Navigator.push(
                                          context,
                                          FadeRoute(
                                              page: ProjectDesktopScreen()));
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
                                          width: 2,
                                          color: Colors.transparent))),
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
                        width: size.width * 0.1,
                      ),
                      Expanded(
                        child: Container(
                          child: Center(
                            child: FittedBox(
                              child: Column(
                                children: [
                                  FittedBox(
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          child: Divider(
                                            thickness: 2,
                                            color: Color(0xFF434A54),
                                          ),
                                          width: size.width * 0.03,
                                          height: 2,
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'HELLO',
                                          style: TextStyle(
                                            color: Color(0xFF434A54),
                                            letterSpacing: 2,
                                            fontSize: size.height * 0.02,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.007,
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        'I\'m ',
                                        style: TextStyle(
                                          color: Color(0xFF434A54),
                                          fontSize: size.height * 0.047,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'ConcertOne',
                                        ),
                                      ),
                                      Text(
                                        'Manish ',
                                        style: TextStyle(
                                          color: Color(0xFFDA4453),
                                          fontSize: size.height * 0.05,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'MuseoModerno',
                                        ),
                                      ),
                                      Text(
                                        'Pandey.',
                                        style: TextStyle(
                                          color: Color(0xFF434A54),
                                          fontSize: size.height * 0.05,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'MuseoModerno',
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: size.height * 0.007,
                                  ),
                                  Text(
                                    'iOS APP DESIGNER | WEB DESIGNER | FLUTTER DEVELOPER',
                                    style: TextStyle(
                                        color:
                                            Color(0xFF434A54).withOpacity(0.5),
                                        letterSpacing: 2,
                                        fontSize: size.height * 0.020,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'ConcertOne'),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  ),
                                  Text(
                                    'This is Manish Kumar Pandey. Electronics and Communication Engineer,'
                                    'and a Flutter Developer \nhaving interests in Android App Designing, '
                                    'Web App Designing, and Data Science.',
                                    style: TextStyle(
                                        color:
                                            Color(0xFF434A54).withOpacity(0.7),
                                        fontSize: size.height * 0.02,
                                        fontWeight: FontWeight.w100,
                                        letterSpacing: 1,
                                        fontFamily: 'ConcertOne'),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  ),
                                  MaterialButton(
                                    onPressed: () {
                                      setState(() {
                                        _launched = _launchInBrowser(
                                            "https://drive.google.com/file/d/1-azKIiiD1QvKXeUiUmW_akwM5f_lpFbn/view?usp=sharing");
                                      });
                                    },
                                    color: Color(0xFFDA4453),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          size.width * 0.02),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Text(
                                        'View CV',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: size.height * 0.018,
                                            fontWeight: FontWeight.w700,
                                            letterSpacing: 1),
                                      ),
                                    ),
                                  )
                                ],
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                              ),
                            ),
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
            )
          ],
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
