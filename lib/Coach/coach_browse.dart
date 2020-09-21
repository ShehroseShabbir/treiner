import 'package:flutter/material.dart';
import 'package:treiner/functions.dart';

class BrowseJobs extends StatelessWidget {
  static String route = '/browsejob';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Browse  Jobs')),
        body: Container(
            child: ListView(
          children: [
            JobCard(
                title: "Winger Specific Training",
                price: "\$20.00",
                postedby: "Evan Yashumov"),
            JobCard(
                title: "Ball Mystery for 10",
                price: "\$40.00",
                postedby: "Janaki Shah"),
            JobCard(
                title: "1v1 Defending Target",
                price: "\$30.00",
                postedby: "Shehrose Shabbir"),
            JobCard(
              title: "General Fitness",
              price: "\$10.00",
              postedby: "Sergey Yashumov",
            ),
            JobCard(
              title: "General Fitness",
              price: "\$10.00",
              postedby: "Guest",
            ),
            JobCard(
              title: "General Fitness",
              price: "\$10.00",
              postedby: "Mel Beecroft",
            ),
          ],
        )));
  }
}
