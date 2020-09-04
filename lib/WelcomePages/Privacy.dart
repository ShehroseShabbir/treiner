import 'package:flutter/material.dart';

class Privacy extends StatelessWidget{
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Privacy Policy'),
      ),
      body: _privacy(),
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
    '...','...','...','...','...','...','...','...','...','...',
  ];

  return ListView.separated(
    itemCount: title.length,
    itemBuilder: (BuildContext context, int index) {
      return Column(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Text('${index+1}. ${title[index]}',
              style: TextStyle(fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text('${terms[index]}')),
        ],
      );
    },
    separatorBuilder: (BuildContext context, int index) => SizedBox(height: 20),
  );
}