import 'package:flutter/material.dart';
import 'package:treiner/Class/sessions.dart';

class Sessions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sessions'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          children: <Widget>[
            ContentTitle(title: 'Upcoming Sessions'),
            _sessionTable('2020/1/1', '1 on 1', 'Ying'),
            ContentTitle(title: 'Completed Sessions'),
            _sessionTable('2020/5/1', 'dldeke', 'Andy'),
          ],
        ),
      ),
    );
  }
}

class ContentTitle extends StatelessWidget{
  const ContentTitle({Key key, @required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(title,
              style: Theme.of(context).textTheme.headline3),
        ),
        SizedBox(height: 5),
        Divider(thickness: 3),
        SizedBox(height: 20),
      ],
    );
  }
}
class SessionsInfo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}
class Session {
  const Session(this.title, this.date, this.type);

  final String title;
  final String date;
  final String type;
}

const List<Session> sessions = const <Session>[
  Session('1', '2020/1/1', '1 on 1'),
  Session('2', '2019/1/1', 'Group')
];

Widget _sessionTable(String field1, String field2, String field3) {
  return Table(
    children: [
      TableRow(children: [
        TableCell(
          child: Text('Date'),
        ),
        TableCell(
          child: Text('Type'),
        ),
        TableCell(
          child: Text('Member'),
        ),
        TableCell(
          child: Text('Setting'),
        ),
      ]),
      TableRow(children: [
        TableCell(
          child: Text(field1),
        ),
        TableCell(
          child: Text(field2),
        ),
        TableCell(
          child: Text(field3),
        ),
        TableCell(
          child: RaisedButton(
            onPressed: () {},
            child: Text('Edit'),
          ),
        )
      ])
    ],
  );
}
