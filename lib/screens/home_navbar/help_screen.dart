import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/app_ver_container.dart';
import 'package:fake_mpwr/custom_widgets/profile_help_buttons.dart';
import 'package:flutter/material.dart';

class HelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Help Center',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.mail_rounded),
            tooltip: "Notifications",
          ),
        ],
      ),
      body: ListView(
        children: [
          headerContainer(),
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
    );
  }

  Container headerContainer() {
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
            "Hi, Astrid S!",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: white,
            ),
          ),
          SizedBox(height: 3),
          Text(
            "Looking for something today?",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: white,
            ),
          ),
          SizedBox(height: 15),
          Container(
            child: TextFormField(
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
          )
        ],
      ),
    );
  }
}
