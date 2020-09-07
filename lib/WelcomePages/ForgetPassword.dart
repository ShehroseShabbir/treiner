import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:treiner/Theme/appBar.dart';
import 'package:treiner/Theme/theme.dart';
import 'package:treiner/WelcomePages/SignUp.dart';
import '../InfoPages/ContactUs.dart';

class ForgetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      home: ForgetPasswordPage(),
    );
  }
}

class ForgetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Reset Password'),
      ),
      drawer: myDrawer(),
      body: Padding(
        padding: EdgeInsets.all(13.0),
        child: Column(
          children: <Widget>[
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'We recently updated our site and unfortunately had to delete all our data. If you created your account prior to April 2020, you will have to ',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  TextSpan(
                      text: 'create a new account',
                      style: TextStyle(color: tGreen),
                      recognizer: TapGestureRecognizer() ..onTap = (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                      }
                  ),
                  TextSpan(
                    text: '. For more information please ',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  TextSpan(
                      text: 'contact us',
                      style: TextStyle(color: tGreen),
                      recognizer: TapGestureRecognizer() ..onTap = () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ContactUS()));
                      }
                  ),
                  TextSpan(
                    text: '.',
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            EmailForm(),
          ],
        ),
      ),
    );
  }
}

class EmailForm extends StatefulWidget {
  EmailForm({Key key}) : super(key: key);

  _EmailFormState createState() => _EmailFormState();
}

class _EmailFormState extends State<EmailForm> {
  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                  hintText: 'Enter your email address.', labelText: 'Email'),
              validator: MultiValidator([
                RequiredValidator(errorText: 'Please enter your email.'),
                EmailValidator(errorText: 'Please enter valid email address.')
              ])),
          SizedBox(height: 5),
          RaisedButton(
            onPressed: () {
              _formKey.currentState.validate();
            },
            child: Text('Send Password Reset Link'),
          )
        ],
      ),
    );
  }
}
