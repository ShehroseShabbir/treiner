import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../MyAppBar.dart';
import '../theme.dart';
import 'CoachListview.dart';

class CoachDescriptionData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: myTheme, home: CoachDescription());
  }
}
class CoachDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Coach Description'),
      ),
      drawer: myDrawer(),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
    child: Column(

))    );
  }
}

class CoachListData {
  CoachListData({
    this.title,
    this.sub,
  });

  String title;
  String sub;

}
class CoachinCityView extends StatelessWidget{
  List<CoachListData> coachdata=[
    CoachListData(
      title: 'Melbourne',
      sub: '29 Coaches',
    ),
    CoachListData(
      title: 'Sydney',
      sub: '18 coaches',
    ),
    CoachListData(
      title: 'Brisbane',
      sub: '5 coaches',
    ),
    CoachListData(
      title: 'Gold cost',
      sub: '2 coaches',
    ),
    CoachListData(
      title: 'Wollonggong',
      sub: '1 coaches',
    ),
    CoachListData(
      title: 'Launceston',
      sub: '1 coaches',
    ),
    CoachListData(
      title: 'Hamilton',
      sub: '1 coaches',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: coachdata.length,
      itemBuilder: (BuildContext context, int index){
        return Container(
          child: new Card(
            child:
            ListTile(
              title: Text(coachdata[index].title),
              subtitle:  Text(coachdata[index].sub),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CoachViewList()),
                );
              },
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => SizedBox(height: 5),
    );

  }
}