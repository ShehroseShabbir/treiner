import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';


class ContactUs extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Contact Us'),
      ),
      body: Column(children: <Widget>[
        Text('We’re here to assist you. Send us a message with the form below!'),
        ContactUsForm(),
      ],),

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
                hintText: 'Enter your first name.',
                labelText: 'First Name',
              ),
              validator: RequiredValidator(errorText: 'Please enter your first name.')
          ),
          TextFormField(
              controller: _ctrlLastName,
              decoration: InputDecoration(
                hintText: 'Enter your last name.',
                labelText: 'Last Name',
              ),
              validator: RequiredValidator(errorText: 'Please enter your last name.')
          ),
          TextFormField(
              controller: _ctrlEmail,
              decoration: InputDecoration(
                  hintText: 'Enter your email.',
                labelText: 'Email Address',
              ),
              validator: MultiValidator([RequiredValidator(errorText: 'Please enter your email.'),
                EmailValidator(errorText: 'Please enter valid email address.')]
              )
          ),
          TextFormField(
            controller: _ctrlHelpContext,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              hintText: 'How can we help you?',
              labelText: 'How can we Help you?',
            ),
            validator: RequiredValidator(errorText: 'Can\'t be empty.'),
            minLines: 5,
            maxLines: 100,
          ),
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