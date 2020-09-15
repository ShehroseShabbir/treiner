import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:treiner/Theme/theme.dart';
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
                SvgPicture.asset('assets/imgs/vertical_lockup.svg',
                width: MediaQuery.of(context).size.width /2),
                SizedBox(height: 50),
                TyperAnimatedTextKit(
                  text: ["Coaching Coach For All Players."],
                  textStyle: Theme.of(context).textTheme.headline3.merge(
                        TextStyle(color: Colors.white),
                      ),
                  speed: Duration(milliseconds: 150),
                ),
              ]),
        ));
  }
}
