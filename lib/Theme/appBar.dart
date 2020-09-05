import 'package:flutter/material.dart';
import 'package:treiner/InfoPages/Privacy.dart';
import 'package:treiner/InfoPages/Sessions.dart';
import 'file:///D:/AndroidStudioProjects/treiner/lib/InfoPages/ContactUs.dart';

Widget myAppBar(String title) {
  return Scaffold(
    appBar: AppBar(
      centerTitle: true,
      title: Text(title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
    ),
  );
}
class myDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('User Name'),
            accountEmail: Text('user.name@email.com'),
            currentAccountPicture: CircleAvatar(
              child: FlutterLogo(size: 42.0),
              backgroundColor: Colors.white,
            ),
          ),
          ListTile(
            title: Text('Sessions'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Sessions())),
          ),
          ListTile(
            title: Text('Privacy'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Privacy())),
          ),
          ListTile(
            title: Text('Contact Us'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ContactUS())),
          ),
          ListTile(
            title: Text('Log Out'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
