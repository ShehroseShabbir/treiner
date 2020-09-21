import 'package:flutter/material.dart';
import 'package:treiner/Coach/coach_dashbaord.dart';

class LandingPage extends StatefulWidget{
  @override
  _LandingPage createState() => _LandingPage();
}

enum FormType { login, register }

class _LandingPage extends State<LandingPage>{

  final formKey = new GlobalKey<FormState>(); // FormKey for validation and saving data on StateChange

  // ignore: unused_field
  String _username; // Student ID
  // ignore: unused_field
  String _password; // Password
  FormType _formType = FormType.login;
  // Password Eye Button
  // ignore: unused_field
  Color _eyeButtonColor = Colors.grey;
  bool _isObscured = true;
// Validation Entered Credentials.

  bool validateAndSave() {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  void moveToRegister() {
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.register;
    });
  }
  void moveToLogin(){
    formKey.currentState.reset();
    setState((){
      _formType = FormType.login;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFF006944),
      body: new Stack(
        fit: StackFit.expand,
        children: [
          new Form(
            key: formKey,
            child: new Theme(
              data: new ThemeData(
                brightness: Brightness.dark,
                primarySwatch: Colors.green,
                inputDecorationTheme: new InputDecorationTheme(
                labelStyle: new TextStyle(color: Colors.black, fontSize: 20.0))), 
                child: Container(
                  padding: const EdgeInsets.all(50.0),
                    child: new Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: 
                      buildInputs() + buildSubmitButton()
                    
                    )
                ),
              ),
            )
        ],
      ),
      /* Main Page with Background Color and Logo Hidden in this code
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0xFF006944),
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Image(
                image: new AssetImage("assets/Logo.jpg"),
                width: 500.0,
                height: 500.0,
              )
            ],
          )
        ],
      ),
    */ 
    );
    // ignore: dead_code
    throw UnimplementedError();
  }

List<Widget> buildInputs() {
    
    return [
      new TextFormField(
        validator: (value) =>
            value.isEmpty ? 'Email ID cannot be empty.' : null,
        onSaved: (value) => _username = value,
        decoration: new InputDecoration(
            labelText: 'Enter Email Address',
            suffixIcon: IconButton(
              onPressed: null,
              icon: Icon(Icons.mail),
            )),
        keyboardType: TextInputType.text,
      ),
      new TextFormField(
        onSaved: (value) => _password = value,
        validator: (value) => value.isEmpty ? 'Password cannot be left blank.' : null,
        decoration: new InputDecoration(
            labelText: 'Enter Password',
            suffixIcon: IconButton(
              onPressed: () {
                if (_isObscured) {
                  setState(() {
                    _isObscured = false;
                    _eyeButtonColor = Theme.of(context).primaryColor;
                  });
                } else {
                  setState(() {
                    _isObscured = true;
                    _eyeButtonColor = Colors.grey;
                  });
                }
              },
              icon: Icon(Icons.remove_red_eye),
            )),
        keyboardType: TextInputType.text,
        obscureText: _isObscured,
      ),
    ];
  }

  List<Widget> buildSubmitButton() {
    if(_formType == FormType.login)
      {
        return [
          
          Padding(
            padding: const EdgeInsets.only(top: 1.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: FlatButton(
                  onPressed: moveToRegister,
                  child: Text(
                    "Dont have an account?",
                    style: TextStyle(color: Colors.green),
                  )),
            ),
          ),
          SizedBox(
            height: 80.0,
          ),
          Align(
            child: SizedBox(
              height: 40.0,
              width: 250.0,
              child: FlatButton(
                key: Key('signIn'),
                onPressed: () => {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => CoachDashboard()
                  ))
                },
                splashColor: Colors.green[500],
                color: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                child:
                Text('Login', style: Theme.of(context).primaryTextTheme.button),
              ),
            ),
          )
        ];
      }
    else
      {
        return [
          SizedBox(
            height: 40.0,
          ),
          Align(
            child: SizedBox(
              height: 40.0,
              width: 250.0,
              child: MaterialButton(
                onPressed: null,
                splashColor: Colors.green[500],
                color: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                child:
                Text('Register Now', style: Theme
                    .of(context)
                    .primaryTextTheme
                    .button),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Align(
            child: SizedBox(
              height: 40.0,
              width: 250.0,
              child: MaterialButton(
                onPressed: moveToLogin,
                splashColor: Colors.green[500],
                color: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                child:
                Text('Back To Login', style: Theme.of(context).primaryTextTheme.button),
              ),
            ),
          )
        ];
      }
  }

}

