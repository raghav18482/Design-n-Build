import 'package:flutter/material.dart';
import 'package:material_on_web/landing_page.dart';
//import 'package:material_on_web/mark_down_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}