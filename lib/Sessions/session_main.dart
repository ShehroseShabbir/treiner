import 'package:flutter/material.dart';
import 'package:treiner/functions.dart';
import 'package:treiner/Sessions/session_meetings.dart';
import 'package:treiner/Sessions/session_completed.dart';
import 'package:treiner/Sessions/session_upcoming.dart';

class CoachSessions extends StatelessWidget {
  static String route = '/sessions';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sessions')),
      body: Center(
        child: Container(
            child: ListView(
              children: [
                MyMenu(
                  title: "Meetings",
                  icon: Icons.work,
                  shape: Colors.green,
                  route: SessionMeetings.route,
                ),
                MyMenu(
                  title: "Upcoming",
                  icon: Icons.work,
                  shape: Colors.green,
                  route: SessionUpcoming.route,
                ),
                MyMenu(
                  title: "Completed",
                  icon: Icons.work,
                  shape: Colors.green,
                  route: SessionCompleted.route,
                ),
              ],
          ), 
        ),
      ),
    );
  }
}