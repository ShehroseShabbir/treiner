import 'package:flutter/material.dart';
import 'package:treiner/functions.dart';

class SessionUpcoming extends StatelessWidget{
    static String route = '/upcoming';
  @override
  Widget build(BuildContext context) {
        return Scaffold(
      appBar: new AppBar(
        title: Text("Upcoming Sessions")
      ),
      body: Container(
        child: JobListing(
        title: "Meeting # 1",
        subtitle: "Name of the Person",
        trailing: "Extra Information",
        route: UpcomingMeetingID.route,
      ),
      )
    );

  }
}

class UpcomingMeetingID extends StatelessWidget{
  static String route = '/upcomingmeetingsbyid';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Upcoming Meeting Name"),
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
                      title: "Edit",
                      icon: Icons.edit,
                      shape: Colors.green,
                      route: null,
                    ),
                    MyMenu(
                      title: "Add to Calender",
                      icon: Icons.calendar_today,
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