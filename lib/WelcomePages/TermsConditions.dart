import 'package:flutter/material.dart';
import 'package:treiner/Theme/appBar.dart';
import 'package:treiner/Theme/theme.dart';

class TermsConditions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      home: TermsConditionsPage(),
    );
  }
}

class TermsConditionsPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Terms & Conditions'),
      ),
      drawer: myDrawer(),
      body: Padding(padding: EdgeInsets.all(13.0), child: _terms()),
    );
  }
}

Widget _terms() {
  final List<String> title = <String>[
    'About the Website',
    'Acceptance of the Terms',
    'Registration to use the Services',
    'Your obligations as a Member',
    'Payment',
    'Refund Policy',
    'Copyright and Intellectual Property',
    'Privacy',
    'General Disclaimer',
    'Limitation of liability',
    'Termination of Contract',
    'Indemnity',
    'Dispute Resolution',
    'Venue and Jurisdiction',
    'Governing Law',
    'Independent Legal Advice',
    'Severance',
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
