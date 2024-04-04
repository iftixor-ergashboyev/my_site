import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/access_widget.dart';

class Access extends StatelessWidget {
  const Access({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: MyWidget(),
      ),
    );
  }
}