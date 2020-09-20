import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:treiner/Class/camps.dart';
import 'package:treiner/Theme/appBar.dart';
import 'package:treiner/Theme/theme.dart';

class Camps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      home: CampsPage(),
    );
  }
}

class CampsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar('Camps'),
      drawer: myDrawer(),
      body: CampsInfo(),
    );
  }
}

class CampsInfo extends StatelessWidget {
  camps camp = new camps(
    image_id: 'r2tkmlhm9iomx62tq7r3.jfif',
    title: 'School Holiday Clinic',
    description:
        'Clinic will Focus on Football Fitness Conditioning for 1 Hour working on a High Intensity\nPace football related drills and 1 Hour Small sided games',
    ages: '9-12 years, 12-15 years',
    start_time: '09:00' as DateTime,
    end_time: '11:00' as DateTime,
    days: 2,
  );
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: (){},
        child: ListTile(
          title: Text(camp.title),

        ),
      ),
    );

  }
}
