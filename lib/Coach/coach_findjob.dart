import 'package:flutter/material.dart';
import 'package:treiner/functions.dart';

import 'coach_browse.dart';
import 'coach_offers.dart';

class CoachFindJobs extends StatelessWidget {
  static String route = '/job';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Find A Job')),
      body: Container(
            child: ListView(
              children: [
                MyMenu(
                  title: "View Job Offers",
                  icon: Icons.work,
                  shape: Colors.green,
                  route: MyJobs.route,
                ),
                MyMenu(
                  title: "Browse All Jobs",
                  icon: Icons.work,
                  shape: Colors.green,
                  route: BrowseJobs.route,
                ),
              ],
          ), 
        )
    );
  }
}