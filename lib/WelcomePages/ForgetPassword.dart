import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:treiner/WelcomePages/SignUp.dart';
import 'ContactUs.dart';

class ForgetPassword extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Reset Password'),
      ),
      body: Column(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'We recently updated our site and unfortunately had to delete all our data. If you created your account prior to April 2020, you will have to ',
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                    text: 'create a new account',
                    style: TextStyle(color: Colors.green),
                    recognizer: TapGestureRecognizer() ..onTap = (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                    }
                ),
                TextSpan(
                  text: '. For more information please ',
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                    text: 'contact us',
                    style: TextStyle(color: Colors.green),
                    recognizer: TapGestureRecognizer() ..onTap = () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ContactUs()));
                    }
                ),
                TextSpan(
                  text: '.',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
          EmailForm(),
        ],
      ),
    );
  }
}
class EmailForm extends StatefulWidget{
  EmailForm({Key key}):super(key:key);
  _EmailFormState createState() => _EmailFormState();
}

class _EmailFormState extends State<EmailForm>{
  final _formKey = GlobalKey<FormState>();
  TextEditingController _ctrlEmail = TextEditingController();
  Widget build(BuildContext context){
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
              controller: _ctrlEmail,
              decoration: InputDecoration(
                hintText: 'Enter your email address.',
                labelText: 'Email'
              ),
              validator: MultiValidator([RequiredValidator(errorText: 'Please enter your email.'),
                EmailValidator(errorText: 'Please enter valid email address.')]
              )
          ),
          RaisedButton(
            onPressed: (){
              _formKey.currentState.validate();
            },
            child: Text('Send Password Reset Link'),
          )
        ],
      ),
    );
  }
}