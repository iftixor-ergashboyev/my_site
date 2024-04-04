import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_site/pages/about.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 10),
              Text("Hi dear!", style: GoogleFonts.montserrat(
                textStyle: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 35,
                    color: CupertinoColors.activeBlue),
              )),
              SizedBox(height: 6),
              Text("I am very happy to see you on my site!",
                  style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        fontSize: 16, color: CupertinoColors.black),
                  )),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Follow me", style: GoogleFonts.montserrat(
                    textStyle: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 35,
                        color: CupertinoColors.activeBlue),
                  )),
                  Image.asset('assets/images/emoji.png',
                      height: 35, width: 35),
                ],
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: _launchTelegramChannel,
                child: Container(
                  height: 70,
                  width: 320,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: CupertinoColors.activeBlue.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ],
                    color: CupertinoColors.activeBlue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Image.asset(
                          'assets/images/telegram.png', width: 30, height: 30),
                      SizedBox(width: 60),
                      Text("Telegram", style: GoogleFonts.montserrat(
                        textStyle: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: CupertinoColors.white),
                      )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: _launchInstagramChannel,
                child: Container(
                  height: 70,
                  width: 320,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: CupertinoColors.systemPink.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ],
                    color: CupertinoColors.systemPink,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Image.asset(
                          'assets/images/instagram.png', width: 30, height: 30),
                      SizedBox(width: 60),
                      Text("Instagram", style: GoogleFonts.montserrat(
                        textStyle: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: CupertinoColors.white),
                      )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: _launchGithubChannel,
                child: Container(
                  height: 70,
                  width: 320,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: CupertinoColors.black.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ],
                    color: CupertinoColors.black,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Image.asset(
                          'assets/images/github.png', width: 30, height: 30),
                      SizedBox(width: 75),
                      Text("Github", style: GoogleFonts.montserrat(
                        textStyle: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: CupertinoColors.white),
                      )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: _launchYouTubeChannel,
                child: Container(
                  height: 70,
                  width: 320,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: CupertinoColors.destructiveRed.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ],
                    color: CupertinoColors.destructiveRed,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Image.asset(
                          'assets/images/you_tube.png', width: 30, height: 30),
                      SizedBox(width: 60),
                      Text("You Tube", style: GoogleFonts.montserrat(
                        textStyle: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: CupertinoColors.white),
                      )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: _launchFacebookChannel,
                child: Container(
                  height: 70,
                  width: 320,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: CupertinoColors.systemBlue.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      )
                    ],
                    color: CupertinoColors.systemBlue,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 10),
                      Image.asset(
                          'assets/images/facebook.png', width: 30, height: 30),
                      SizedBox(width: 60),
                      Text("Facebook", style: GoogleFonts.montserrat(
                        textStyle: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: CupertinoColors.white),
                      )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      CupertinoPageRoute(builder: (context) => AboutPage()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 10),
                    Image.asset(
                        'assets/images/about.png', width: 30, height: 30),
                    Text("About me >", style: GoogleFonts.montserrat(
                      textStyle: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: CupertinoColors.activeBlue),
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  void _launchTelegramChannel() async {
    const url = 'https://t.me/iftixor_ergashboyev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Telegram kanalini ochishda xatolik yuz berdi';
    }
  }
  void _launchInstagramChannel() async {
    const url = 'https://www.instagram.com/iftixor_ergashboyev?igsh=OGdnY2tueWUwaXBh';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Instagram kanalini ochishda xatolik yuz berdi';
    }
  }
  void _launchFacebookChannel() async {
    const url = 'https://www.facebook.com/profile.php?id=100090872313188&mibextid=ZbWKwL';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Facebook kanalini ochishda xatolik yuz berdi';
    }
  }
  void _launchGithubChannel() async {
    const url = 'https://github.com/iftixor-ergashboyev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Github kanalini ochishda xatolik yuz berdi';
    }
  }
  void _launchYouTubeChannel() async {
    const url = 'https://www.youtube.com/channel/UCNowxXYfzoup00Yrbt4uUVQ';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'You Tube kanalini ochishda xatolik yuz berdi';
    }
  }
}
