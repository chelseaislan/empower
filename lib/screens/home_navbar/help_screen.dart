import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/containers/app_ver_container.dart';
import 'package:fake_mpwr/custom_widgets/buttons/live_chat.dart';
import 'package:fake_mpwr/custom_widgets/profile_help_buttons.dart';
import 'package:fake_mpwr/screens/home_navbar/offer_screen.dart';
import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey1,
      appBar: NavBarAppBar(appBarTitle: "Help Center"),
      body: ListView(
        children: [
          HeaderWithActionContainer(
            title: "Hi, Astrid S!",
            subtitle: "Looking for something today?",
            containerChild: TextFormField(
              decoration: InputDecoration(
                hintText: "Search for questions here...",
                fillColor: lightGrey1,
                filled: true,
                prefixIcon: Icon(
                  Icons.search_rounded,
                  color: appBarColor,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: lightGrey1, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: appBarColor, width: 2),
                ),
              ),
            ),
          ),
          ProfileHelpButtons(
            labelText: "Frequently Asked Questions",
            materialColor: Colors.amber[800],
          ),
          ProfileHelpButtons(
            labelText: "Submit a Help Ticket",
            materialColor: Colors.amber[800],
          ),
          ProfileHelpButtons(
            labelText: "View Help Ticket History",
            materialColor: Colors.amber[800],
          ),
          ProfileHelpButtons(
            labelText: "MPWR Terms of Use",
            materialColor: Colors.amber[800],
          ),
          ProfileHelpButtons(
            labelText: "MPWR Privacy Policy",
            materialColor: Colors.amber[800],
          ),
          Divider(
            height: 25,
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ),
          ProfileHelpButtons(
            labelText: "Unreg my SIM Card",
            materialColor: Colors.amber[800],
          ),
          AppVerContainer(),
        ],
      ),
      floatingActionButton: LiveChat(),
    );
  }
}

class HeaderWithActionContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final Widget containerChild;
  const HeaderWithActionContainer({
    Key key,
    this.title,
    this.subtitle,
    this.containerChild,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.fromLTRB(20, 5, 20, 20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [appBarColor, Colors.blueGrey[400]],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: white,
            ),
          ),
          SizedBox(height: 3),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: white,
            ),
          ),
          SizedBox(height: 15),
          Container(
            child: containerChild,
          ),
        ],
      ),
    );
  }
}
