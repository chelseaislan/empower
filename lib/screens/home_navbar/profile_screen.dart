import 'package:fake_mpwr/colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey1,
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'My Profile',
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
          profileContainer(),
          buttonContainer("Edit Profile"),
          buttonContainer("Invite friends to get rewards!"),
          buttonContainer("Lost your SIM card?"),
          buttonContainer("Edit shipping address"),
          buttonContainer("Change Language"),
          GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil("/login", (route) => false);
              },
              child: buttonContainer("Log Out")),
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
        color: Colors.red[800],
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

  Container profileContainer() {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [appBarColor, Colors.blueGrey[400]],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("images/profpic.jpg"),
            radius: 40,
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Astrid S",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: white,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "0814 9582 1048",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: white,
                ),
              ),
              Text(
                "astrids@gmail.com",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
