import 'package:flutter/material.dart';
import 'package:my_site/pages/access.dart';

import 'pages/home.dart';

void main(){
  runApp(MySite());
}
class MySite extends StatelessWidget {
  const MySite({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true
      ),
      home: Access(),
    );
  }
}
