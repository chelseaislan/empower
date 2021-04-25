import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/app_ver_container.dart';
import 'package:fake_mpwr/custom_widgets/live_chat.dart';
import 'package:fake_mpwr/custom_widgets/outlined_circular_button.dart';
import 'package:fake_mpwr/custom_widgets/text_widgets/text_style_one.dart';
import 'package:fake_mpwr/custom_widgets/usage_indicator_container.dart';
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
          GestureDetector(
            onTap: () => Navigator.of(context).pushNamed("/usage_detail"),
            child: Column(
              children: [
                UsageIndicator(
                  iconData: Icons.language_rounded,
                  title: "Remaining Data",
                  number: 0.toString(),
                  type: "GB",
                  remaining: 0.0,
                ),
                UsageIndicator(
                  iconData: Icons.add_chart_rounded,
                  title: "Remaining Topping",
                  number: 0.toString(),
                  type: "GB",
                  remaining: 0.0,
                ),
                UsageIndicator(
                  iconData: Icons.phone_callback_rounded,
                  title: "Remaining Phone",
                  number: 0.toString(),
                  type: "minutes",
                  remaining: 0.0,
                ),
              ],
            ),
          ),
          AppVerContainer(),
        ],
      ),
      floatingActionButton: LiveChat(),
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
