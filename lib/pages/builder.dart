import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class BuilderPage extends StatefulWidget {
  const BuilderPage({super.key});

  @override
  State<BuilderPage> createState() => _BuilderPageState();
}

class _BuilderPageState extends State<BuilderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Image.asset('assets/images/pc.png', width: 100, height: 100),
            SizedBox(height: 10),
            Text("Builder", style: GoogleFonts.montserrat(
              textStyle: TextStyle(color: CupertinoColors.activeBlue, fontWeight: FontWeight.bold, fontSize: 20)
            )),
            SizedBox(height: 5),
            Text("Dasturlash tili Dart", style: GoogleFonts.montserrat(
                textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10)
            )),
            Text("Dasturchi Ergashboyev Iftixor", style: GoogleFonts.montserrat(
                textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10)
            )),
            Text("Cupertino iOS style'dan foydalanildi.", style: GoogleFonts.montserrat(
                textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10)
            )),
            Text("Bu sahifa Versel.com'ga kiritildi", style: GoogleFonts.montserrat(
                textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10)
            )),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Ko'dlarni olish", style: GoogleFonts.montserrat(
                    textStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 10)
                )),
                Image.asset('assets/images/past.png', width: 10, height: 10),
              ],
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                _launchGithubChannel();
              },
              child: Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.8),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    )
                  ],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text("Open Code", style: GoogleFonts.montserrat(
                    textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)
                  )),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
  void _launchGithubChannel() async {
    const url = 'https://github.com/iftixor-ergashboyev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Github kanalini ochishda xatolik yuz berdi';
    }
  }
}
