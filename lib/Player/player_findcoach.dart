import 'package:flutter/material.dart';
import 'package:treiner/functions.dart';

class FindCoach extends StatelessWidget {
  static String route = '/findcoach';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Find a Coach")),
      body: Container(
          child: Column(
        children: [
          Text(
            "Find a Coach",
            style: TextStyle(fontSize: 24.0),
          ),
          Column(
            children: [
              TextFormField(decoration: InputDecoration(labelText: "Distance"))
            ],
          ),
          Column(
            children: [
              TextFormField(decoration: InputDecoration(labelText: "Location"))
            ],
          ),
          Column(
            children: [
              TextFormField(decoration: InputDecoration(labelText: "Budget"))
            ],
          ),
          Column(
            children: [
              TextFormField(
                  decoration: InputDecoration(labelText: "Session Type"))
            ],
          ),
          MyMenu(
              title: "Search",
              icon: Icons.search,
              shape: Colors.green,
              route: SelectCoach.route)
        ],
      )),
    );
  }
}

class SelectCoach extends StatelessWidget {
  static String route = '/selectcoach';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select a Coach"),
      ),
      body: Container(
        child: ListView(children: [
          CoachCard(
            name: "Sinisa Cohadzic",
            location: "Sydney",
            displayurl: "assets/coach/1.jpg",
          ),
          CoachCard(
            name: "Jay Son",
            location: "Melbourne",
            displayurl: "assets/coach/2.jpg",
          ),
          CoachCard(
            name: "Emanuel Saakai",
            location: "Oak Park",
            displayurl: "assets/coach/3.jpg",
          ),
          CoachCard(
            name: "John Floros",
            location: "Sydney",
            displayurl: "assets/coach/4.png",
          ),
        ]),
      ),
    );
  }
}
