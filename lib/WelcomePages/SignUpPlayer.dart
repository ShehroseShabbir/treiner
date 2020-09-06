import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jiffy/jiffy.dart';
import 'package:treiner/Theme/appBar.dart';
import 'file:///D:/AndroidStudioProjects/treiner/lib/InfoPages/TermsConditions.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:treiner/Theme/theme.dart';

class SignUpPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      home: SignUpPlayerPage(),
    );
  }
}

enum Gender { male, female }

class SignUpPlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign Up as a Player')),
      drawer: myDrawer(),
      body: Padding(padding: EdgeInsets.all(13.0), child: SignUpPlayerForm()),
    );
  }
}

class SignUpPlayerForm extends StatefulWidget {
  SignUpPlayerForm({Key key}) : super(key: key);

  _SignUpPlayerFormState createState() => _SignUpPlayerFormState();
}

class _SignUpPlayerFormState extends State<SignUpPlayerForm> {
  final _formKey = GlobalKey<FormState>();
  bool _isSubscribed = true; //Sign up news letter
  bool _isAgreed = false; //Agree to terms and conditions
  DateTime _selectedDOB = DateTime(1900);
  bool _obscureText = true;
  Gender _gender = Gender.male;

  TextEditingController _ctrlDOB = TextEditingController();
  TextEditingController _ctrlPassword = TextEditingController();

  List<String> _country = [
    'Australia',
    'New Zealand',
    'United States',
    'Singapore',
    'Hong Kong',
    'Canada'
  ];
  String _selectedCountry;

  Future<void> _termsAgree() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alet'),
          content:
              Text('You need to agree with terms and condition to proceed'),
          actions: <Widget>[
            RaisedButton(
              child: Text('Confirm'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _toggle() {
    //password eye icon
    setState(() {
      _obscureText = !_obscureText;
      print(_obscureText);
    });
  }

  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
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
                  hintText: 'Enter your email address.',
                  labelText: 'Email Address',
                ),
                keyboardType: TextInputType.emailAddress,
                validator: MultiValidator([
                  RequiredValidator(errorText: 'Please enter your email.'),
                  EmailValidator(errorText: 'Please enter valid email address.')
                ])),
            SizedBox(height: 5),
            TextFormField(
              readOnly: true,
              controller: _ctrlDOB,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.cake),
                hintText: 'Select your date of birth.',
                labelText: 'Date Of Birth',
                suffixIcon: IconButton(
                  onPressed: () async {
                    DateTime date = DateTime.now();
                    date = await showDatePicker(
                        context: context,
                        initialDate: DateTime(2000),
                        firstDate: DateTime(1900),
                        lastDate: DateTime(DateTime.now().year - 16));
                    _ctrlDOB.text = Jiffy(date).yMMMMd;
                  },
                  icon: Icon(Icons.calendar_today),
                ),
              ),
              validator:
                  RequiredValidator(errorText: 'Please select date of birth.'),
            ),
            SizedBox(height: 5),
            Row(
              children: <Widget>[
                Expanded(flex: 1, child: Icon(Icons.change_history)),
                Expanded(
                    flex: 2,
                    child: Text('Gender',
                        style: Theme.of(context).textTheme.subtitle1)),
                Expanded(
                    flex: 1,
                    child: Radio(
                        value: Gender.male,
                        groupValue: _gender,
                        onChanged: (Gender value) {
                          setState(() => _gender = value);
                        })),
                Expanded(
                    flex: 2,
                    child: Text('Male',
                        style: Theme.of(context).textTheme.subtitle1)),
                Expanded(
                    flex: 1,
                    child: Radio(
                        value: Gender.female,
                        groupValue: _gender,
                        onChanged: (Gender value) {
                          setState(() => _gender = value);
                        })),
                Expanded(
                    flex: 2,
                    child: Text('Female',
                        style: Theme.of(context).textTheme.subtitle1)),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: <Widget>[
                Expanded(flex: 1, child: Icon(Icons.location_city)),
                Expanded(
                    flex: 2,
                    child: Text('Country',
                        style: Theme.of(context).textTheme.subtitle1)),
                Expanded(
                  flex: 6,
                  child: DropdownButton(
                    hint: Text('Select your country'),
                    value: _selectedCountry,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedCountry = newValue;
                      });
                    },
                    items: _country.map((country) {
                      return DropdownMenuItem(
                        child: new Text(country),
                        value: country,
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            TextFormField(
                controller: _ctrlPassword,
                obscureText: _obscureText,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  hintText: 'Enter password.',
                  labelText: 'Password',
                ),
                validator: MultiValidator([
                  RequiredValidator(errorText: 'Password can\'t be empty.'),
                  MinLengthValidator(8, errorText: 'Password needs at 8 words.')
                ])),
            SizedBox(height: 5),
            TextFormField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  hintText: 'Confirm password.',
                  labelText: 'Confirm Password',
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
              validator: (val) {
                if (val.isEmpty) return 'Please confirm your password';
                if (val != _ctrlPassword.text) return 'Password is not match';
                return null;
              },
            ),
            SizedBox(height: 5),
            Row(
              children: <Widget>[
                Checkbox(
                  onChanged: (bool value) {
                    setState(() => this._isSubscribed = value);
                  },
                  value: this._isSubscribed,
                ),
                Text('Sign up to our newsletter'),
              ],
            ),
            Row(
              children: <Widget>[
                Checkbox(
                  onChanged: (bool value) {
                    setState(() => this._isAgreed = value);
                  },
                  value: this._isAgreed,
                ),
                Text('I agree to the '),
                RichText(
                  text: TextSpan(
                      text: 'terms and conditions',
                      style: Theme.of(context).textTheme.bodyText2.merge(
                          TextStyle(
                              color: tGreen, fontWeight: FontWeight.w500)),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TermsConditions()));
                        }),
                )
              ],
            ),
            SizedBox(height: 5),
            RaisedButton(
                child: Text('Register'),
                onPressed: () {
                  // Validate will return true if the form is valid, or false if
                  // the form is invalid.
                  if (_formKey.currentState.validate()) {
                    _isAgreed
                        ? Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TermsConditions()))
                        : _termsAgree();
                  }
                }),
          ],
        ),
      ),
    );
  }
}
