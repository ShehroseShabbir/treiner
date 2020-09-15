import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:treiner/Theme/theme.dart';
import 'package:treiner/Theme/appBar.dart';

class VirtualTraining extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      home: VirtualTrainingPage(),
    );
  }
}

class VirtualTrainingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Virtual Training'),
      ),
      drawer: myDrawer(),
      body: Padding(
        padding: EdgeInsets.all(13.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                  'Treiner is now offering virtual soccer training sessions. If '
                      'you find yourself stuck at home, virtual training is the ideal '
                      'way to keep yourself on your feet at home and your soccer '
                      'skills on point. Now, when you post a job you can choose to '
                      'run it over Zoom and receive the same quality of coaching from '
                      'local coaches from the comfort of your own home.\n\nAdditionally, '
                      'you can find coaches that offer virtual training sessions that '
                      'you can book with other players. \n\nLike all other sessions, '
                      'virtual coaching can be done by yourself or within a group, and you '
                      'will be able to support your local coaches by booking virtual '
                      'training sessions with them. Once the session is booked you\'ll be '
                      'able to join it via Zoom through the Live Sessions tab in your '
                      'dashboard.'),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                        text: 'Post a virtual training job',
                        style: Theme.of(context).textTheme.bodyText2.merge(TextStyle(color: tGreen)),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            //TODO Post a job link
                          }),
                  ),
                  Text(' or '),
                  RichText(
                    text: TextSpan(
                        text: 'Search for a coach',
                        style: Theme.of(context).textTheme.bodyText2.merge(TextStyle(color: tGreen)),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            //TODO Find coach link
                          }),
                  )
                ],
              ),
              Text('that offers virtual training!'),
            ],
          ),),
      ),
    );
  }
}
