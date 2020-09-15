import 'package:flutter/material.dart';
import 'package:treiner/Coach/coach_findjob.dart';
import 'package:treiner/Coach/coach_offers.dart';
import 'package:treiner/Player/player_dashboard.dart';
import 'package:treiner/Sessions/session_main.dart';
import 'package:treiner/functions.dart';

class CoachDashboard extends StatefulWidget {
  @override
  _CoachDashboard createState() => _CoachDashboard();
}

class _CoachDashboard extends State<CoachDashboard> {
  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Scaffold(
        appBar: new AppBar(
          title: Text('Coach Dashboard'),
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
                  style: TextStyle(
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF006944)),
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
          child: Column(
            children: [
              MenuButton(
                title: "Find A Job",
                icon: Icons.work,
                route: MyJobs.route,
              ),
              MenuButton(
                title: "My Job Applications",
                icon: Icons.apps,
                route: MyCoachJobs.route,
              ),
              MenuButton(
                title: "Sessions",
                icon: Icons.account_box,
                route: CoachSessions.route,
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

class CoachContact extends StatelessWidget {
  static String route = '/contact';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact Us')),
      body: Center(
        child: Text('Contact Us'),
      ),
    );
  }
}

class MyCoachJobs extends StatelessWidget {
  static String route = '/myjobapps';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Job Applications')),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: [
            MyAppliedJobsWidget(),
            MyAppliedJobsWidget(),
            MyAppliedJobsWidget(),
            MyAppliedJobsWidget(),
            MyAppliedJobsWidget(),
            MyAppliedJobsWidget(),
          ],
        ),
      ),
    );
  }
}

class MyAppliedJobsWidget extends StatelessWidget {
  const MyAppliedJobsWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      elevation: 5.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.work, size: 40.0, color: Color(0xFF006944)),
            title: Text("JOB TITLE "),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("OFFERED PRICE"),
                Text("JOB BUDGET"),
                Text("STARTS AT"),
                Text("LENGTH"),
              ],
            ),
          ),
          ButtonTheme.bar(
            child: ButtonBar(
              children: [
                FlatButton(
                  child: const Text('Edit'),
                  onPressed: () {},
                ),
                FlatButton(
                  child: const Text('Delete'),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
