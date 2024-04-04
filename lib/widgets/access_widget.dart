import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_site/pages/home.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.activeBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to", style: GoogleFonts.montserrat(
              textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
            )),
            Text("Iftixor", style: GoogleFonts.montserrat(
              textStyle: TextStyle(fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
            )),
          ],
        ),
      ),
    );
  }
}