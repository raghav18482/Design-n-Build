import 'package:flutter/material.dart';
import 'package:flutter_webpage/LandingPage/LandingPage.dart';
import 'package:flutter_webpage/Navbar/Navbar.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: "Montserrat"),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [const Color(0xff213A50), const Color(0xff071930)],
            )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Navbar(),
              Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 140.0, horizontal: 10.0),
                child: LandingPage(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
