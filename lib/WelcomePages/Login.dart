import 'package:flutter/gestures.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:treiner/WelcomePages/SignUp.dart';
import 'ForgetPassword.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:treiner/Theme/theme.dart';
import 'package:treiner/Theme/appBar.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(title: Text('Sign In'),),
        drawer: myDrawer(),
        body: Padding(
          padding: EdgeInsets.all(13.0),
          child: Column(children: <Widget>[
            Text(
              'Welcome to Treiner',
              style: Theme.of(context).textTheme.headline1.merge(TextStyle(color:tGreen)),
            ),
            SizedBox(height: 5.0),
            LoginForm(),
            SizedBox(height: 5.0),
            Row(
              children: <Widget>[
                Expanded(
                  flex:1,
                  child: Divider(thickness: 1),
                ),
                Expanded(
                  flex:1,
                  child: Align(alignment: Alignment.center,
                    child: Text('or Sign in with',
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ),
                ),
                Expanded(
                  flex:1,
                  child: Divider(thickness: 1),
                ),
              ],
            ),
            SizedBox(height: 5.0),
            FacebookSignInButton(
              onPressed: () {},
            ),
            SizedBox(height: 5.0),
            GoogleSignInButton(
              onPressed: () {},
              darkMode: true,
            ),
            SizedBox(height: 5.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Don\'t have a Treiner account?  '),
                RichText(
                    text: TextSpan(
                        text: 'Register Now!',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            .merge(TextStyle(color: tGreen,fontWeight: FontWeight.bold)),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()));
                          }))
              ],
            ),
          ]),
        ));
  }
}

class LoginForm extends StatefulWidget {
  LoginForm({Key key}) : super(key: key);

  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _ctrlEmail = TextEditingController();
  TextEditingController _ctrlPassword = TextEditingController();

  bool _obscureText = true;

  Widget build(BuildContext context) {
    void _toggle() {
      //password eye icon
      setState(() {
        _obscureText = !_obscureText;
        print(_obscureText);
      });
    }

    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
              controller: _ctrlEmail,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                hintText: 'Enter your email address.',
                labelText: 'Email',
              ),
              validator: MultiValidator([
                RequiredValidator(errorText: 'Please enter your email.'),
                EmailValidator(errorText: 'Please enter valid email address.')
              ])),
          SizedBox(height: 5.0),
          TextFormField(
            controller: _ctrlPassword,
            obscureText: _obscureText,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                hintText: 'Enter password.',
                labelText: 'Password',
                suffixIcon: IconButton(
                  onPressed: _toggle,
                  icon: _obscureText
                      ? Icon(
                          Icons.remove_red_eye,
                          color: Colors.grey.shade700,
                        )
                      : Icon(
                          Icons.remove_red_eye,
                          color: Color(0xFF006944),
                        ),
                )),
            validator:
                RequiredValidator(errorText: 'Password can\'t be empty.'),
          ),
          SizedBox(height: 5.0),
          Align(
            alignment: Alignment.centerRight,
            child: RichText(
              text: TextSpan(
                  text: 'Forget your password?',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .merge(TextStyle(color: tGreen,fontWeight: FontWeight.bold)),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgetPassword()));
                    }),
            ),
          ),
          SizedBox(height: 5.0),
          RaisedButton(
            onPressed: () {
              _formKey.currentState.validate();
            },
            child: Text('Sign In'),
          ),
        ],
      ),
    );
  }
}
