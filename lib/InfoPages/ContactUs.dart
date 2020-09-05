import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:treiner/Theme/appBar.dart';
import 'package:treiner/Theme/theme.dart';

class ContactUS extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      home: ContactUsPage(),
    );
  }
}
class ContactUsPage extends StatelessWidget{
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
        child: Column(children: <Widget>[
          Text('We\'re here to assist you. Send us a message with the form below!',
            style: Theme.of(context).textTheme.subtitle2,
          ),
          SizedBox(height: 5),
          ContactUsForm(),
        ],),
      ),
    );
  }
}
class ContactUsForm extends StatefulWidget{
  ContactUsForm({Key key}):super(key:key);
  _ContactUsFormState createState() => _ContactUsFormState();
}

class _ContactUsFormState extends State<ContactUsForm>{
  final _formKey = GlobalKey<FormState>();

  TextEditingController _ctrlFirstName = TextEditingController();
  TextEditingController _ctrlLastName = TextEditingController();
  TextEditingController _ctrlEmail = TextEditingController();
  TextEditingController _ctrlHelpContext = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
              controller: _ctrlFirstName,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: 'Enter your first name.',
                labelText: 'First Name',
              ),
              validator: RequiredValidator(errorText: 'Please enter your first name.')
          ),
          SizedBox(height: 5),
          TextFormField(
              controller: _ctrlLastName,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: 'Enter your last name.',
                labelText: 'Last Name',
              ),
              validator: RequiredValidator(errorText: 'Please enter your last name.')
          ),
          SizedBox(height: 5),
          TextFormField(
              controller: _ctrlEmail,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                  hintText: 'Enter your email.',
                labelText: 'Email Address',
              ),
              validator: MultiValidator([RequiredValidator(errorText: 'Please enter your email.'),
                EmailValidator(errorText: 'Please enter valid email address.')]
              )
          ),
          SizedBox(height: 5),
          TextFormField(
            controller: _ctrlHelpContext,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.assistant),
              hintText: 'How can we help you?',
              labelText: 'How can we Help you?',
            ),
            validator: RequiredValidator(errorText: 'Can\'t be empty.'),
            minLines: 5,
            maxLines: 100,
          ),
          SizedBox(height: 5),
          RaisedButton(
            onPressed: (){
              _formKey.currentState.validate();
            },
            child: Text('Send'),
          )
        ],
      ),
    );
  }
}