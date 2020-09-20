import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class StepperWidget extends StatefulWidget {
  @override
  _StepperWidgetState createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  List<GlobalKey<FormState>> _formkey = [];
  int currentStep = 0;
  bool complete = false;

  next() {
    currentStep + 1 != steps.length
        ? goTo(currentStep + 1)
        : setState(() => complete = true);
  }

  cancel() {
    if (currentStep > 0) {
      goTo(currentStep - 1);
    }
  }

  goTo(int step) {
    setState(() => currentStep = step);
  }

  List<Step> steps = [
    Step(
      title: const Text('Personal Details'),
      isActive: true,
      state: StepState.complete,
      content: PersonalForm(),
    ),
    Step(
      isActive: false,
      state: StepState.editing,
      title: const Text('Address'),
      content: InfoForm(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text('Create an account'),
        ),
        body: Column(children: <Widget>[
          Expanded(
            child: Stepper(
              steps: steps,
              currentStep: currentStep,
              onStepContinue: next,
              onStepTapped: (step) => goTo(step),
              onStepCancel: cancel,
              type: StepperType.horizontal,
            ),
          ),
        ]));
  }
}

class PersonalForm extends StatefulWidget {
  PersonalForm({Key key}) : super(key: key);
  _PersonalFormState createState() => _PersonalFormState();
}

class _PersonalFormState extends State<PersonalForm> {
  final _personalFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _personalFormKey,
        child: SingleChildScrollView(
            child: Column(children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Email Address'),
            validator: RequiredValidator(errorText: 'Can not be empty'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Password'),
            validator: RequiredValidator(errorText: 'Can not be empty'),
          ),
        ])));
  }
}

class InfoForm extends StatefulWidget {
  InfoForm({Key key}) : super(key: key);

  _InfoFormState createState() => _InfoFormState();
}

class _InfoFormState extends State<InfoForm> {
  final _InfoFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _InfoFormKey,
        child: SingleChildScrollView(
            child: Column(children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Home Address'),
                validator: RequiredValidator(errorText: 'Can not be empty'),
          ),
               TextFormField(
                decoration: InputDecoration(labelText: 'Postcode'),
                 validator: RequiredValidator(errorText: 'Can not be empty'),
          )
        ])));
  }
}
