import 'package:flutter/material.dart';

class Sessions extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sessions'),
      ),
      body: Column(
        children: <Widget>[
          Text('Upcoming Sessions'),
          _sessionTable('2020/1/1', '1 on 1','Ying'),
          Text('Completed Sessions'),
          _sessionTable('2020/5/1','dldeke','Andy'),
        ],
      ),
    );
  }
}
class Session{
  const Session(this.title, this.date, this.type);
  final String title;
  final String date;
  final String type;
}  const List<Session> sessions = const <Session>[
  Session('1', '2020/1/1','1 on 1'),
  Session('2', '2019/1/1','Group')
];


Widget _sessionTable(String field1, String field2, String field3){
  return Table(
    children: [
      TableRow(
          children: [
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
          ]
      ),
      TableRow(
          children: [
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
                onPressed: (){},
                child: Text('Edit'),
              ),
            )
          ]
      )
    ],
  );
}