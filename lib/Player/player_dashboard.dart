import 'package:flutter/material.dart';
import 'package:treiner/Coach/coach_dashbaord.dart';
import 'package:treiner/Player/player_book.dart';
import 'package:treiner/Player/player_findcoach.dart';
import 'package:treiner/Sessions/RequestSession.dart';
import 'package:treiner/functions.dart';

class PlayerDashboard extends StatelessWidget {
  static String route = '/playerdashboard';
  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Scaffold(
        appBar: new AppBar(
          title: Text('Player Dashboard'),
        ),
        drawer: Drawer(
            child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("admin@treiner.io"),
              accountName: Text("Coach"),
              decoration: BoxDecoration(color: Color(0xFF006944)),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Text(
                  "C",
                  style: TextStyle(fontSize: 38, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
                title: Text("Player Dashboard"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => PlayerDashboard()));
                }),
            ListTile(
                title: Text("Coach Dashboard"),
                trailing: Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CoachDashboard()));
                })
          ],
        )),
        body: Container(
          child: ListView(
            children: [
              MenuButton(
                title: "Find a Coach",
                icon: Icons.local_library,
                route: FindCoach.route,
              ),
              MenuButton(
                title: "Request a Session",
                icon: Icons.book,
                route: RequestSession.route,
              ),
              MenuButton(
                title: "Session",
                icon: Icons.business_center,
                route: null,
              ),
              MenuButton(
                title: "Contact Us",
                icon: Icons.work,
                route: CoachContact.route,
              ),
            ],
          ),
        ));
  }
}
