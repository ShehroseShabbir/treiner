import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jiffy/jiffy.dart';
import 'package:treiner/Theme/appBar.dart';
import 'file:///D:/AndroidStudioProjects/treiner/lib/InfoPages/TermsConditions.dart';
import 'package:treiner/Theme/theme.dart';

class SignUpCoach extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      home: SignUpCoachPage(),
    );
  }
}

class SignUpCoachPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign Up as a Coach')),
      drawer: myDrawer(),
      body: Padding(padding: EdgeInsets.all(13.0), child: SignUpCoachForm()),
    );
  }
}

enum Gender { male, female }

class SignUpCoachForm extends StatefulWidget {
  SignUpCoachForm({Key key}) : super(key: key);

  _SignUpCoachFormState createState() => _SignUpCoachFormState();
}

class _SignUpCoachFormState extends State<SignUpCoachForm> {
  final _formKey = GlobalKey<FormState>();
  bool _isSubscribed = true; //Sign up news letter
  bool _isAgreed = false; //Agree to terms and conditions
  DateTime _selectedDOB = DateTime(1900);
  bool _obscureText = true;
  File _profilePicture;
  final _picPicker = ImagePicker();
  Gender _gender = Gender.male;

  Future<Null> getImage() async {
    final PickedFile pickedFile =
        await _picPicker.getImage(source: ImageSource.gallery);
    setState(() => this._profilePicture = File(pickedFile.path));
  }

  TextEditingController _ctrlDOB = TextEditingController();
  TextEditingController _ctrlPassword = TextEditingController();
  TextEditingController _ctrlCoachingYear = TextEditingController();

  List<String> _country = [
    'Australia',
    'New Zealand',
    'United States',
    'Singapore',
    'Hong Kong',
    'Canada'
  ];
  String _selectedCountry;

  List<String> _businessType = ['Sole Proprietor', 'Other'];
  String _selectedBusinessType;

  List<String> _workingLiecence = [
    'New South Wales Working With Children Check',
    'Victorian Working With Children Check',
    'Queensland Working With Children Check',
    'Western Australia Working With Children Check',
    'South Australia Working With Children Check',
    'Tasmanian Registration to Work With Vulnerable People',
    'Australian Capital Territory Working with Vulnerable People Check',
    'Northern Territory Working With Children Check / Ochre Card',
    'FIFA Verification',
    'Victorian Police Check',
    'Victorian Teacher Number',
    'New Zealand Teaching Number',
    'New Zealand Children\'s Worker Safety Check'
  ];
  String _selectedworkingLiecence;

  List<String> _ageGroup = [
    '2-4 years',
    '4-6 years',
    '6-9 years',
    '9-12 years',
    '12-15 years',
    '16-20 years',
    '20-30 years',
    '30-40 years',
    '40-50 years',
    '50-60 years',
    '60-70 years',
    '70+ years'
  ];
  String _selectedageGroup;

  List<String> _qulification = [
    'None',
    'Grassroots',
    'Community',
    'C Licence',
    'B Licence',
    'A Licence',
    'Pro Licence',
  ];
  String _selectedqulification;

  List<String> _sessionType = [
    'Virtual Training',
    '1 on 1',
    'Small Group',
    'Team Training',
    'Fustsal',
    'Goalkeeper Training',
    'Video Analysis'
  ];
  String _selectedSessionType;

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

  @override
  void initState() {
    super.initState();
    _ctrlCoachingYear.text = "0";
  }

  @override
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
              controller: _ctrlDOB,
              onTap: () {
                // Below line stops keyboard from appearing
                FocusScope.of(context).requestFocus(new FocusNode());
              },
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
                  RequiredValidator(errorText: 'Please select your DOB.'),
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
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.home),
                hintText: 'Enter the town or suburb where you are based.',
                labelText: 'Town or Suburb',
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.location_on),
                ),
              ),
              validator: RequiredValidator(
                  errorText: 'Please enter your town/suburb.'),
            ),
            SizedBox(height: 5),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone),
                hintText: 'Enter your phone number.',
                labelText: 'Phone Number',
              ),
              validator: RequiredValidator(
                  errorText: 'Please enter your phone number.'),
              inputFormatters: <TextInputFormatter>[
                WhitelistingTextInputFormatter.digitsOnly
              ],
            ),
            SizedBox(height: 5),
            TextFormField(
                keyboardType: TextInputType.emailAddress,
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
            TextFormField(
              onTap: () {
                // Below line stops keyboard from appearing
                FocusScope.of(context).requestFocus(new FocusNode());
              },
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_pin),
                  hintText: 'Click to select a profile picture.',
                  labelText: 'Profile Picture',
                  suffixIcon: IconButton(
                    onPressed: () async => await getImage(),
                    icon: Icon(Icons.folder),
                  )),
            ),
            Text(
                "Upload your profile picture here (Must be under 8 MB, preferably square with a white background. "
                "For best results ensure that you are the only person in the photo so as not to confuse potential "
                "players.)",
                style: Theme.of(context).textTheme.caption),
            SizedBox(height: 5),
            Row(
              children: <Widget>[
                Expanded(flex: 1, child: Icon(Icons.business)),
                Expanded(
                    flex: 2,
                    child: Text('Business Type',
                        style: Theme.of(context).textTheme.subtitle1)),
                Expanded(
                  flex: 4,
                  child: DropdownButton(
                    hint: Text('Select business type'),
                    value: _selectedBusinessType,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedBusinessType = newValue;
                      });
                    },
                    items: _businessType.map((businessType) {
                      return DropdownMenuItem(
                        child: new Text(businessType),
                        value: businessType,
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: <Widget>[
                Expanded(flex: 1, child: Icon(Icons.child_care)),
                Expanded(
                  flex: 6,
                  child: Text('Working with Children Licence Type',
                      style: Theme.of(context).textTheme.subtitle1),
                ),
              ],
            ),
            SizedBox(height: 5),
            DropdownButton(
              isExpanded: true,
              icon: Icon(Icons.arrow_drop_down),
              hint: Text('Select Working With Children Licence Type',
                  overflow: TextOverflow.ellipsis),
              value: _selectedworkingLiecence,
              onChanged: (newValue) {
                setState(() {
                  _selectedworkingLiecence = newValue;
                });
              },
              items: _workingLiecence.map((workingLiecence) {
                return DropdownMenuItem(
                  child: new Text(workingLiecence),
                  value: workingLiecence,
                );
              }).toList(),
            ),
            SizedBox(height: 5),
            TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.assignment),
                  hintText: 'Enter your working with children licence number.',
                  labelText: 'Licence Number',
                ),
                validator: RequiredValidator(
                    errorText: 'Please enter licence number.')),
            SizedBox(height: 5),
            TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.assignment),
                  hintText:
                      'Enter your business registration number (ABN or Equivalent).',
                  labelText: 'Business Number',
                ),
                validator: RequiredValidator(
                    errorText: 'Please enter business number.')),
            SizedBox(height: 5),
            TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.accessibility),
                  hintText:
                      'Enter the current club or academy that you are at.',
                  labelText: 'Current Club',
                ),
                validator: RequiredValidator(
                    errorText: 'Please enter club you are at.')),
            SizedBox(height: 5),
            Row(
              children: <Widget>[
                Expanded(flex: 1, child: Icon(Icons.filter_vintage)),
                Expanded(
                    flex: 2,
                    child: Text('Age Groups Coached',
                        style: Theme.of(context).textTheme.subtitle1)),
                Expanded(
                  flex: 4,
                  child: DropdownButton(
                    isExpanded: true,
                    hint: Text('Select the age groups you have coached.',
                        overflow: TextOverflow.ellipsis),
                    value: _selectedageGroup,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedageGroup = newValue;
                      });
                    },
                    items: _ageGroup.map((ageGroup) {
                      return DropdownMenuItem(
                        child: new Text(ageGroup),
                        value: ageGroup,
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: <Widget>[
                Expanded(flex: 1, child: Icon(Icons.assignment)),
                Expanded(
                    flex: 2,
                    child: Text('Highest Coaching Qualification',
                        style: Theme.of(context).textTheme.subtitle1)),
                Expanded(
                  flex: 4,
                  child: DropdownButton(
                    isExpanded: true,
                    hint: Text('Select highest coaching qualification.',
                        overflow: TextOverflow.ellipsis),
                    value: _selectedqulification,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedqulification = newValue;
                      });
                    },
                    items: _qulification.map((qulification) {
                      return DropdownMenuItem(
                        child: new Text(qulification),
                        value: qulification,
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            TextFormField(
              onTap: () {
                // Below line stops keyboard from appearing
                FocusScope.of(context).requestFocus(new FocusNode());
              },
              controller: _ctrlCoachingYear,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.filter_vintage),
                  labelText: 'Total Years Coaching',
                  suffixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.arrow_drop_up),
                        onPressed: () {
                          int year = int.parse(_ctrlCoachingYear.text);
                          if (year >= 0 && year <= 60) {
                            year++;
                          }
                          _ctrlCoachingYear.text = year.toString();
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_drop_down),
                        onPressed: () {
                          int year = int.parse(_ctrlCoachingYear.text);
                          if (year > 0 && year <= 60) {
                            year--;
                          }
                          _ctrlCoachingYear.text = year.toString();
                        },
                      ),
                    ],
                  )),
              inputFormatters: <TextInputFormatter>[
                WhitelistingTextInputFormatter.digitsOnly
              ],
            ),
            SizedBox(height: 5),
            Row(
              children: <Widget>[
                Expanded(flex: 1, child: Icon(Icons.assignment)),
                Expanded(
                    flex: 2,
                    child: Text('Session Type',
                        style: Theme.of(context).textTheme.subtitle1)),
                Expanded(
                    flex: 4,
                    child: DropdownButton(
                      isExpanded: true,
                      hint: Text('Select session type.',
                          overflow: TextOverflow.ellipsis),
                      value: _selectedSessionType,
                      onChanged: (newValue) {
                        setState(() {
                          _selectedSessionType = newValue;
                        });
                      },
                      items: _sessionType.map((sessionType) {
                        return DropdownMenuItem(
                          child: new Text(sessionType),
                          value: sessionType,
                        );
                      }).toList(),
                    ))
              ],
            ),
            SizedBox(height: 5),
            TextFormField(
              maxLength: 1000,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.assignment),
                hintText:
                    'Summarise your approach to coaching and what motivates you as a coach.',
                labelText: 'Coaching Summary',
              ),
              validator:
                  RequiredValidator(errorText: 'Please fill up this field.'),
              minLines: 5,
              maxLines: 10,
            ),
            SizedBox(height: 5),
            TextFormField(
              maxLength: 1000,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.assignment),
                hintText:
                    'Tell us a bit about the philosophy behind your coaching style and what you hope to teach your athletes.',
                labelText: 'Coaching Philosophy',
              ),
              validator:
                  RequiredValidator(errorText: 'Please fill up this field.'),
              minLines: 5,
              maxLines: 10,
            ),
            SizedBox(height: 5),
            TextFormField(
              maxLength: 1000,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.assignment),
                hintText:
                    'Explain your career with soccer, whether it\'s playing soccer or coaching.',
                labelText: 'Career Experience',
              ),
              validator:
                  RequiredValidator(errorText: 'Please fill up this field.'),
              minLines: 5,
              maxLines: 10,
            ),
            SizedBox(height: 5),
            TextFormField(
              maxLength: 1000,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.assignment),
                hintText:
                    'What would an average training session be like with you? What should an athlete expect before '
                    'booking you services?',
                labelText: 'Average Session',
              ),
              validator:
                  RequiredValidator(errorText: 'Please fill up this field.'),
              minLines: 5,
              maxLines: 10,
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
                Container(
                    child: Expanded(
                        child: Text(
                            'Receive notifications when new jobs are posted near you, and also marketing material'))),
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
                      style: TextStyle(color: tGreen),
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
