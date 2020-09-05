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
      body: Padding(padding: EdgeInsets.all(13.0), child: _privacy()),
    );
  }
}

Widget _privacy() {
  final List<String> title = <String>[
    'We respect your privacy',
    'Collection of personal information',
    'How we collect your personal information',
    'Use of your personal information',
    'Disclosure of your personal information',
    'Security of your personal information',
    'Access to your personal information',
    'Complaints about privacy',
    'Changes to Privacy Policy',
    'Website'
  ];
  final List<String> terms = <String>[
    '...',
    '...',
    '...',
    '...',
    '...',
    '...',
    '...',
    '...',
    '...',
    '...',
  ];

  return ListView.separated(
    itemCount: title.length,
    itemBuilder: (BuildContext context, int index) {
      return Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '${index + 1}. ${title[index]}',
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
          Align(
              alignment: Alignment.centerLeft, child: Text('${terms[index]}')),
        ],
      );
    },
    separatorBuilder: (BuildContext context, int index) => SizedBox(height: 5),
  );
}
