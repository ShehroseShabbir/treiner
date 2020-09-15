import 'package:flutter/material.dart';
import 'package:treiner/InfoPages/AboutUs.dart';
import 'package:treiner/InfoPages/FAQ.dart';
import 'package:treiner/InfoPages/Privacy.dart';
import 'package:treiner/InfoPages/Sessions.dart';
import 'file:///D:/AndroidStudioProjects/treiner/lib/InfoPages/ContactUs.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:treiner/InfoPages/TermsConditions.dart';
import 'package:treiner/Theme/theme.dart';
import 'package:url_launcher/url_launcher.dart';

Widget myAppBar(String title) {
  return AppBar(
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
  );
}

class myDrawer extends StatelessWidget {
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
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Sessions())),
          ),
          ListTile(
            title: Text('Privacy'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Privacy())),
          ),
          ListTile(
            title: Text('Terms & Conditions'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => TermsConditions())),
          ),
          ListTile(
            title: Text('About Treiner'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => AboutUs())),
          ),
          ListTile(
            title: Text('Contact Us'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => ContactUS())),
          ),
          ListTile(
            title: Text('F&Q'),
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => FAQ())),
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

class SocialBtn {
  const SocialBtn(this.icon, this.url);

  final Icon icon;
  final String url;
}

SocialBtn _facebook = SocialBtn(const Icon(FontAwesome.facebook_square
    , color: Color(0xff006944)), 'https://www.facebook.com/treiner.co');

SocialBtn _linkedin = SocialBtn(const Icon(FontAwesome
    .linkedin_square, color: Color(0xff006944),), 'https://www.linkedin.com/company/treiner');

SocialBtn _twitter = SocialBtn(const Icon(
    FontAwesome.twitter, color: Color(0xff006944)), 'https://twitter.com/treinerco');

SocialBtn _instagram = SocialBtn(const Icon(
    FontAwesome.instagram, color: Color(0xff006944)), 'https://www.instagram.com/treiner.co');

class SocialButton extends StatefulWidget {
  _SocialButtonState createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {

  final List<SocialBtn> social = <SocialBtn>[
    _facebook,
    _linkedin,
    _twitter,
    _instagram
  ];

  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not connect';
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: social.length,
        itemBuilder: (context, index){
          return Container(
            width: 30,
            child: IconButton(
              icon: social[index].icon,
              onPressed: () => _launchURL(social[index].url),
            ),
          );
        });
  }
}

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade200,
      width: MediaQuery.of(context).size.width,
      height: 30,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(flex: 7,child: Text('Copyright © 2020. All Rights Reserved', style: Theme.of(context).textTheme.caption,)),
          Expanded(flex: 4,child: SocialButton()),
        ],
      ),
    );
  }
}