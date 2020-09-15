import 'package:flutter/material.dart';
import 'package:treiner/Theme/appBar.dart';
import 'package:treiner/Theme/theme.dart';

class FAQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      home: FAQPage(),
    );
  }
}

class FAQPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text('F&Qs'),
      ),
      drawer: myDrawer(),
      body: Padding(padding: EdgeInsets.all(13.0), child: FaqList()),
    );
  }
}

class FaQ {
  FaQ({this.question, this.answer});

  String question;
  String answer;
}

class FaqList extends StatelessWidget {
  final List<FaQ> faqs = [
    FaQ(
        question: 'How do I contact a coach before making a booking?',
        answer:
            'The selected coach can be contacted by clicking on their profile and the contact us option in the Help section on the webpage. Under Treiner\'s privacy policy, the coaches cannot directly contact the client and a coaches contact details cannot be shared with the client. All messages need to be communicated via Treiner.'),
    FaQ(
        question:
            'What if I don\'t receive a response from the coach after submitting an enquiry?',
        answer:
            'If you don\'t receive a response from the coach then you can contact us through the Help page by submitting a support ticket or sending a message through contact treiner. This will help us understand your problem and get back to you as soon as possible.'),
    FaQ(
        question: 'What is the pay rate for each session?',
        answer:
            'Every coach charges a different pay rate based on their experience, session type and location. Hence, it varies and can be discussed once a request for booking a session is made. While booking your session you will be asked what your budget is and this will help set the rate you offer to pay your coach. However, it depends on them if they accept the offered amount.'),
    FaQ(
        question:
            'How can I check if the coach is available to take the session on the preferred date?',
        answer:
            'While making a request for a session you will be asked to enter the preferred date and time. If the coach is available the session will be confirmed by us and a payment will be required. If the coach is not available we will find you another coach in the same location who can take the session on the selected date and time.'),
    FaQ(
        question: 'Is the coach allowed to accept payments by cash?',
        answer:
            'Yes, but only if they specifically set their session as accepting cash.'),
    FaQ(
        question:
            'If I’m unable to book a session through the Treiner website who can I contact?',
        answer:
            'If you are unable to book a session you can contact us by clicking on the Contact Treiner option on the page. If you need an instant response you can also message us on our Facebook, Instagram, Twitter and LinkedIn page.'),
    FaQ(
        question:
            'Can I as a parent register as an athlete on the sign-up page?',
        answer:
            'Yes as a parent you can register on the page to request a booking. However, a few details regarding the child needs to be mentioned in the description.'),
    FaQ(
        question: 'Is it safe for my location to be shared with Treiner?',
        answer:
            'Yes! No information shared to Treiner will be disclosed to a third party and for more details please read our Privacy Policy.'),
    FaQ(
        question:
            'Is it important to pick a session type before booking the session?',
        answer:
            'It very important to select the session type so that our coaches can provide and plan the session based on your requirements.')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: faqs.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '${faqs[index].question}',
              textAlign: TextAlign.left,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  .merge(TextStyle(letterSpacing: 0.2, wordSpacing: 2)),
            ),
            Text('${faqs[index].answer}',
                textAlign: TextAlign.left,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    .merge(TextStyle(letterSpacing: 0.2, wordSpacing: 2)))
          ],
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          SizedBox(height: 10),
    );
  }
}
