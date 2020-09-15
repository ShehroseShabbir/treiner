import 'package:flutter/material.dart';
import 'package:treiner/Theme/appBar.dart';
import 'package:treiner/Theme/theme.dart';

class TermsConditions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      home: TermsConditionsPage(),
    );
  }
}

class TermsConditionsPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Terms & Conditions'),
      ),
      drawer: myDrawer(),
      body: Padding(padding: EdgeInsets.all(13.0), child: TermList()),
    );
  }
}

class Term {
  Term({this.title, this.desc});

  String title;
  String desc;
}

class TermList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: terms.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '${index + 1}. ${terms[index].title}',
              textAlign: TextAlign.left,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            SizedBox(height: 5),
            Text('${terms[index].desc}', textAlign: TextAlign.left),
          ],
        );
      },
      separatorBuilder: (BuildContext context, int index) =>
          SizedBox(height: 10),
    );
  }

  final List<Term> terms = [
    Term(
        title: 'About the Website',
        desc: 'Welcome to Treiner (the \'Website\').'
            ' The Website Soccer Coaching & Support Services (the \'Services\').\nThe Website '
            'is operated by Dynamic Sports Solutions Pty. Ltd t/a Treiner. (ABN 61 '
            '620 841 107). Access to and use of the Website, or any of its associated '
            'Products or Services, is provided by Dynamic Sports Solutions Pty. Ltd '
            't/a Treiner. Please read these terms and conditions (the \'Terms\') '
            'carefully. By using, browsing and/or reading the Website, this '
            'signifies that you have read, understood and agree to be bound '
            'by the Terms. If you do not agree with the Terms, you must cease usage '
            'of the Website, or any of Services, immediately.\nDynamic Sports '
            'Solutions Pty. Ltd t/a Treiner reserves the right to review and change '
            'any of the Terms by updating this page at its sole discretion. When '
            'Dynamic Sports Solutions Pty. Ltd t/a Treiner updates the Terms, it '
            'will use reasonable endeavours to provide you with notice of updates '
            'to the Terms. Any changes to the Terms take immediate effect from the '
            'date of their publication. Before you continue, we recommend you keep '
            'a copy of the Terms for your records.'),
    Term(
        title: 'Acceptance of the Terms',
        desc: 'You accept the Terms by '
            'remaining on the Website. You may also accept the Terms by clicking '
            'to accept or agree to the Terms where this option is made available '
            'to you by Dynamic Sports Solutions Pty. Ltd t/a Treiner in the user '
            'interface.'),
    Term(
        title: 'Registration to use the Services',
        desc: 'In order to access '
            'the Services, you must first register for an account through the '
            'Website (the \'account\').\nAs part of the registration process, or as '
            'part of your continued use of the Services, you may be required to '
            'provide personal information about yourself(such as identification or '
            'contact details), including:\n  an email address\n  a mailing address\n  a '
            'telephone number\n  a password\nYou warrant that any information you give'
            ' to Dynamic Sports Solutions Pty. Ltd t/a Treiner in the course of '
            'completing the registration process will always be accurate, correct '
            'and up to date.\nOnce you have completed the registration process, you '
            'will be a registered member of the Website (\'Member\') and agree to be '
            'bound by the Terms.\nYou may not use the Services and may not accept '
            'the Terms if:\nyou are not of legal age to form a binding contract with '
            'Dynamic Sports Solutions Pty. Ltd t/a Treiner; or\nyou are a person '
            'barred from receiving the Services under the laws of Australia or other '
            'countries including the country in which you are resident or from which '
            'you use the Services.'),
    Term(
        title: 'Your obligations as a Member',
        desc: 'As a Member, you agree to '
            'comply with the following:\nyou will use the Services only for purposes '
            'that are permitted by:\n  1. the Terms; and\n  2. any applicable law, '
            'regulation or generally accepted practices or guidelines in the relevant '
            'jurisdictions;\nyou have the sole responsibility for protecting the '
            'confidentiality of your password and/or email address. Use of your '
            'password by any other person may result in the immediate cancellation '
            'of the Services;\nany use of your registration information by any other '
            'person, or third parties, is strictly prohibited. You agree to '
            'immediately notify Dynamic Sports Solutions Pty. Ltd t/a Treiner of any'
            ' unauthorised use of your password or email address or any breach of '
            'security of which you have become aware;\naccess and use of the Website '
            'is limited, non-transferable and allows for the sole use of the Website '
            'by you for the purposes of Dynamic Sports Solutions Pty. Ltd t/a Treiner '
            'providing the Services;\nyou will not use the Services or the Website in '
            'connection with any commercial endeavours except those that are specifically '
            'endorsed or approved by the management of Dynamic Sports Solutions Pty. '
            'Ltd t/a Treiner;\nyou will not use the Services or Website for any illegal '
            'and/or unauthorised use which includes collecting email addresses of Members '
            'by electronic or other means for the purpose of sending unsolicited email '
            'or unauthorised framing of or linking to the Website;\nyou agree that '
            'commercial advertisements, affiliate links, and other forms of solicitation '
            'may be removed from the Website without notice and may result in termination '
            'of the Services. Appropriate legal action will be taken by Dynamic Sports '
            'Solutions Pty. Ltd t/a Treiner for any illegal or unauthorised use of the '
            'Website; and\nyou acknowledge and agree that any automated use of the '
            'Website or its Services is prohibited.'),
    Term(
        title: 'Payment',
        desc: 'Where the option is given to you, you may make '
            'payment for the Services (the \'Services Fee\') by way of:\nCredit Card '
            'Payment (\'Credit Card\')\nAll payments made in the course of your use '
            'of the Services are made using Stripe (\'Stripe\'). In using the Website, '
            'the Services or when making any payment in relation to your use of the '
            'Services, you warrant that you have read, understood and agree to be '
            'bound by the Stripe terms and conditions which are available on their '
            'website.\nYou acknowledge and agree that where a request for the payment '
            'of the Services Fee is returned or denied, for whatever reason, by your '
            'financial institution or is unpaid by you for any other reason, then you '
            'are liable for any costs, including banking fees and charges, associated '
            'with the Services Fee.\nYou agree and acknowledge that Dynamic Sports '
            'Solutions Pty. Ltd t/a Treiner can vary the Services Fee at any time.'),
    Term(
        title: 'Refund Policy',
        desc:
            'Dynamic Sports Solutions Pty. Ltd t/a Treiner will only provide you '
            'with a refund of the Services Fee in the event they are unable '
            'to continue to provide the Services or if the manager of Dynamic '
            'Sports Solutions Pty. Ltd t/a Treiner makes a decision, at its absolute '
            'discretion, that it is reasonable to do so under the circumstances '
            '(the \'Refund\').'),
    Term(
        title: 'Copyright and Intellectual Property',
        desc: 'The Website, the '
            'Services and all of the related products of Dynamic Sports Solutions Pty. '
            'Ltd t/a Treiner are subject to copyright. The material on the Website '
            'is protected by copyright under the laws of Australia and through '
            'international treaties. Unless otherwise indicated, all rights '
            '(including copyright) in the Services and compilation of the Website '
            '(including but not limited to text, graphics, logos, button icons, '
            'video images, audio clips, Website, code, scripts, design elements and '
            'interactive features) or the Services are owned or controlled for these '
            'purposes, and are reserved by Dynamic Sports Solutions Pty. Ltd t/a '
            'Treiner or its contributors.\nAll trademarks, service marks and trade '
            'names are owned, registered and/or licensed by Dynamic Sports Solutions '
            'Pty. Ltd t/a Treiner, which grants to you a worldwide, non-exclusive, '
            'royalty-free, revocable license whilst you are a Member to:\nuse the '
            'Website pursuant to the Terms;\ncopy and store the Website and the '
            'material contained in the Website in your device’s cache memory; and\n'
            'print pages from the Website for your own personal and non-commercial use.'
            '\nDynamic Sports Solutions Pty. Ltd t/a Treiner does not grant you any '
            'other rights whatsoever in relation to the Website or the Services. '
            'All other rights are expressly reserved by Dynamic Sports Solutions Pty. '
            'Ltd t/a Treiner.\nDynamic Sports Solutions Pty. Ltd t/a Treiner retains '
            'all rights, title and interest in and to the Website and all related '
            'Services. Nothing you do on or in relation to the Website will transfer '
            'any:\nbusiness name, trading name, domain name, trade mark, industrial '
            'design, patent, registered design or copyright, or\na right to use or '
            'exploit a business name, trading name, domain name, trade mark or '
            'industrial design, or a thing, system or process that is the subject '
            'of a patent, registered design or copyright (or an adaptation or '
            'modification of such a thing, system or process), to you.\nYou may not, '
            'without the prior written permission of Dynamic Sports Solutions Pty. '
            'Ltd t/a Treiner and the permission of any other relevant rights owners: '
            'broadcast, republish, up-load to a third party, transmit, post, '
            'distribute, show or play in public, adapt or change in any way the '
            'Services or third party Services for any purpose, unless otherwise '
            'provided by these Terms. This prohibition does not extend to materials '
            'on the Website which are freely available for re-use or are in the '
            'public domain.'),
    Term(
        title: 'Privacy',
        desc: 'Dynamic Sports Solutions Pty. Ltd t/a Treiner '
            'takes your privacy seriously and any information provided through your '
            'use of the Website and/or Services are subject to Dynamic Sports Solutions'
            ' Pty. Ltd t/a Treiner’s Privacy Policy, which is available on the Website.'),
    Term(
        title: 'General Disclaimer',
        desc: 'Nothing in the Terms limits or excludes '
            'any guarantees, warranties, representations or conditions implied or imposed '
            'by law, including the Australian Consumer Law (or any liability under them) '
            'which by law may not be limited or excluded.\nSubject to this clause, and to '
            'the extent permitted by law:\nall terms, guarantees, warranties, representations'
            ' or conditions which are not expressly stated in the Terms are excluded; and '
            'Dynamic Sports Solutions Pty. Ltd t/a Treiner will not be liable for any '
            'special, indirect or consequential loss or damage (unless such loss or damage '
            'is reasonably foreseeable resulting from our failure to meet an applicable '
            'Consumer Guarantee), loss of profit or opportunity, or damage to goodwill '
            'arising out of or in connection with the Services or these Terms (including '
            'as a result of not being able to use the Services or the late supply of the '
            'Services), whether at common law, under contract, tort (including negligence), '
            'in equity, pursuant to statute or otherwise.\nUse of the Website and the '
            'Services is at your own risk. Everything on the Website and the Services is '
            'provided to you \"as is\" and \"as available\" without warranty or condition of '
            'any kind. None of the affiliates, directors, officers, employees, agents, '
            'contributors and licensors of Dynamic Sports Solutions Pty. Ltd t/a Treiner '
            'make any express or implied representation or warranty about the Services or '
            'any products or Services (including the products or Services of Dynamic '
            'Sports Solutions Pty. Ltd t/a Treiner) referred to on the Website. This includes'
            ' (but is not restricted to) loss or damage you might suffer as a result of any'
            ' of the following:\nfailure of performance, error, omission, interruption, '
            'deletion, defect, failure to correct defects, delay in operation or transmission,'
            ' computer virus or other harmful component, loss of data, communication line '
            'failure, unlawful third party conduct, or theft, destruction, alteration or '
            'unauthorised access to records;\nthe accuracy, suitability or currency of any'
            ' information on the Website, the Services, or any of its Services related '
            'products (including third party material and advertisements on the Website); '
            '\ncosts incurred as a result of you using the Website, the Services or any '
            'of the products of Dynamic Sports Solutions Pty. Ltd t/a Treiner; and '
            '\nthe Services or operation in respect to links which are provided for '
            'your convenience.'),
    Term(
        title: 'Limitation of liability',
        desc: 'Dynamic Sports Solutions Pty. '
            'Ltd t/a Treiner\'s total liability arising out of or in connection with the '
            'Services or these Terms, however arising, including under contract, tort '
            '(including negligence), in equity, under statute or otherwise, will not '
            'exceed the resupply of the Services to you.\nYou expressly understand and '
            'agree that Dynamic Sports Solutions Pty. Ltd t/a Treiner, its affiliates, '
            'employees, agents, contributors and licensors shall not be liable to '
            'you for any direct, indirect, incidental, special consequential or '
            'exemplary damages which may be incurred by you, however caused and '
            'under any theory of liability. This shall include, but is not limited '
            'to, any loss of profit(whether incurred directly or indirectly), any '
            'loss of goodwill or business reputation and any other intangible loss.'),
    Term(
        title: 'Termination of Contract',
        desc: 'The Terms will continue to apply '
            'until terminated by either you or by Dynamic Sports Solutions Pty. Ltd '
            't/a Treiner as set out below.\nIf you want to terminate the Terms, you '
            'may do so by:\nproviding Dynamic Sports Solutions Pty. Ltd t/a Treiner '
            'with 30 day\' notice of your intention to terminate; and\nclosing your '
            'accounts for all of the services which you use, where Dynamic Sports '
            'Solutions Pty. Ltd t/a Treiner has made this option available to you.'
            '\nYour notice should be sent, in writing, to Dynamic Sports Solutions '
            'Pty. Ltd t/a Treiner via the \'Contact Us\' link on our homepage.'
            '\nDynamic Sports Solutions Pty. Ltd t/a Treiner may at any time, '
            'terminate the Terms with you if:\nyou have breached any provision of '
            'the Terms or intend to breach any provision;\nDynamic Sports Solutions '
            'Pty. Ltd t/a Treiner is required to do so by law;\nthe provision of the '
            'Services to you by Dynamic Sports Solutions Pty. Ltd t/a Treiner is, '
            'in the opinion of Dynamic Sports Solutions Pty. Ltd t/a Treiner, no '
            'longer commercially viable.\nSubject to local applicable laws, Dynamic '
            'Sports Solutions Pty. Ltd t/a Treiner reserves the right to discontinue '
            'or cancel your membership at any time and may suspend or deny, in its '
            'sole discretion, your access to all or any portion of the Website or '
            'the Services without notice if you breach any provision of the Terms '
            'or any applicable law or if your conduct impacts Dynamic Sports Solutions '
            'Pty. Ltd t/a Treiner’s name or reputation or violates the rights of those '
            'of another party.'),
    Term(
        title: 'Indemnity',
        desc: 'You agree to indemnify Dynamic Sports '
            'Solutions Pty. Ltd t/a Treiner, its affiliates, employees, agents, contributors,'
            ' third party content providers and licensors from and against:\nall actions, '
            'suits, claims, demands, liabilities, costs, expenses, loss and damage '
            '(including legal fees on a full indemnity basis) incurred, suffered or '
            'arising out of or in connection with Your Content;\nany direct or '
            'indirect consequences of you accessing, using or transacting on the '
            'Website or attempts to do so; and/or \nany breach of the Terms.'),
    Term(
        title: 'Dispute Resolution',
        desc: ' Compulsory:\nIf a dispute arises out '
            'of or relates to the Terms, either party may not commence any Tribunal or Court '
            'proceedings in relation to the dispute, unless the following clauses have been '
            'complied with (except where urgent interlocutory relief is sought).\n Notice:\nA '
            'party to the Terms claiming a dispute (\'Dispute\') has arisen under the Terms, '
            'must give written notice to the other party detailing the nature of the dispute, '
            'the desired outcome and the action required to settle the Dispute.\n Resolution:'
            '\nOn receipt of that notice (\'Notice\') by that other party, the parties '
            'to the Terms (\'Parties\') must:\n\nWithin 30 days of the Notice endeavour '
            'in good faith to resolve the Dispute expeditiously by negotiation or such '
            'other means upon which they may mutually agree;\nIf for any reason '
            'whatsoever, 30 days after the date of the Notice, the Dispute has not '
            'been resolved, the Parties must either agree upon selection of a mediator '
            'or request that an appropriate mediator be appointed by the President of '
            'the Australian Mediation Association or his or her nominee;\nThe Parties '
            'are equally liable for the fees and reasonable expenses of a mediator '
            'and the cost of the venue of the mediation and without limiting the '
            'foregoing undertake to pay any amounts requested by the mediator as a '
            'pre-condition to the mediation commencing. The Parties must each pay '
            'their own costs associated with the mediation;\nThe mediation will be '
            'held in Victoria, Australia.\n Confidential\nAll communications concerning '
            'negotiations made by the Parties arising out of and in connection with '
            'this dispute resolution clause are confidential and to the extent '
            'possible, must be treated as \"without prejudice\" negotiations for the '
            'purpose of applicable laws of evidence.\n Termination of Mediation:\nIf '
            '30 Days have elapsed after the start of a mediation of the Dispute and '
            'the Dispute has not been resolved, either Party may ask the mediator to '
            'terminate the mediation and the mediator must do so.'),
    Term(
        title: 'Venue and Jurisdiction',
        desc: 'The Services offered by Dynamic '
            'Sports Solutions Pty. Ltd t/a Treiner is intended to be viewed by '
            'residents of Australia. In the event of any dispute arising out of or '
            'in relation to the Website, you agree that the exclusive venue for '
            'resolving any dispute shall be in the courts of Victoria, Australia.'),
    Term(
        title: 'Governing Law',
        desc: 'The Terms are governed by the laws of '
            'Victoria, Australia. Any dispute, controversy, proceeding or claim of '
            'whatever nature arising out of or in any way relating to theTerms and '
            'the rights created hereby shall be governed, interpreted and construed '
            'by, under and pursuant to the laws of Victoria, Australia, without '
            'reference to conflict of law principles, notwithstanding mandatory rules. '
            'The validity of this governing law clause is not contested. The Terms '
            'shall be binding to the benefit of the parties hereto and their successors '
            'and assigns.'),
    Term(
        title: 'Independent Legal Advice',
        desc: 'Both parties confirm and declare '
            'that the provisions of the Terms are fair and reasonable and both parties '
            'having taken the opportunity to obtain independent legal advice and '
            'declare the Terms are not against public policy on the grounds of '
            'inequality or bargaining power or general grounds of restraint of trade.'),
    Term(
        title: 'Severance',
        desc: 'If any part of these Terms is found to be void '
            'or unenforceable by a Court of competent jurisdiction, that part shall '
            'be severed and the rest of the Terms shall remain in force.'),
  ];
}
