import 'package:flutter/material.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';

class RequestSession extends StatefulWidget {
  static String route = '/requestSession';

  @override
  _RequestSessionState createState() => _RequestSessionState();
}

class _RequestSessionState extends State<RequestSession> {
  int step = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text("Request Session"),
      ),
      body: RequestSessionFormDesign(),
    );
  }
}

class RequestSessionFormDesign extends StatefulWidget {
  @override
  _RequestSessionFormDesignState createState() =>
      _RequestSessionFormDesignState();
}

class _RequestSessionFormDesignState extends State<RequestSessionFormDesign> {
  String dropdownValue = "Ball Mystery";

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image(
                    image: AssetImage('assets/PrimaryLockup2.png'),
                    width: 100,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2,
                      child: Card(
                        elevation: 5.0,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50.0))),
                        child: Padding(
                          padding: EdgeInsets.all(25),
                          child: Container(
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Headings(
                                      title: "What are you looking for?",
                                      size: 20.0,
                                      bold: FontWeight.bold,
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Headings(
                                          title:
                                              "What do you need a coach to help you with?",
                                          size: 20.0,
                                          bold: FontWeight.bold,
                                          color: Colors.black),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Headings(
                                            title:
                                                "This will be the title of your job. Please keep it short and accurately describe what you need.",
                                            size: 12.0,
                                            bold: FontWeight.bold,
                                            color: Colors.grey))
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(child: getDropDownList())
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                        child: Headings(
                                            title:
                                                "Posting a job is free! Treiner takes a 10% cut from what you pay the coach and deducts GST. Payment is easy, secure and fast, we try to make this as easy for you as possible!",
                                            size: 10.0,
                                            bold: FontWeight.bold,
                                            color: Colors.black))
                                  ],
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ChooseTraining(
                                                        jobTitle: dropdownValue,
                                                      )));
                                        },
                                        color: Color(0xFF006944),
                                        splashColor: Colors.black,
                                        textColor: Colors.white,
                                        child: Icon(
                                          Icons.arrow_forward,
                                          size: 40,
                                        ),
                                        padding: EdgeInsets.all(16),
                                        shape: CircleBorder(),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      )),
                ),
              ],
            )
          ],
        ));
  }

  Widget getDropDownList() {
    return DropdownButton<String>(
        isExpanded: true,
        value: dropdownValue,
        icon: Icon(Icons.arrow_downward),
        iconSize: 24.0,
        elevation: 16,
        style: TextStyle(color: Colors.green[900]),
        underline: Container(
          height: 2,
          color: Colors.green[900],
        ),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>[
          "Ball Mystery",
          "Running with the Ball",
          "First touch",
          "Striking the ball (shooting or passing)",
          "1v1 (Defending or Attacking)",
          "GK Specific",
          "General fitness",
          "Strength, Speed and Agility"
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList());
  }
}

// Training Widget to Choose Training
class ChooseTraining extends StatefulWidget {
  final String jobTitle;

  ChooseTraining({this.jobTitle});

  @override
  _ChooseTrainingState createState() => _ChooseTrainingState();
}

class _ChooseTrainingState extends State<ChooseTraining> {
  String dropdownValue = "Virtual Training";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text("2/8 - Training Category")),
      body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image(
                      image: AssetImage('assets/PrimaryLockup2.png'),
                      width: 100,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 2,
                        child: Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0))),
                          child: Padding(
                            padding: EdgeInsets.all(25),
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Headings(
                                          title: "What are you looking for?",
                                          size: 20.0,
                                          bold: FontWeight.bold,
                                          color: Colors.black),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Headings(
                                            title:
                                                "Please select a training category",
                                            size: 20.0,
                                            bold: FontWeight.bold,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(child: dropDrownTraining())
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: MaterialButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        JobDescription(
                                                          jobTitle:
                                                              (widget.jobTitle),
                                                          trainingCat:
                                                              dropdownValue,
                                                        )));
                                          },
                                          color: Color(0xFF006944),
                                          splashColor: Colors.black,
                                          textColor: Colors.white,
                                          child: Icon(
                                            Icons.arrow_forward,
                                            size: 40,
                                          ),
                                          padding: EdgeInsets.all(16),
                                          shape: CircleBorder(),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
                  ),
                ],
              )
            ],
          )),
    );
  }

  Widget dropDrownTraining() {
    return DropdownButton<String>(
        isExpanded: true,
        value: dropdownValue,
        icon: Icon(Icons.arrow_downward),
        iconSize: 24.0,
        elevation: 16,
        style: TextStyle(color: Colors.green[900]),
        underline: Container(
          height: 2,
          color: Colors.green[900],
        ),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>[
          "Virtual Training",
          "1 on 1",
          "Small Group",
          "Team Training",
          "Futsal",
          "Goal Keeper Training",
          "Sports Pyschology",
          "Sports Doctor",
          "Physiotherapist"
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList());
  }
}

// To Enter Job Descrition Widget Starts here
class JobDescription extends StatefulWidget {
  String jobTitle;
  String trainingCat;

  JobDescription({this.jobTitle, this.trainingCat});

  @override
  _JobDescriptionState createState() => _JobDescriptionState();
}

class _JobDescriptionState extends State<JobDescription> {
  final myJobDescription = TextEditingController();

  @override
  void dispose() {
    myJobDescription.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text("3/8 - Job Description")),
      body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image(
                      image: AssetImage('assets/PrimaryLockup2.png'),
                      width: 100,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 2,
                        child: Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0))),
                          child: Padding(
                            padding: EdgeInsets.all(25),
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Headings(
                                          title: "What are you looking for?",
                                          size: 20.0,
                                          bold: FontWeight.bold,
                                          color: Colors.black),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Headings(
                                            title: "Please describe the job.",
                                            size: 20.0,
                                            bold: FontWeight.bold,
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Headings(
                                            title:
                                                "Try to be as specific as possible with describing the job. Also please do not disclose any personal information.",
                                            size: 12.0,
                                            bold: FontWeight.bold,
                                            color: Colors.grey),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 10.0),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: TextField(
                                        decoration: InputDecoration(
                                            labelText: "Job Description",
                                            border: OutlineInputBorder(
                                                borderSide: BorderSide())),
                                        autofocus: true,
                                        keyboardType: TextInputType.multiline,
                                        minLines: 1,
                                        maxLines: 5,
                                        controller: myJobDescription,
                                      ))
                                    ],
                                  ),
                                  SizedBox(height: 20.0),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: MaterialButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ChooseTime(
                                                          jobTitle:
                                                              (widget.jobTitle),
                                                          trainingCat: (widget
                                                              .trainingCat),
                                                          jobDesc:
                                                              myJobDescription
                                                                  .text,
                                                        )));
                                          },
                                          color: Color(0xFF006944),
                                          splashColor: Colors.black,
                                          textColor: Colors.white,
                                          child: Icon(
                                            Icons.arrow_forward,
                                            size: 40,
                                          ),
                                          padding: EdgeInsets.all(16),
                                          shape: CircleBorder(),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
                  ),
                ],
              )
            ],
          )),
    );
  }
}

class ChooseTime extends StatefulWidget {
  String jobTitle;
  String trainingCat;
  String jobDesc;

  ChooseTime({this.jobTitle, this.trainingCat, this.jobDesc});

  @override
  _ChooseTimeState createState() => _ChooseTimeState();
}

class _ChooseTimeState extends State<ChooseTime> {
  final myMinutes = TextEditingController();

  @override
  void dispose() {
    myMinutes.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text("4/8 - Training Time")),
      body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image(
                      image: AssetImage('assets/PrimaryLockup2.png'),
                      width: 100,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 2,
                        child: Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0))),
                          child: Padding(
                            padding: EdgeInsets.all(25),
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Headings(
                                        title: "How many Minutes?",
                                        size: 20.0,
                                        color: Colors.black,
                                        bold: FontWeight.bold,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Headings(
                                              title:
                                                  "Choose how many minutes you need to train for.",
                                              size: 20.0,
                                              bold: FontWeight.bold))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Headings(
                                              title:
                                                  "Decide how many minutes you need to practice with your coach.",
                                              color: Colors.grey))
                                    ],
                                  ),
                                  SizedBox(height: 10.0),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: TextField(
                                              decoration: InputDecoration(
                                                  suffixIcon:
                                                      Icon(Icons.description),
                                                  labelText: "Minutes",
                                                  border: OutlineInputBorder(
                                                      borderSide:
                                                          BorderSide())),
                                              autofocus: true,
                                              keyboardType:
                                                  TextInputType.number,
                                              minLines: 1,
                                              maxLines: 1,
                                              controller: myMinutes))
                                    ],
                                  ),
                                  SizedBox(height: 20.0),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: MaterialButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ChooseMoney(
                                                          jobTitle: (widget
                                                              .jobTitle),
                                                          trainingCat: (widget
                                                              .trainingCat),
                                                          jobDesc:
                                                              (widget.jobDesc),
                                                          time: myMinutes.text),
                                                ));
                                          },
                                          color: Color(0xFF006944),
                                          splashColor: Colors.black,
                                          textColor: Colors.white,
                                          child: Icon(
                                            Icons.arrow_forward,
                                            size: 40,
                                          ),
                                          padding: EdgeInsets.all(16),
                                          shape: CircleBorder(),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
                  ),
                ],
              )
            ],
          )),
    );
  }
}

class ChooseMoney extends StatefulWidget {
  String jobTitle;
  String trainingCat;
  String jobDesc;
  String time;

  ChooseMoney({this.jobTitle, this.trainingCat, this.jobDesc, this.time});

  @override
  _ChooseMoneyState createState() => _ChooseMoneyState();
}

class _ChooseMoneyState extends State<ChooseMoney> {
  final myMoney = TextEditingController();

  @override
  void dispose() {
    myMoney.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text("5/8 - Choose Budget")),
      body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image(
                      image: AssetImage('assets/PrimaryLockup2.png'),
                      width: 100,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 1.8,
                        child: Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0))),
                          child: Padding(
                            padding: EdgeInsets.all(25),
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Headings(
                                        title: "What is your budget?",
                                        size: 20.0,
                                        color: Colors.black,
                                        bold: FontWeight.bold,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Headings(
                                              title:
                                                  "Choose how much you want to pay to the coach",
                                              size: 20.0,
                                              bold: FontWeight.bold))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Headings(
                                              title:
                                                  "This will set the rate you pay your coach, although caoches can bid higher or lower on your job.",
                                              color: Colors.grey))
                                    ],
                                  ),
                                  SizedBox(height: 10.0),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: TextField(
                                              decoration: InputDecoration(
                                                  suffixIcon:
                                                      Icon(Icons.attach_money),
                                                  labelText: "Money",
                                                  border: OutlineInputBorder(
                                                      borderSide:
                                                          BorderSide())),
                                              autofocus: true,
                                              keyboardType:
                                                  TextInputType.number,
                                              minLines: 1,
                                              maxLines: 1,
                                              controller: myMoney))
                                    ],
                                  ),
                                  SizedBox(height: 20.0),
                                  Row(children: [
                                    Expanded(
                                      child: Headings(
                                        title:
                                            "Enter the amount you would like to pay your coach, in the box above.",
                                        color: Colors.black,
                                      ),
                                    )
                                  ]),
                                  SizedBox(height: 20.0),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: MaterialButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ChooseDate(
                                                          jobTitle:
                                                              (widget.jobTitle),
                                                          jobDesc:
                                                              widget.jobDesc,
                                                          trainingCat: widget
                                                              .trainingCat,
                                                          time: widget.time,
                                                          money: myMoney.text,
                                                        )));
                                          },
                                          color: Color(0xFF006944),
                                          splashColor: Colors.black,
                                          textColor: Colors.white,
                                          child: Icon(
                                            Icons.arrow_forward,
                                            size: 40,
                                          ),
                                          padding: EdgeInsets.all(16),
                                          shape: CircleBorder(),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
                  ),
                ],
              )
            ],
          )),
    );
  }
}

//Date Widget for selecting the date for the job
class ChooseDate extends StatefulWidget {
  String jobTitle;
  String trainingCat;
  String jobDesc;
  String time;
  String money;

  ChooseDate(
      {this.jobTitle, this.trainingCat, this.jobDesc, this.time, this.money});

  @override
  _ChooseDateState createState() => _ChooseDateState();
}

class _ChooseDateState extends State<ChooseDate> {
  final myDate = TextEditingController();

  @override
  void dispose() {
    myDate.dispose();
    super.dispose();
  }

  final format = DateFormat("yyyy-MM-dd");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text("6/8 - Choose Date")),
      body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image(
                      image: AssetImage('assets/PrimaryLockup2.png'),
                      width: 100,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 1.8,
                        child: Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0))),
                          child: Padding(
                            padding: EdgeInsets.all(25),
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Headings(
                                        title: "When would you like to train?",
                                        size: 20.0,
                                        color: Colors.black,
                                        bold: FontWeight.bold,
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Headings(
                                              title:
                                                  "Choose the date you would like the training to commence",
                                              size: 20.0,
                                              bold: FontWeight.bold))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Headings(
                                              title:
                                                  "Click the box below, and choose a date from the calendar within the next three months to begin training",
                                              color: Colors.grey))
                                    ],
                                  ),
                                  SizedBox(height: 10.0),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: DateTimeField(
                                        controller: myDate,
                                        decoration: new InputDecoration(
                                            suffixIcon:
                                                Icon(Icons.calendar_today),
                                            border: new OutlineInputBorder(
                                                borderSide: new BorderSide(
                                                    color: Colors.green[900])),
                                            labelText: "Pick a date"),
                                        format: format,
                                        onShowPicker: (context, currentValue) {
                                          return showDatePicker(
                                              context: context,
                                              firstDate: DateTime(1900),
                                              initialDate: currentValue ??
                                                  DateTime.now(),
                                              lastDate: DateTime(2100));
                                        },
                                      ))
                                    ],
                                  ),
                                  SizedBox(height: 20.0),
                                  Row(children: [
                                    Expanded(
                                      child: Headings(
                                        title:
                                            "Select a date above to commence training on. The time of the training can be selected next.",
                                        color: Colors.black,
                                      ),
                                    )
                                  ]),
                                  SizedBox(height: 20.0),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: MaterialButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ChooseTrainingTime(
                                                            jobDesc:
                                                                widget.jobDesc,
                                                            jobTitle:
                                                                widget.jobTitle,
                                                            duration:
                                                                widget.time,
                                                            date: myDate.text,
                                                            trainingCat: widget
                                                                .trainingCat,
                                                            money:
                                                                widget.money)));
                                          },
                                          color: Color(0xFF006944),
                                          splashColor: Colors.black,
                                          textColor: Colors.white,
                                          child: Icon(
                                            Icons.arrow_forward,
                                            size: 40,
                                          ),
                                          padding: EdgeInsets.all(16),
                                          shape: CircleBorder(),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
                  ),
                ],
              )
            ],
          )),
    );
  }
}

class ChooseTrainingTime extends StatefulWidget {
  String jobTitle;
  String trainingCat;
  String jobDesc;
  String duration;
  String date;
  String money;

  ChooseTrainingTime(
      {this.jobTitle,
      this.trainingCat,
      this.jobDesc,
      this.duration,
      this.date,
      this.money});

  @override
  _ChooseTrainingTimeState createState() => _ChooseTrainingTimeState();
}

class _ChooseTrainingTimeState extends State<ChooseTrainingTime> {
  final myTime = TextEditingController();

  @override
  void dispose() {
    myTime.dispose();
    super.dispose();
  }

  final format = DateFormat("HH:mm");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text("7/8 - Choose Time")),
      body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image(
                      image: AssetImage('assets/PrimaryLockup2.png'),
                      width: 100,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 1.8,
                        child: Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0))),
                          child: Padding(
                            padding: EdgeInsets.all(25),
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Headings(
                                          title:
                                              "What time would you like to start your sessions?",
                                          size: 20.0,
                                          color: Colors.black,
                                          bold: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Headings(
                                              title:
                                                  "Choose the time of the day that you would like the training session to begin",
                                              size: 20.0,
                                              bold: FontWeight.bold))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Headings(
                                              title:
                                                  "Click the box below, and enter time for your session",
                                              color: Colors.grey))
                                    ],
                                  ),
                                  SizedBox(height: 10.0),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: DateTimeField(
                                        controller: myTime,
                                        decoration: new InputDecoration(
                                            suffixIcon: Icon(Icons.timer),
                                            border: new OutlineInputBorder(
                                                borderSide: new BorderSide(
                                                    color: Colors.green[900])),
                                            labelText: "Pick a time"),
                                        format: format,
                                        onShowPicker:
                                            (context, currentValue) async {
                                          final time = await showTimePicker(
                                            context: context,
                                            initialTime: TimeOfDay.fromDateTime(
                                                currentValue ?? DateTime.now()),
                                          );
                                          return DateTimeField.convert(time);
                                        },
                                      ))
                                    ],
                                  ),
                                  SizedBox(height: 20.0),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: MaterialButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      ChooseLocation(
                                                    jobTitle: widget.jobTitle,
                                                    trainingCat:
                                                        widget.trainingCat,
                                                    jobDesc: widget.jobDesc,
                                                    duration: widget.duration,
                                                    date: widget.date,
                                                    money: widget.money,
                                                    time: myTime.text,
                                                  ),
                                                ));
                                          },
                                          color: Color(0xFF006944),
                                          splashColor: Colors.black,
                                          textColor: Colors.white,
                                          child: Icon(
                                            Icons.arrow_forward,
                                            size: 40,
                                          ),
                                          padding: EdgeInsets.all(16),
                                          shape: CircleBorder(),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
                  ),
                ],
              )
            ],
          )),
    );
  }
}

class ChooseLocation extends StatefulWidget {
  String jobTitle;
  String trainingCat;
  String jobDesc;
  String duration;
  String date;
  String money;
  String time;

  ChooseLocation(
      {this.jobTitle,
      this.jobDesc,
      this.trainingCat,
      this.date,
      this.duration,
      this.money,
      this.time});

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  final myLocation = TextEditingController();

  @override
  void dispose() {
    myLocation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text("8/8 - Choose Location")),
      body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image(
                      image: AssetImage('assets/PrimaryLockup2.png'),
                      width: 100,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 1.8,
                        child: Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50.0))),
                          child: Padding(
                            padding: EdgeInsets.all(25),
                            child: Container(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Headings(
                                          title:
                                              "Where would you like to train?",
                                          size: 20.0,
                                          color: Colors.black,
                                          bold: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Headings(
                                              title:
                                                  "Choose the suburb you would like to train in.",
                                              size: 20.0,
                                              bold: FontWeight.bold))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 15.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Headings(
                                              title:
                                                  "Start typting your location and then choose your suburb from the list that pops up",
                                              color: Colors.grey))
                                    ],
                                  ),
                                  SizedBox(height: 10.0),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: TextField(
                                              decoration: InputDecoration(
                                                  suffixIcon:
                                                      Icon(Icons.description),
                                                  labelText: "Location",
                                                  border: OutlineInputBorder(
                                                      borderSide:
                                                          BorderSide())),
                                              autofocus: true,
                                              keyboardType:
                                                  TextInputType.number,
                                              minLines: 1,
                                              maxLines: 1,
                                              controller: myLocation))
                                    ],
                                  ),
                                  SizedBox(height: 20.0),
                                  Row(
                                    children: [
                                      Expanded(
                                          child: Headings(
                                              title:
                                                  "Choose a location from the list that your training will take place. We Will notify coaches in that area once you have posted this job.",
                                              color: Colors.grey))
                                    ],
                                  ),
                                  SizedBox(height: 20.0),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: MaterialButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        SubmitSessionRequest(
                                                            jobTitle:
                                                                widget.jobTitle,
                                                            jobDesc:
                                                                widget.jobDesc,
                                                            time: widget.time,
                                                            duration:
                                                                widget.duration,
                                                            date: widget.date,
                                                            money: widget.money,
                                                            location:
                                                                myLocation.text,
                                                            trainingCat: widget
                                                                .trainingCat)));
                                          },
                                          color: Color(0xFF006944),
                                          splashColor: Colors.black,
                                          textColor: Colors.white,
                                          child: Icon(
                                            Icons.send,
                                            size: 40,
                                          ),
                                          padding: EdgeInsets.all(16),
                                          shape: CircleBorder(),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )),
                  ),
                ],
              )
            ],
          )),
    );
  }
}

class SubmitSessionRequest extends StatefulWidget {
  String jobTitle;
  String trainingCat;
  String jobDesc;
  String duration;
  String date;
  String money;
  String time;
  String location;

  SubmitSessionRequest(
      {this.jobTitle,
      this.jobDesc,
      this.trainingCat,
      this.date,
      this.time,
      this.duration,
      this.money,
      this.location});

  @override
  _SubmitSessionRequestState createState() => _SubmitSessionRequestState();
}

class _SubmitSessionRequestState extends State<SubmitSessionRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(title: Text("Post your job")),
      body: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image(
                      image: AssetImage('assets/PrimaryLockup2.png'),
                      width: 100,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 1.5,
                        child: Card(
                          elevation: 5.0,
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0))),
                          child: Padding(
                            padding: EdgeInsets.all(25),
                            child: Container(
                              child: Column(
                                children: [
                                  Headings(
                                      title: "Your job is ready to post",
                                      size: 24.0),
                                  SizedBox(
                                    child: Padding(
                                      padding: const EdgeInsets.all(25.0),
                                      child: Image(
                                        image: new AssetImage(
                                            "assets/post-job-finish.png"),
                                        height: 100,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Headings(
                                          title:
                                              "Job Title: ${widget.jobTitle}",
                                          size: 16.0)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Headings(
                                          title:
                                              "Training Category: ${widget.trainingCat}",
                                          size: 16.0)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Headings(
                                          title:
                                              "Job Description: ${widget.jobDesc}",
                                          size: 16.0)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Headings(
                                          title: "Duration: ${widget.duration}",
                                          size: 16.0)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Headings(
                                          title: "Money: ${widget.money}\$",
                                          size: 16.0)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Headings(
                                          title: "Date: ${widget.date}",
                                          size: 16.0)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Headings(
                                          title: "Time: ${widget.time}",
                                          size: 16.0)
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Headings(
                                          title: "Location: ${widget.location}",
                                          size: 16.0)
                                    ],
                                  ),
                                  Spacer(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      RaisedButton.icon(
                                        textColor: Colors.white,
                                        color: Color(0xFF006944),
                                        onPressed: () {},
                                        icon: Icon(Icons.arrow_back),
                                        label: Text("Start over"),
                                      ),
                                      RaisedButton.icon(
                                        textColor: Colors.white,
                                        color: Color(0xFF006944),
                                        onPressed: () {
                                          showDialog(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return AlertDialog(
                                                  title: Text(
                                                      "Your job has been posted"),
                                                  content: Text(
                                                      "Your job has been posted for approval, you will be notified shortly."),
                                                  actions: [
                                                    FlatButton(
                                                      child: Text("Okay"),
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                    )
                                                  ],
                                                );
                                              });
                                        },
                                        icon: Icon(Icons.send),
                                        label: Text("Submit Job"),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )),
                  ),
                ],
              )
            ],
          )),
    );
  }
}

class Headings extends StatelessWidget {
  final String title;
  double size;
  FontWeight bold;
  Color color;

  Headings({this.title, this.size, this.bold, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(title,
          style: TextStyle(fontSize: size, color: color, fontWeight: bold)),
    );
  }
}
