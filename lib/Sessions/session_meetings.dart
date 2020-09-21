import 'package:flutter/material.dart';
import 'package:treiner/functions.dart';

class SessionMeetings extends StatelessWidget{
      static String route = '/meetings';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Meetings")
      ),
      body: Container(
        child: JobListing(
        title: "Meeting # 1",
        subtitle: "Name of the Person",
        trailing: "Extra Information",
        route: MeetingID.route,
      ),
      )
    );
  }
}

class MeetingID extends StatelessWidget{
  static String route = '/meetingsbyid';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Meeting Name"),
      ),
      body: Container(
          child: Center(
            child: Column(
              children: [
                Column(
                  children: [Text("Potential Player Meeting", style: TextStyle(fontSize: 40.0))],
                ),
                Column(
                  children: [
                    SizedBox(
                      child: Card(
                        child: ListTile(
                          title: Text("Meeting Information"),
                        ),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    MyMenu(
                      title: "Join Meeting",
                      icon: Icons.contact_phone,
                      shape: Colors.green,
                      route: null,
                    ),
                  ],
                )
              ],
            ),
          ),
      ),
    );

  }
}