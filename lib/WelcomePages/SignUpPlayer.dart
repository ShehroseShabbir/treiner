import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:treiner/Theme/appBar.dart';
import 'package:treiner/WelcomePages/TermsConditions.dart';
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

  TextEditingController _ctrlFirstName = TextEditingController();
  TextEditingController _ctrlLastName = TextEditingController();
  TextEditingController _ctrlEmail = TextEditingController();
  TextEditingController _ctrlDOB = TextEditingController();
  TextEditingController _ctrlPassword = TextEditingController();
  TextEditingController _ctrlCheckPassword = TextEditingController();

  List<String> _country = [
    'Australia',
    'New Zealand',
    'United States',
    'Singapore',
    'Hong Kong',
    'Canada'
  ];
  String _selectedCountry;

  List<String> _gender = ['Male', 'Female'];
  String _selectedGender;

  void _showDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text('Alert!'),
            content: new Text(
                'You must be over the age of 16 to create a Treiner player account. Otherwise, a parent or gaurdian must create your account.'),
            actions: <Widget>[
              new RaisedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: new Text('Close'),
              )
            ],
          );
        });
  }

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
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TextFormField(
                controller: _ctrlFirstName,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Enter your first name.',
                  labelText: 'First Name',
                ),
                validator: RequiredValidator(
                    errorText: 'Please enter your first name.')),
            SizedBox(height: 5),
            TextFormField(
                controller: _ctrlLastName,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  hintText: 'Enter your last name.',
                  labelText: 'Last Name',
                ),
                validator: RequiredValidator(
                    errorText: 'Please enter your last name.')),
            SizedBox(height: 5),
            TextFormField(
                controller: _ctrlEmail,
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
              controller: _ctrlDOB,
              onTap: () {
                // Below line stops keyboard from appearing
                FocusScope.of(context).requestFocus(new FocusNode());
                _showDialog();
              },
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.cake),
                hintText: 'Select your date of birth.',
                labelText: 'Date Of Birth',
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.calendar_today),
                ),
              ),
              validator:
                  RequiredValidator(errorText: 'Please select your DOB.'),
            ),
            SizedBox(height: 5),
            Row(
              children: <Widget>[
                Icon(Icons.change_history),
                Text('Gender'),
                SizedBox(width: 20),
                DropdownButton(
                  hint: Text('Select your gender'),
                  value: _selectedGender,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedGender = newValue;
                    });
                  },
                  items: _gender.map((gender) {
                    return DropdownMenuItem(
                      child: new Text(gender),
                      value: gender,
                    );
                  }).toList(),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: <Widget>[
                Icon(Icons.location_city),
                Text('Country'),
                SizedBox(width: 20),
                DropdownButton(
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
              validator:
                  RequiredValidator(errorText: 'Password can\'t be empty.'),
            ),
            SizedBox(height: 5),
            TextFormField(
              controller: _ctrlCheckPassword,
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
                      style: DefaultTextStyle.of(context).style,
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
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState.validate()) {
                  // Process data.
                  Scaffold.of(context)
                      .showSnackBar(SnackBar(content: Text('Processing Data')));
                }
              },
              child: Text('Register'),
            )
          ],
        ),
      ),
    );
  }
}
