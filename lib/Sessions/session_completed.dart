import 'package:flutter/material.dart';
import 'package:treiner/functions.dart';

class SessionCompleted extends StatelessWidget{
      static String route = '/completed';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Completed Sessions")
      ),
      body: Container(
        child: JobListing(
        title: "Meeting # 1",
        subtitle: "Name of the Person",
        trailing: "Date Completed",
        route: CompletedMeetingID.route
      ),
      )
    );
  }
}

class CompletedMeetingID extends StatelessWidget{
  static String route = '/completedmeetingsbyid';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Completed Meeting Name"),
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
                      title: "Give Feedback",
                      icon: Icons.feedback,
                      shape: Colors.green,
                      route: null,
                    ),
                    MyMenu(
                      title: "Upload Videos",
                      icon: Icons.cloud_upload,
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