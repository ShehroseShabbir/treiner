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
      body: Padding(padding: EdgeInsets.all(13.0), child: TermList()),
    );
  }
}

class Term {
  Term({this.title, this.desc});

  String title;
  String desc;
}

class TermList extends StatelessWidget {
  final List<Term> terms = [
    Term(title: 'About the Website', desc: '...'),
    Term(title: 'Acceptance of the Terms', desc: '...'),
    Term(title: 'Registration to use the Services', desc: '...'),
    Term(title: 'Your obligations as a Member', desc: '...'),
    Term(title: 'Payment', desc: '...'),
    Term(title: 'Refund Policy', desc: '...'),
    Term(title: 'Copyright and Intellectual Property', desc: '...'),
    Term(title: 'Privacy', desc: '...'),
    Term(title: 'General Disclaimer', desc: '...'),
    Term(title: 'Limitation of liability', desc: '...'),
    Term(title: 'Termination of Contract', desc: '...'),
    Term(title: 'Indemnity', desc: '...'),
    Term(title: 'Dispute Resolution', desc: '...'),
    Term(title: 'Venue and Jurisdiction', desc: '...'),
    Term(title: 'Governing Law', desc: '...'),
    Term(title: 'Independent Legal Advice', desc: '...'),
    Term(title: 'Severance', desc: '...'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: terms.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '${index + 1}. ${terms[index].title}',
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text('${terms[index].desc}', textAlign: TextAlign.left),
          ],
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          SizedBox(height: 10),
    );
  }
}
