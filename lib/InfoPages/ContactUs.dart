import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:treiner/Theme/appBar.dart';
import 'package:treiner/Theme/theme.dart';

class ContactUS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      home: ContactUsPage(),
    );
  }
}

class ContactUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Contact Us'),
      ),
      drawer: myDrawer(),
      body: Padding(
        padding: EdgeInsets.all(13.0),
        child: Column(
          children: <Widget>[
            Text(
              'We\'re here to assist you. Send us a message with the form below!',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            SizedBox(height: 5),
            ContactUsForm(),
          ],
        ),
      ),
    );
  }
}

class ContactUsForm extends StatefulWidget {
  ContactUsForm({Key key}) : super(key: key);

  _ContactUsFormState createState() => _ContactUsFormState();
}

class _ContactUsFormState extends State<ContactUsForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: 'Enter your first name.',
                labelText: 'First Name',
              ),
              validator: MultiValidator([
                RequiredValidator(errorText: 'Please enter your first name.'),
                PatternValidator(("[a-zA-Z]"), errorText: 'Text only')
              ])),
          SizedBox(height: 5),
          TextFormField(
              textCapitalization: TextCapitalization.words,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: 'Enter your last name.',
                labelText: 'Last Name',
              ),
              validator: MultiValidator([
                RequiredValidator(errorText: 'Please enter your first name.'),
                PatternValidator(("[a-zA-Z]"), errorText: 'Text only')
              ])),
          SizedBox(height: 5),
          TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: 'Enter your email.',
                labelText: 'Email Address',
              ),
              validator: MultiValidator([
                RequiredValidator(errorText: 'Please enter your email.'),
                EmailValidator(errorText: 'Please enter valid email address.')
              ])),
          SizedBox(height: 5),
          TextFormField(
            maxLength: 1000,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.assistant),
              hintText:
              'How can we help you?',
              labelText: 'How can we help you?',
            ),
            validator:
            RequiredValidator(errorText: 'Please fill up this field.'),
            minLines: 5,
            maxLines: 10,
          ),
          SizedBox(height: 10),
          RaisedButton(
            onPressed: () {
              _formKey.currentState.validate();
            },
            child: Text('Send'),
          )
        ],
      ),
    );
  }
}
