import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_site/pages/builder.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  _email() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text("My Email", style: GoogleFonts.montserrat(),),
          content: Text("@ergashboeviftixor@gmail.com", style: GoogleFonts.montserrat(textStyle: TextStyle(
            fontWeight: FontWeight.bold
          )),),
          actions: <CupertinoDialogAction>[
            CupertinoDialogAction(
              child: Text("Good!", style: GoogleFonts.montserrat(textStyle: TextStyle(
                color: CupertinoColors.systemBlue
              )),),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
  _phone() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return CupertinoAlertDialog(
          title: Text("My Phone number", style: GoogleFonts.montserrat(),),
          content: Text("+998 50 221 01 27", style: GoogleFonts.montserrat(textStyle: TextStyle(
            fontWeight: FontWeight.bold
          )),),
          actions: <CupertinoDialogAction>[
            CupertinoDialogAction(
              child: Text("Good!", style: GoogleFonts.montserrat(textStyle: TextStyle(
                color: CupertinoColors.activeBlue
              )),),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("About me!", style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 35, color: CupertinoColors.activeBlue
                ),
              )),
              Image.asset('assets/images/about_me.png', height: 35, width: 35)
            ],
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 10),
      ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Image.asset('assets/images/my_photo.png', height: 100, width: 100),
      ),
              SizedBox(width: 10),
              Container(
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Text("Iftixor Ergashboyev", style: GoogleFonts.montserrat(
                          textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                        )),
                        Icon(Icons.verified, color: CupertinoColors.activeBlue, size: 20)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("Mobile Developer", style: GoogleFonts.montserrat(
                          textStyle: TextStyle(fontSize: 15,  color: Colors.black),
                        )),
                        SizedBox(height: 10,),
                        Image.asset('assets/images/dev.png', height: 15, width: 15),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            width: 410,
            height: 450,
            decoration: BoxDecoration(
              color: Colors.white38,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.circle, color: CupertinoColors.activeBlue, size: 20),
                    Icon(Icons.circle, color: CupertinoColors.activeBlue, size: 20),
                    Icon(Icons.circle, color: CupertinoColors.activeBlue, size: 20),
                    SizedBox(width: 10)
                  ],
                ),
                SizedBox(height: 10),
                  Divider(),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Dasturlash tili:", style: GoogleFonts.montserrat(
                      textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                    )),
            SizedBox(width: 10),
            Text("Dart", style: GoogleFonts.montserrat(
              textStyle: TextStyle(color: CupertinoColors.activeBlue, fontSize: 18, fontWeight: FontWeight.bold))),
                    Image.asset('assets/images/dart.png', height: 18, width: 18)
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Tajriba:", style: GoogleFonts.montserrat(
                      textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                    )),
                    SizedBox(width: 10),
                    Text("13 oy +", style: GoogleFonts.montserrat(
                        textStyle: TextStyle(color: CupertinoColors.activeBlue, fontSize: 18, fontWeight: FontWeight.bold))),
                    Image.asset('assets/images/flutter.png', height: 18, width: 18)
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Tahsil olgan joyi:", style: GoogleFonts.montserrat(
                      textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                    )),
                    SizedBox(width: 10),
                    Text("Digital City", style: GoogleFonts.montserrat(
                        textStyle: TextStyle(color: CupertinoColors.activeBlue, fontSize: 18, fontWeight: FontWeight.bold))),
                    Icon(CupertinoIcons.location_solid, color: CupertinoColors.activeBlue, size: 18,)
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Yashash joyi:", style: GoogleFonts.montserrat(
                      textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                    )),
                    SizedBox(width: 10),
                    Text("Andijon, Izboskan", style: GoogleFonts.montserrat(
                        textStyle: TextStyle(color: CupertinoColors.activeBlue, fontSize: 18, fontWeight: FontWeight.bold))),
                    Icon(CupertinoIcons.location, color: CupertinoColors.activeBlue, size: 18,)
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Maktab:", style: GoogleFonts.montserrat(
                      textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                    )),
                    SizedBox(width: 10),
                    Text("Izboskan 17-maktab", style: GoogleFonts.montserrat(
                        textStyle: TextStyle(color: CupertinoColors.activeBlue, fontSize: 18, fontWeight: FontWeight.bold))),
                    Image.asset('assets/images/study.png', height: 18, width: 18)
                  ],
                ),
                SizedBox(height: 10),
                Divider(),
                Text("Contact:", style: GoogleFonts.montserrat(
                  textStyle: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                )),
                ElevatedButton(style: ElevatedButton.styleFrom(
                  backgroundColor: CupertinoColors.activeGreen,
                  minimumSize: Size(100, 50),
                ),
                  onPressed: () {
                  _phone();
                  }, child: Row(
                  children: [
                    Icon(CupertinoIcons.phone, color: Colors.white, size: 20),
                    SizedBox(width: 120),
                    Text("Phone", style: GoogleFonts.montserrat(
                        textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white)
                    )),
                  ],
                ),),
                SizedBox(height: 5),
                ElevatedButton(style: ElevatedButton.styleFrom(
                  backgroundColor: CupertinoColors.systemTeal,
                  minimumSize: Size(100, 50),
                ),
                  onPressed: () {
                  _email();
                  }, child: Row(
                    children: [
                      Icon(CupertinoIcons.quote_bubble_fill, color: Colors.white, size: 20),
                      SizedBox(width: 120),
                      Text("Email", style: GoogleFonts.montserrat(
                          textStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white)
                      )),
                    ],
                  ),),
                SizedBox(height: 20),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, CupertinoPageRoute(builder: (context) => BuilderPage()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Open Builder", style: GoogleFonts.montserrat(
                          textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: CupertinoColors.activeBlue),
                        )),
                        Image.asset('assets/images/builder.png', width: 15, height: 15)
                      ],
                    ),
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ),
        ],
      ),
    );
  }
}
