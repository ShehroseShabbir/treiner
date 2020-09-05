import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:treiner/WelcomePages/Login.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget{
    _SpashScreenState createState() => _SpashScreenState();
}

class _SpashScreenState extends State<SplashScreen>{
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
            () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => LoginPage())));
  }
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFF006944),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/imgs/logo.png',
              width: 200,
            ),
            SizedBox(height: 50),
            TypewriterAnimatedTextKit(
              text:["Coaching Coach For All Playeres."],
              textStyle: TextStyle(
                fontFamily: 'Futura',
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              speed: Duration(milliseconds: 150),
            ),
          ]
        ),
      )
    );
  }
}
