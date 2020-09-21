import 'package:flutter/material.dart';
import 'package:treiner/functions.dart';

class JobDescriptionPage extends StatelessWidget {
  JobDescriptionPage({this.title, this.postedby, this.date, this.price});

  final String title;
  final String postedby;
  final String date;
  final String price;

  static String route = '/jobdescription';
  @override
  Widget build(BuildContext context) {
    // Build Code Down Here
    return Scaffold(
      appBar: new AppBar(
        title: Text(this.title),
      ),
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Align(
              child: CircleAvatar(
                radius: 100.0,
                backgroundColor: Colors.green[900],
                child: CircleAvatar(
                  radius: 95,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/profile-none.png'),
                ),
              ),
              alignment: Alignment.topCenter,
            ),
            Card(
              child: ListTile(
                title: Text("Posted by"),
                subtitle: Text(this.postedby,
                    style: new TextStyle(
                      fontSize: 22.0,
                      color: Colors.black,
                    )),
                trailing: Text("2 weeks ago"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Location"),
                subtitle: Text("Melbourne",
                    style: new TextStyle(
                      fontSize: 22.0,
                      color: Colors.black,
                    )),
                trailing: Text("View Map"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("Date"),
                subtitle: Text("${this.date}",
                    style: new TextStyle(
                      fontSize: 22.0,
                      color: Colors.black,
                    )),
              ),
            ),
            SizedBox(
              child: Card(
                child: Align(
                  child: ListTile(
                    title: Text("Details"),
                    subtitle: Text(
                        "I want a coach to push me to reach my potential to take me to the next level for when I go back into the team environment"),
                  ),
                ),
              ),
            ),
            Card(
              child: ListTile(
                  title: Text("Job Budget"),
                  subtitle: Row(
                    children: [
                      Text("${this.price}",
                          style: new TextStyle(
                              fontSize: 22.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      Text(" per hour")
                    ],
                  )),
            ),
            Card(
              child: ListTile(
                title: Text("Post your comment"),
                subtitle: TextField(
                  decoration: new InputDecoration(
                      labelText: "Submit a comment for this job.",
                      suffixIcon: IconButton(
                        icon: Icon(Icons.send),
                        onPressed: () {
                          TextEditingController().clear();
                        },
                      )),
                ),
              ),
            ),
            MyMenu(
              title: "Make Offer",
              icon: Icons.email,
              route: null,
            ),
          ],
        ),
      ),
    );
  }
}
