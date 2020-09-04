import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:treiner/WelcomePages/SignUpCoach.dart';
import 'package:treiner/WelcomePages/SignUpPlayer.dart';
import '../WelcomePages/LoginPage.dart';

class SignUp extends StatelessWidget{
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Register'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text('Sign up as a player or a coach'),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpPlayer()));},
                    child: Image.asset('assets/imgs/player.png'),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpCoach()));},
                    child: Image.asset('assets/imgs/coach.png'),
                  ),
                ),
              ]
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Already have an account?  ',
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                    text: 'Sign In',
                    style: TextStyle(color: Colors.green),
                    recognizer: TapGestureRecognizer()..onTap = () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (
                            context) => LoginPage()));
                      }
                  ),
                ],
              ),
            ),
          ],
        )
      )
    );
  }
}
