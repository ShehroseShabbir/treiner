import 'package:flutter/material.dart';

class TermsConditions extends StatelessWidget{
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Terms & Conditions'),
      ),
      body: _terms(),
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
    '...','...','...','...','...','...','...','...','...','...','...','...','...','...','...','...','...','...','...',
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