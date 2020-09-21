import 'package:flutter/material.dart';
import 'package:treiner/functions.dart';
import 'package:treiner/Player/player_findcoach.dart';

class BookCoach extends StatelessWidget {
  BookCoach({this.name, this.location});

  final String name;
  final String location;

  static String route = '/bookcoach';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Coach: David Andrews"),
        ),
        body: Container(
            child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text("Some Text"),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text("Some Text"),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text("Some Text"),
            ),
            ListTile(
              leading: Icon(Icons.photo_album),
              title: Text("Some Text"),
            ),
            MyMenu(
              title: "Contact me",
              icon: Icons.comment,
              shape: Colors.green,
              route: null,
            ),
            MyMenu(
              title: "Book a Session",
              icon: Icons.book,
              shape: Colors.green,
              route: BookSession.route,
            ),
          ],
        )));
  }
}

class BookSession extends StatelessWidget {
  static String route = '/booksession';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Book a Session"),
        ),
        body: Container(
            child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Some Text"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Some Text"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Some Text"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Some Text"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Some Text"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Some Text"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Some Text"),
            ),
            MyMenu(
              title: "Cancel",
              icon: Icons.cancel,
              shape: Colors.green,
              route: FindCoach.route,
            ),
            MyMenu(
              title: "Book a Session",
              icon: Icons.arrow_forward,
              shape: Colors.green,
              route: null,
            ),
          ],
        )));
  }
}
