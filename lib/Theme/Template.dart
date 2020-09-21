import 'package:flutter/material.dart';
import 'package:treiner/Theme/theme.dart';
import 'package:treiner/Theme/appBar.dart';

class Template extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      home: TemplatePage(),
    );
  }
}

class TemplatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Template'),
        ),
        drawer: myDrawer(),
        body: Padding(
          padding: EdgeInsets.all(13.0),
          child: SingleChildScrollView(
            child: Column(children: <Widget>[
              Text('This is a template page',
                style: TextStyle(color: tGreen),
              ),
              SizedBox(height: 5),
              Text('This is headline1',
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(height: 5),
              Text('This is headline2',
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(height: 5),
              Text('This is headline3',
                style: Theme.of(context).textTheme.headline3,
              ),
              SizedBox(height: 5),
              Text('This is headline4',
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(height: 5),
              Text('This is subtitle2',
                style: Theme.of(context).textTheme.subtitle2,
              ),
              SizedBox(height: 5),
              Text('This is bodyText1',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              SizedBox(height: 5),
              Text('This is Plain text'),
              SizedBox(height: 5),
              Text('This is caption',
                style: Theme.of(context).textTheme.caption,
              ),
            ]),
          ),
        )
    );
  }
}