import 'package:flutter/gestures.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:treiner/WelcomePages/ContactUs.dart';
import 'package:treiner/WelcomePages/Privacy.dart';
import 'package:treiner/WelcomePages/Sessions.dart';
import 'package:treiner/WelcomePages/SignUp.dart';
import 'ForgetPassword.dart';
import 'package:form_field_validator/form_field_validator.dart';


class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final drawerHeader = UserAccountsDrawerHeader(
      accountName: Text('User Name'),
      accountEmail: Text('user.name@email.com'),
      currentAccountPicture: CircleAvatar(
        child: FlutterLogo(size: 42.0),
        backgroundColor: Colors.white,
      ),
    );
    final drawerItems = ListView(
      children: <Widget>[
        drawerHeader,
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
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ContactUs())),
        ),
        ListTile(
          title: Text('Log Out'),
          onTap: () {},
        ),
      ],
    );

    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Sign In'),
        ),
        drawer: drawerItems,
        body: Column(
          children: <Widget>[
            Text('Welcome to Treiner'),
            LoginForm(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  height: 2,
                  width: 100,
                  color: Colors.black,
                ),
                Text('or Sign in with'),
                Container(
                  height: 2,
                  width: 100,
                  color: Colors.black,
                ),
              ],
            ),
            FacebookSignInButton(
              onPressed: (){},
            ),
            GoogleSignInButton(
              onPressed: (){},
              darkMode: true,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Don\'t have a Treiner account?  ',
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                      text: 'Register Now!',
                      style: TextStyle(color: Colors.green),
                      recognizer: TapGestureRecognizer() ..onTap = (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
                      }
                  ),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}
class LoginForm extends StatefulWidget{
  LoginForm({Key key}):super(key:key);
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm>{
  final _formKey = GlobalKey<FormState>();
  TextEditingController _ctrlEmail = TextEditingController();
  TextEditingController _ctrlPassword = TextEditingController();

  bool _obscureText = true;

  Widget build(BuildContext context){
    void _toggle() { //password eye icon
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
                hintText: 'Enter your email address.',
                labelText: 'Email',
              ),
              validator: MultiValidator([RequiredValidator(errorText: 'Please enter your email.'),
                EmailValidator(errorText: 'Please enter valid email address.')]
              )
          ),
          TextFormField(
            controller: _ctrlPassword,
            obscureText: _obscureText,
            decoration: InputDecoration(
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
              )
            ),
            validator: RequiredValidator(errorText: 'Password can\'t be empty.'),
          ),
          Align(
            alignment:Alignment.centerRight,
            child: RichText(
              text: TextSpan(
                  text: 'Forget your password?',
                  style: TextStyle(color: Colors.green),
                  recognizer: TapGestureRecognizer() ..onTap = (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ForgetPassword()));
                  }
              ),
            ),
          ),
          RaisedButton(
            onPressed:(){
              _formKey.currentState.validate();
              },
            child: Text('Sign In'),
          ),
        ],
      ),
    );
  }
}

