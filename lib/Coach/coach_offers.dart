import 'package:flutter/material.dart';
import 'package:treiner/functions.dart';
import 'coach_jobdesc.dart';

class MyJobs extends StatelessWidget {
  static String route = '/myjobs';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My Job Offers')),
      body: Container(
        child: ListView(
          children: [
            JobListing(title: "Job ABC", subtitle: "I am job description", trailing: "I am trailing for this job", route: JobDescriptionPage.route),
            JobListing(title: "Janaki Shah", subtitle: "I am subtitle for this job", trailing: "I am the trailing title for this job", route: JobDescriptionPage.route)
          ],
        )
      )
    );
  }
}