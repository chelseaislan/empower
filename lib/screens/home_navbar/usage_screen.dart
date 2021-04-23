import 'package:fake_mpwr/colors.dart';
import 'package:flutter/material.dart';

class UsageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey1,
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'My Data Usage',
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
          usageContainer(),
          titleContainer(),
          indicatorContainer(
              context, Icons.language_rounded, "Data", "7.54", "GB", 0.6),
          indicatorContainer(
              context, Icons.add_circle_rounded, "Topping", "1.13", "GB", 0.1),
          indicatorContainer(context, Icons.phone_callback_rounded, "Phone",
              "0", "minutes", 0),
          versionContainer(),
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

  Container indicatorContainer(
      BuildContext context, icon, title, number, type, remaining) {
    double indicatorWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(20, 5, 20, 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            spreadRadius: 1,
            color: lightGrey2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                    color: primary1,
                    size: 18,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Remaining $title",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: secondBlack,
                    ),
                  ),
                ],
              ),
              Text(
                "$number $type",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: primary1,
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: lightGrey2,
                  borderRadius: BorderRadius.circular(30),
                ),
                width: indicatorWidth,
                height: 10,
              ),
              Container(
                // this container
                decoration: BoxDecoration(
                  color: primary1,
                  borderRadius: BorderRadius.circular(30),
                ),
                width: indicatorWidth * remaining,
                height: 10,
              ),
            ],
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }

  Container titleContainer() {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Text(
        "Your package details",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: secondBlack,
        ),
      ),
    );
  }

  Container usageContainer() {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.fromLTRB(20, 0, 20, 15),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [appBarColor, Colors.blueGrey[400]],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Friendly Package",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: white,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "12GB, 30 days until 22 May 2021 at 12:29",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: white,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.add_circle_rounded,
                  color: appBarColor,
                ),
                label: Text(
                  "Add Topping",
                  style: TextStyle(color: appBarColor, fontSize: 12),
                ),
                style: ElevatedButton.styleFrom(
                  primary: white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.phone_callback_rounded,
                  color: appBarColor,
                ),
                label: Text(
                  "Add Phone Package",
                  style: TextStyle(color: appBarColor, fontSize: 12),
                ),
                style: ElevatedButton.styleFrom(
                  primary: white,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}