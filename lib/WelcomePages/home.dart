import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:treiner/Theme/theme.dart';
import 'package:treiner/Theme/appBar.dart';
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
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Banner(),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 1.5,
                    child: Selection(),
                )),
                SizedBox(height: 20),
                Video(),
                HowWork(),
                SizedBox(height: 40),
                Center(
                  child: Text('What Others Say About Us',
                      style: Theme.of(context).textTheme.headline3),
                ),
                SizedBox(height: 20),
                Divider(thickness: 3),
                SizedBox(height: 20),
                Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2,
                      child: ReviewList(),
                )),
                Subscribe(),
                BottomBar()
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

  Options({this.pic, this.func, this.desc});
}

Options _browseCoaches = Options(
    pic: 'assets/imgs/browse-coaches.svg',
    func: 'Browse\nCoaches',
    desc:
        "Search through all of our coaches available for training in your area. Sort"
        " by the coach's location and find local soccer coaches who suit you. "
        "All of our coaches are checked and approved for your convenience.");
Options _postAJob = Options(
    pic: 'assets/imgs/post-job.svg',
    func: 'Post\na Job',
    desc:
        "Post a soccer training job that our accredited and approved coaches can bid"
        " on. Find the best training available from a coach of your choice, at a"
        " competitive and fair price.");
Options _virtual = Options(
    pic: 'assets/imgs/virtual.svg',
    func: 'Virtual\nTraining',
    desc:
        "We're now offering online soccer training sessions from your local soccer "
        "coaches, so that you can keep your soccer skills sharp while stuck "
        "inside.");

class Selection extends StatelessWidget {
  final List<Options> op = <Options>[_browseCoaches, _postAJob, _virtual];

  Widget build(BuildContext context) {
    return Swiper(
        scrollDirection: Axis.horizontal,
        loop: true,
        pagination: new SwiperPagination(),
        control: new SwiperControl(),
        itemCount: op.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FlatButton(
                  child: Container(
                      height: MediaQuery.of(context).size.width / 2.5,
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: SvgPicture.asset(op[index].pic)),
                  onPressed: () {
                    // TODO: _route
                  }),
              SizedBox(height: 20),
              Text(op[index].func,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline3),
              SizedBox(height: 20),
              Container(
                  width: MediaQuery.of(context).size.width / 1.4,
                  child: Divider(thickness: 3)),
              SizedBox(height: 20),
              Container(
                width: MediaQuery.of(context).size.width / 1.4,
                child: Text(op[index].desc,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText2),
              ),
            ],
          );
        });
  }
}

class HowWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Text('How Treiner Works',
                style: Theme.of(context).textTheme.headline3),
            SizedBox(height: 20),
            Divider(thickness: 3),
            SizedBox(height: 20),
            Text(
                "Treiner is the most convenient way to book an expert, safe and experienced soccer coaching professional within your area, budget and availability. Treiner is the only soccer-specific coach booking platform in Australia and looks to focus on the holistic development of players, offering not only personal soccer coaches but also those with expertise in futsal, goalkeeping, position specific training, video analysis, and more.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2),
            SizedBox(height: 40)
          ],
        ),
      ),
    );
  }
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
                  // TODO: Subscribe button
                },
                child: Text('Subscribe', style: TextStyle(color: tGreen)),
              ),
              SizedBox(height: 20)
            ]),
          ),
        ],
      ),
    );
  }
}

class ReviewList extends StatelessWidget {
  List<Review> reviews = <Review>[review1, review2, review3];

  Widget build(BuildContext context) {
    return Swiper(
        scrollDirection: Axis.horizontal,
        loop: true,
        pagination: new SwiperPagination(),
        itemCount: reviews.length,
        control: new SwiperControl(),
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 1.3,
                child: Text(reviews[index].review,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyText2),
              ),
              SizedBox(height: 20),
              Text('${reviews[index].name}, ${reviews[index].city}',
                  textAlign: TextAlign.center,
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .merge(TextStyle(color: tGreen))),
            ],
          );
        });
  }
}

class Review {
  const Review({this.name, this.city, this.review});

  final String name;
  final String city;
  final String review;
}

Review review1 = Review(
    name: 'Nikita - Under 16 NPL Player',
    city: 'Melbourne',
    review:
        'Private training for me was very helpful. It really excelled my ball skills as the ball was constantly at my feet, it also helped me increase my confidence as I could keep practising and practising until I got things right. Private training was very unique as it was different from normal team training because the whole session was focused on yourself and your individual improvement and development.');
Review review2 = Review(
    name: 'Liam Polinsky',
    city: 'Sydney',
    review:
        'As a coach, not only does Kogu implement brilliant strategies to overcome opposition on the scoreboard, he is by far the best coach i have had in a mental sense. Soccer and Futsal are as mentally challenging as they are physical so having that extra edge with a motivating coach is that extra push needed to reach that next level in soccering development.');
Review review3 = Review(
    name: 'Junji - U20 NPL Player',
    city: 'Melbourne',
    review:
        'After 3 years of private training with Kogu and few others it brought me from quite a shy player to winning best and fairest last season. Private training has increased my technical ability tremendously as well as my knowledge of the game and fitness. Its very beneficial and helps improve your game a lot and is very highly recommended to any player who wants to take their game to the next level.');
