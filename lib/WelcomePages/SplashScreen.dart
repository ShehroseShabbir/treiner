import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:treiner/Theme/theme.dart';
import 'package:treiner/WelcomePages/Login.dart';
import 'dart:async';

import 'package:treiner/WelcomePages/home.dart';

class SplashScreen extends StatefulWidget {
  _SpashScreenState createState() => _SpashScreenState();
}

class _SpashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Home())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: tGreen,
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
                  text: ["Coaching Coach For All Playeres."],
                  textStyle: Theme.of(context).textTheme.headline3.merge(
                        TextStyle(color: Colors.white),
                      ),
                  speed: Duration(milliseconds: 150),
                ),
              ]),
        ));
  }
}
