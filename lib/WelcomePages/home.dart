import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:treiner/Theme/theme.dart';
import 'package:treiner/Theme/appBar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'SignUp.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: myTheme, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Treiner'),
        ),
        drawer: myDrawer(),
        body: Padding(
          padding: EdgeInsets.all(13.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Banner(),
                _middle(op[0]),
                _middle(op[1]),
                _middle(op[2]),
                Video(),
                _howWork(),
                Subscribe(),
                Bottombar()
              ],
            ),
          ),
        ));
  }
}

class Banner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('Soccer Training.\nAnytime, Anywhere.',
          style: Theme.of(context).textTheme.headline1),
      SizedBox(height: 10),
      Text('Find a coach and book a session now.',
          style: Theme.of(context).textTheme.headline4),
      SizedBox(height: 20),
      Align(
        alignment: Alignment.centerRight,
        child: RaisedButton(
          child: Text('Get Started!'),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SignUp()));
          },
        ),
      ),
      SizedBox(height: 20),
    ]);
  }
}

class Options {
  String pic;
  String func;
  String desc;

  Options(this.pic, this.func, this.desc);
}

Options _browseCoaches = Options(
    'assets/imgs/browse-coaches.svg',
    'Browse\nCoaches',
    "Search through all of our coaches available for training in your area. Sort"
        " by the coach's location and find local soccer coaches who suit you. "
        "All of our coaches are checked and approved for your convenience.");
Options _postAJob = Options(
    'assets/imgs/post-job.svg',
    'Post\na Job',
    "Post a soccer training job that our accredited and approved coaches can bid"
        " on. Find the best training available from a coach of your choice, at a"
        " competitive and fair price.");
Options _virtual = Options(
    'assets/imgs/virtual.svg',
    'Virtual\nTraining',
    "We're now offering online soccer training sessions from your local soccer "
        "coaches, so that you can keep your soccer skills sharp while stuck "
        "inside.");

List<Options> op = <Options>[_browseCoaches, _postAJob, _virtual];

Widget _middle(Options) {
  return Center(
    child: Container(
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FlatButton(
              child: Container(
                  height: 120,
                  width: 120,
                  child: SvgPicture.asset(Options.pic)),
              onPressed: () {
                // TODO: _route
              }),
          SizedBox(height: 20),
          Text(Options.func,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                wordSpacing: 0.1,
              )),
          SizedBox(height: 20),
          Divider(thickness: 3),
          SizedBox(height: 20),
          Text(Options.desc,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 14,
                fontWeight: FontWeight.w200,
                wordSpacing: 2,
              )),
          SizedBox(height: 40)
        ],
      ),
    ),
  );
}

Widget _howWork() {
  return Center(
    child: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40),
          Text('How Treiner Works',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 24,
                fontWeight: FontWeight.bold,
                wordSpacing: 0.1,
              )),
          SizedBox(height: 20),
          Divider(thickness: 3),
          SizedBox(height: 20),
          Text(
              "Treiner is the most convenient way to book an expert, safe and experienced soccer coaching professional within your area, budget and availability. Treiner is the only soccer-specific coach booking platform in Australia and looks to focus on the holistic development of players, offering not only personal soccer coaches but also those with expertise in futsal, goalkeeping, position specific training, video analysis, and more.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black87,
                fontSize: 14,
                fontWeight: FontWeight.w200,
                wordSpacing: 2,
              )),
          SizedBox(height: 40)
        ],
      ),
    ),
  );
}

class Video extends StatefulWidget {
  _videoState createState() => _videoState();
}

class _videoState extends State<Video> {
  YoutubePlayerController _ctrlVideo =
  YoutubePlayerController(initialVideoId: 'yVJ2qrYVth4');

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(
        controller: _ctrlVideo,
        showVideoProgressIndicator: true,
      ),
      builder: (context, player) {
        return player;
      },
    );
  }
}

class Subscribe extends StatefulWidget {
  _subscribeState createState() => _subscribeState();
}

class _subscribeState extends State<Subscribe> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: tGreen,
      child: Column(
        children: [
          SizedBox(height: 20),
          Text(
              'Subscribe to our monthly newsletter to receive updates and special offers!',
              style: Theme.of(context)
                  .textTheme
                  .headline3
                  .merge(TextStyle(color: Colors.white)),
              textAlign: TextAlign.center),
          SizedBox(height: 20),
          Form(
            key: _formKey,
            child: Column(children: [
              Container(
                width: 300,
                child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        hintText: 'Enter your email address.',
                        labelText: 'Email'),
                    validator: MultiValidator([
                      RequiredValidator(errorText: 'Please enter your email.'),
                      EmailValidator(
                          errorText: 'Please enter valid email address.')
                    ])),
              ),
              SizedBox(height: 20),
              RaisedButton(
                color: Color(0xffe5fff6),
                onPressed: () {
                  _formKey.currentState.validate();
                },
                child: Text('Subscribe', style: TextStyle(color: tGreen)),
              )
            ]),
          ),
          RaisedButton(
            onPressed: () {
              _formKey.currentState.validate();
              // TODO: Subscribe button
            },
          )
        ],
      ),
    );
  }
}

class SocialBtn {
  const SocialBtn(this.icon, this.url);

  final Icon icon;
  final String url;
}

SocialBtn _facebook = SocialBtn(const Icon(FontAwesome.facebook_square
    , color: Color(0xff006944)), 'https://www.facebook.com/treiner.co');

SocialBtn _linkedin = SocialBtn(const Icon(FontAwesome
    .linkedin_square, color: Color(0xff006944),), 'https://www.linkedin.com/company/treiner');

SocialBtn _twitter = SocialBtn(const Icon(
    FontAwesome.twitter, color: Color(0xff006944)), 'https://twitter.com/treinerco');

SocialBtn _instagram = SocialBtn(const Icon(
    FontAwesome.instagram, color: Color(0xff006944)), 'https://www.instagram.com/treiner.co');

class SocialButton extends StatefulWidget {
  _SocialButtonState createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {

  final List<SocialBtn> social = <SocialBtn>[
    _facebook,
    _linkedin,
    _twitter,
    _instagram
  ];

  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not connect';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: social.length,
        itemBuilder: (context, index){
          return Container(
            width: 30,
            child: IconButton(
              icon: social[index].icon,
              onPressed: () => _launchURL(social[index].url),
            ),
          );
        });
  }
}

class Bottombar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: Row(
        children: [
          Expanded(flex: 7,child: Text('Copyright © 2020. All Rights Reserved')),
          Expanded(flex: 4,child: SocialButton()),
        ],
      ),
    );
  }
}