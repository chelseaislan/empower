import 'package:fake_mpwr/colors.dart';
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
          buttonContainer("Frequently Asked Questions"),
          buttonContainer("Submit a Help Ticket"),
          buttonContainer("View my Help Ticket history"),
          buttonContainer("MPWR Terms of Use"),
          buttonContainer("MPWR Privacy Policy"),
          Divider(
            height: 25,
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ),
          buttonContainer("Unreg my SIM Card"),
          versionContainer()
        ],
      ),
    );
  }

  Container versionContainer() {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Text(
        "MPWR version 4.2.0, All Rights Reserved",
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: lightGrey2,
        ),
      ),
    );
  }

  Container buttonContainer(title) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.amber[800],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: white,
            ),
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: white,
            size: 20,
          ),
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
