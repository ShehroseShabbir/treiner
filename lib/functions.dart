import 'package:flutter/material.dart';
import 'package:treiner/Coach/coach_jobdesc.dart';

// Job Listing Class
class JobListing extends StatelessWidget {
  const JobListing(
      {Key key, this.title, this.subtitle, this.trailing, this.route})
      : super(key: key);

  final String title;
  final String subtitle;
  final String trailing;
  final String route;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: InkWell(
          onTap: () => Navigator.pushNamed(context, route),
          child: ListTile(
            title: Text(title),
            subtitle: Text(subtitle),
            trailing: Text(trailing),
            leading: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}

// MyMenu Class
class MyMenu extends StatelessWidget {
  MyMenu({this.title, this.icon, this.shape, this.route});

  final String title;
  final IconData icon;
  final MaterialColor shape;
  final String route;

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Card(
        margin: EdgeInsets.all(9.0),
        child: InkWell(
          onTap: () => Navigator.pushNamed(context, route),
          splashColor: Color(0xFF006944),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  icon,
                  size: 50.0,
                  color: Color(0xFF006944),
                ),
                Text(title, style: new TextStyle(fontSize: 24.0))
              ],
            ),
          ),
        ));
  }
}

class MenuButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final String route;

  MenuButton({
    Key key,
    this.title,
    this.icon,
    this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(13.0),
      child: RaisedButton(
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 40,
                ),
              ],
            ),
            Column(children: [Text(title)]),
          ],
        ),
        shape: Border(),
      ),
    );
  }
}

String setAppBarTitle(String title) {
  return title;
}

//Browse Jobs Card
class JobCard extends StatelessWidget {
  JobCard({this.title, this.icon, this.price, this.shape, this.postedby});

  final String postedby;
  final String title;
  final IconData icon;
  final String price;
  final MaterialColor shape;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: InkWell(
          splashColor: Colors.green[900],
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => JobDescriptionPage(
                          title: title,
                          postedby: postedby,
                          date: "9:00am Sun, 23rd August 2020",
                          price: price,
                        )));
          },
          child: Container(
            margin: EdgeInsets.only(left: 10.0),
            width: 377,
            height: 200,
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 70.0,
                      backgroundColor: Colors.green[900],
                      child: CircleAvatar(
                        radius: 65,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage('assets/profile-none.png'),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(title,
                                style: new TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.green[900],
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(price,
                                style: new TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.green[900],
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        Divider(),
                        SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.location_on, size: 20),
                                Text("Melbourne Australia",
                                    style: new TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.green[900],
                                    )),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.calendar_today, size: 20),
                                Text("Sun, 16th August 2020",
                                    style: new TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.green[900],
                                    )),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CoachCard extends StatelessWidget {
  CoachCard({this.name, this.location, this.displayurl});

  final String name;
  final String location;
  final String displayurl;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        child: InkWell(
          splashColor: Colors.green[900],
          onTap: () {
            /*
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        BookCoach(name: this.name, location: this.location)));*/
          },
          child: Container(
            margin: EdgeInsets.only(left: 10.0),
            width: 377,
            height: 200,
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 70.0,
                      backgroundColor: Colors.green[900],
                      child: CircleAvatar(
                        radius: 65,
                        backgroundColor: Colors.white,
                        backgroundImage: AssetImage("${this.displayurl}"),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(this.name,
                                style: new TextStyle(
                                    fontSize: 18.0,
                                    color: Colors.green[900],
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                        SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.location_on, size: 20),
                                Text("Melbourne Australia",
                                    style: new TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.green[900],
                                    )),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.calendar_today, size: 20),
                                Text("5 Star Rating",
                                    style: new TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.green[900],
                                    )),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
