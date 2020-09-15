import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:treiner/Theme/theme.dart';
import 'package:treiner/Theme/appBar.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      home: AboutUsPage(),
    );
  }
}

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('About Us'),
      ),
      drawer: myDrawer(),
      body: Padding(
        padding: EdgeInsets.all(13.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text('About Treiner',
                  style: Theme.of(context).textTheme.headline3),
              SizedBox(height: 5),
              Divider(),
              Text(
                  "Treiner is Australia and New Zealand\'s premier soccer coaching marketplace "
                  "service providing players of all skill levels the opportunity to increase "
                  "their abilities, learn new skills and become better players both on and off "
                  "the field. If your game needs help or you just want the benefits that a "
                  "professional coaching and support staff can provide, let Treiner help "
                  "you achieve your goals today."),
              SizedBox(height: 5),
              Text(
                  "Headquartered in Melbourne, Victoria, the Treiner platform provides quality, "
                  "one-on-one soccer (soccer), goalkeeping, small group coaching and many other "
                  "types of sessions. These sessions can help players up their game and become a "
                  "more rounded soccer player no matter what position they play. "),
              SizedBox(height: 10),
              Text("Request a session or find a coach today!", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              SizedBox(height: 30),
              Text('How Treiner Works',
                  style: Theme.of(context).textTheme.headline3),
              SizedBox(height: 5),
              Divider(),
              Text(
                  "Treiner is the most convenient way to book an expert, safe and experienced "
                  "soccer coaching professional within your area, budget and availability. Treiner "
                  "is the only soccer specific coach booking platform in Australia and looks to "
                  "focus on the holistic development of players offering not only virtual training "
                  "and personal soccer coaches but also those with expertise in futsal, goalkeeping, "
                  "position specific training, video analysis, and more."),
            ],
          ),
        ),
      ),
    );
  }
}
