import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:treiner/Theme/appBar.dart';
import 'package:treiner/WelcomePages/SignUpCoach.dart';
import 'package:treiner/WelcomePages/SignUpPlayer.dart';
import 'package:treiner/WelcomePages/Login.dart';
import 'package:treiner/Theme/theme.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      home: SignUpPage(),
    );
  }
}
class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text('Register'),),
      drawer: myDrawer(),
      body: Padding(
        padding: EdgeInsets.all(13.0),
        child: Column(
          children: <Widget>[
            Text('Sign up as a player or a coach',style: Theme.of(context).textTheme.subtitle2,),
            SizedBox(height: 5.0),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => SignUpPlayer()));
                    },
                    child: Image.asset('assets/imgs/player.png'),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => SignUpCoach()));
                    },
                    child: Image.asset('assets/imgs/coach.png'),
                  ),
                ),
              ]
            ),
            SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Already have an account? '),
                RichText(
                  text: TextSpan(
                      text: 'Sign In',
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodyText2
                          .merge(TextStyle(color: tGreen,fontWeight: FontWeight.bold)),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(context, MaterialPageRoute(builder:
                              (context) => LoginPage()));
                        }
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}