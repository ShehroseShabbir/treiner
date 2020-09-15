import 'package:flutter/material.dart';
import 'package:treiner/Theme/appBar.dart';
import 'package:treiner/Theme/theme.dart';

class Privacy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      home: PrivacyPage(),
    );
  }
}

class PrivacyPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Privacy Policy'),
      ),
      drawer: myDrawer(),
      body: Padding(padding: EdgeInsets.all(13.0), child: PrivacyList()),
    );
  }
}

class PrivacyDetails {
  PrivacyDetails({this.title, this.desc});

  String title;
  String desc;
}
class PrivacyList extends StatelessWidget{
List<PrivacyDetails> privacys = [
  PrivacyDetails(title: 'We respect your privacy', desc: '...'),
  PrivacyDetails(title: 'Collection of personal information', desc: '...'),
  PrivacyDetails(
      title: 'How we collect your personal information', desc: '...'),
  PrivacyDetails(title: 'Use of your personal information', desc: '...'),
  PrivacyDetails(title: 'Disclosure of your personal information', desc: '...'),
  PrivacyDetails(title: 'Security of your personal information', desc: '...'),
  PrivacyDetails(title: 'Access to your personal information', desc: '...'),
  PrivacyDetails(title: 'Complaints about privacy', desc: '...'),
  PrivacyDetails(title: 'Changes to Privacy Policy', desc: '...'),
  PrivacyDetails(title: 'Website', desc: '...')
];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: privacys.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '${index + 1}. ${privacys[index].title}',
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              '${privacys[index].desc}',
              textAlign: TextAlign.left,
            ),
          ],
        );
      },
      separatorBuilder: (BuildContext context, int index) => SizedBox(height: 10),
    );
  }
}
