import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:treiner/WelcomePages/TermsConditions.dart';

class SignUpCoach extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Register as a Coach'),
        ),
        body: SingleChildScrollView(
          child: SignUpCoachForm(),
        ),
      ),
    );
  }
}

class SignUpCoachForm extends StatefulWidget{
  SignUpCoachForm({Key key}):super(key:key);
  _SignUpCoachFormState createState() => _SignUpCoachFormState();
}

class _SignUpCoachFormState extends State<SignUpCoachForm> {
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
  TextEditingController _ctrlTown = TextEditingController();
  TextEditingController _ctrlPhone = TextEditingController();
  TextEditingController _ctrlBusiniessNumber = TextEditingController();
  TextEditingController _ctrlLicenceNumber = TextEditingController();
  TextEditingController _ctrlClub = TextEditingController();
  TextEditingController _ctrlCoachingSummary = TextEditingController();
  TextEditingController _ctrlCoachingPhilosophy = TextEditingController();
  TextEditingController _ctrlCareerExperience = TextEditingController();
  TextEditingController _ctrlAverageSession = TextEditingController();

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

  List<String> _yearsCoaching = ['0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39','40','41','42','43','44','45','46','47','48','49','50','51','52','53','54','55','56','57','58','59','60'];
  String _selectedYears;

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

  @override
  Widget build(BuildContext context) {
    void _toggle() { //password eye icon
      setState(() {
        _obscureText = !_obscureText;
        print(_obscureText);
      });
    }
    Future _selectDOB() async {
      final DateTime picked = await showDatePicker(
          context: context,
          initialDate: new DateTime.now(),
          firstDate: new DateTime(1900),
          lastDate: new DateTime.now()
      );
      if (picked != null)
        setState(() {
          _selectedDOB = picked;
        });
    };
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
            controller: _ctrlDOB,
            onTap: (){
              // Below line stops keyboard from appearing
              FocusScope.of(context).requestFocus(new FocusNode());
            },
            decoration: InputDecoration(
              hintText: 'Select your date of birth.',
              labelText: 'Date Of Birth',
              suffixIcon: IconButton(
                onPressed: () {
                  _selectDOB();
                  _ctrlDOB.text = _selectedDOB.toString();
                },
                icon: Icon(Icons.calendar_today),
              ),
            ),
            validator: RequiredValidator(errorText: 'Please select your DOB.'),
          ),
          Text('Gender'),
          DropdownButton(
            hint: Text('Select your gender'),
            value: _selectedGender,
            onChanged: (newValue){
              setState(() {
                _selectedGender = newValue;
              });
            },
            items: _gender.map((gender){
              return DropdownMenuItem(
                child: new Text(gender),
                value: gender,
              );
            }).toList(),
          ),
          Text('Country'),
          DropdownButton(
            hint: Text('Select your country'),
            value: _selectedCountry,
            onChanged: (newValue){
              setState(() {
                _selectedCountry = newValue;
              });
            },
            items: _country.map((country){
              return DropdownMenuItem(
                child: new Text(country),
                value: country,
              );
            }).toList(),
          ),
          TextFormField(
            controller: _ctrlTown,
            decoration: InputDecoration(
              hintText: 'Enter the town or suburb where you are based.',
              labelText: 'Town or Suburb',
              suffixIcon: IconButton(
                onPressed: (){},
                icon: Icon(Icons.location_on),
              ),
            ),
            validator: RequiredValidator(errorText: 'Please enter your town/suburb.'),
          ),
          TextFormField(
            controller: _ctrlPhone,
            decoration: InputDecoration(
              hintText: 'Enter your phone number.',
              labelText: 'Phone Number',
            ),
            validator: MultiValidator([RequiredValidator(errorText:'Please enter your phone number.' ),
              EmailValidator(errorText: 'Please enter valid email address')]),
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
            controller: _ctrlPassword,
            obscureText: _obscureText,
            decoration: InputDecoration(
              hintText: 'Enter password.',
              labelText: 'Password',
            ),
            validator: RequiredValidator(errorText: 'Password can\'t be empty.'),
          ),
          TextFormField(
            controller: _ctrlCheckPassword,
            obscureText: _obscureText,
            decoration: InputDecoration(
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
              )
            ),
            validator: (val){
              if (val.isEmpty)
                return 'Please confirm your password';
              if(val != _ctrlPassword.text)
                return 'Password is not match';
              return null;
            },
          ),
          TextFormField(
            onTap: (){
              // Below line stops keyboard from appearing
              FocusScope.of(context).requestFocus(new FocusNode());
            },
            decoration: InputDecoration(
              hintText: 'Click to select a profile picture.',
              labelText: 'Profile Picture',
              suffixIcon: IconButton(
                onPressed: (){},
                icon: Icon(Icons.folder),
              )
            ),
          ),
          Text("Upload your profile picture here (Must be under 8 MB, preferably square with a white background. For best results ensure that you are the only person in the photo so as not to confuse potential players.)"),
          Text('Business Type'),
          DropdownButton(
            hint: Text('Select business type'),
            value: _selectedBusinessType,
            onChanged: (newValue){
              setState(() {
                _selectedBusinessType = newValue;
              });
            },
            items: _businessType.map((businessType){
              return DropdownMenuItem(
                child: new Text(businessType),
                value: businessType,
              );
            }).toList(),
          ),
          Text('Working with Children Licence Type'),
          DropdownButton(
            hint: Text('Select Working With Children Licence Type'),
            value: _selectedworkingLiecence,
            onChanged: (newValue){
              setState(() {
                _selectedworkingLiecence = newValue;
              });
            },
            items: _workingLiecence.map((workingLiecence){
              return DropdownMenuItem(
                child: new Text(workingLiecence),
                value: workingLiecence,
              );
            }).toList(),
          ),
          TextFormField(
            controller: _ctrlLicenceNumber,
            decoration: InputDecoration(
              hintText: 'Enter your working with children licence number.',
              labelText: 'Licence Number',
            ),
            validator: RequiredValidator(errorText: 'Licence number can\'t be empty.')
          ),
          Text('Business Number'),
          TextFormField(
            controller: _ctrlBusiniessNumber,
            decoration: InputDecoration(
              hintText: 'Enter your business registration number (ABN or Equivalent).',
              labelText: 'Business Number',
            ),
            validator: RequiredValidator(errorText: 'Business number can\'t be empty.')
          ),
          TextFormField(
            controller: _ctrlClub,
            decoration: InputDecoration(
              hintText: 'Enter the current club or academy that you are at.',
              labelText: 'Current Club',
            ),
          ),
          Text('Age Groups Coached'),
          DropdownButton(
            hint: Text('Select the age groups you have coached.'),
            value: _selectedageGroup,
            onChanged: (newValue){
              setState(() {
                _selectedageGroup = newValue;
              });
            },
            items: _ageGroup.map((ageGroup){
              return DropdownMenuItem(
                child: new Text(ageGroup),
                value: ageGroup,
              );
            }).toList(),
          ),
          Text('Highest Coaching Qualification'),
          DropdownButton(
            hint: Text('Select highest coaching qualification.'),
            value: _selectedqulification,
            onChanged: (newValue){
              setState(() {
                _selectedqulification = newValue;
              });
            },
            items: _qulification.map((qulification){
              return DropdownMenuItem(
                child: new Text(qulification),
                value: qulification,
              );
            }).toList(),
          ),
          Text('Total Years Coaching'),
          DropdownButton(
            hint: Text('Select total years coaching.'),
            value: _selectedYears,
            onChanged: (newValue){
              setState(() {
                _selectedYears = newValue;
              });
            },
            items: _yearsCoaching.map((yearsCoaching){
              return DropdownMenuItem(
                child: new Text(yearsCoaching),
                value: yearsCoaching,
              );
            }).toList(),
          ),
          Text('Session Type'),
          DropdownButton(
            hint: Text('Select session type.'),
            value: _selectedSessionType,
            onChanged: (newValue){
              setState(() {
                _selectedSessionType = newValue;
              });
            },
            items: _sessionType.map((sessionType){
              return DropdownMenuItem(
                child: new Text(sessionType),
                value: sessionType,
              );
            }).toList(),
          ),
          TextFormField(
            controller: _ctrlCoachingSummary,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              hintText: 'Summarise your approach to coaching and what motivates you as a coach.',
              labelText: 'Coaching Summary',
            ),
            validator: RequiredValidator(errorText: 'Can\'t be empty.'),
            minLines: 5,
            maxLines: 100,
          ),
          TextFormField(
            controller: _ctrlCareerExperience,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              hintText: 'Explain your career with soccer, whether it\'s playing soccer or coaching.',
              labelText: 'Career Experience',
            ),
            validator: RequiredValidator(errorText: 'Can\'t be empty.'),
            minLines: 5,
            maxLines: 100,
          ),
          TextFormField(
            controller: _ctrlAverageSession,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
              hintText: 'What would an average training session be like with you? What should an athlete expect before booking you services?',
              labelText: 'Average Session',
            ),
            validator: RequiredValidator(errorText: 'Can\'t be empty.'),
            minLines: 5,
            maxLines: 100,
          ),
          Row(
              children: <Widget>[
                Checkbox(
                  onChanged: (bool value){
                    setState(() => this._isSubscribed = value);
                  },
                  value: this._isSubscribed,
                ),
                Container(
                  child: Expanded(
                    child: Text('Receive notifications when new jobs are posted near you, and also marketing material')
                  )
                ),
              ],
            ),
          Row(
            children: <Widget>[
              Checkbox(
                onChanged: (bool value){
                  setState(() => this._isAgreed = value);
                },
                value: this._isAgreed,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:'I agree to the ',
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                        text: 'terms and conditions',
                        style: TextStyle(color: Colors.green),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => TermsConditions()));
                          }
                    ),
                  ],
                ),
              )
            ],
          ),
          RaisedButton(
            onPressed: () {
              // Validate will return true if the form is valid, or false if
              // the form is invalid.
              if (_formKey.currentState.validate()) {
                // Process data.
                Scaffold
                    .of(context)
                    .showSnackBar(SnackBar(content: Text('Processing Data')));
              }
            },
            child: Text('Register'),
          )
        ],
      ),
    );
  }
}
