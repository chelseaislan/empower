import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/app_ver_container.dart';
import 'package:fake_mpwr/custom_widgets/live_chat.dart';
import 'package:fake_mpwr/custom_widgets/outlined_circular_button.dart';
import 'package:fake_mpwr/custom_widgets/text_widgets/text_style_one.dart';
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
          TextStyleOne(title: "Your package details"),
          indicatorContainer(
              context, Icons.language_rounded, "Data", "0", "GB", 0),
          indicatorContainer(
              context, Icons.add_chart_rounded, "Topping", "0", "GB", 0),
          indicatorContainer(context, Icons.phone_callback_rounded, "Phone",
              "0", "minutes", 0),
          AppVerContainer(),
        ],
      ),
      floatingActionButton: LiveChat(),
    );
  }

  Container indicatorContainer(
      BuildContext context, icon, title, number, type, double remaining) {
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
              FractionallySizedBox(
                widthFactor: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: lightGrey2,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 10,
                ),
              ),
              FractionallySizedBox(
                widthFactor: remaining,
                child: Container(
                  // this container
                  decoration: BoxDecoration(
                    color: primary1,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 10,
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
        ],
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
            "No Data Available",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: white,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "Top up your data to enjoy Internet!",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: white,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 45,
                margin: EdgeInsets.symmetric(vertical: 10),
                child: OutlineCircularButton(
                  iconData: Icons.add_circle_rounded,
                  labelText: "Data",
                  route: "/add_data",
                  myColor: appBarColor,
                ),
              ),
              SizedBox(width: 5),
              Container(
                height: 45,
                margin: EdgeInsets.symmetric(vertical: 10),
                child: OutlineCircularButton(
                  iconData: Icons.add_circle_rounded,
                  labelText: "Topping",
                  route: "/add_topping",
                  myColor: appBarColor,
                ),
              ),
              SizedBox(width: 5),
              Container(
                height: 45,
                margin: EdgeInsets.symmetric(vertical: 10),
                child: OutlineCircularButton(
                  iconData: Icons.add_circle_rounded,
                  labelText: "Phone",
                  route: "/add_phone",
                  myColor: appBarColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
