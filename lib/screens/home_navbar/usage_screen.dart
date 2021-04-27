import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/containers/app_ver_container.dart';
import 'package:fake_mpwr/custom_widgets/buttons/live_chat.dart';
import 'package:fake_mpwr/custom_widgets/buttons/button_outline_circular.dart';
import 'package:fake_mpwr/custom_widgets/text_widgets/text_style_one.dart';
import 'package:fake_mpwr/custom_widgets/usage_indicator_container.dart';
import 'package:fake_mpwr/screens/home_navbar/offer_screen.dart';
import 'package:fake_mpwr/screens/home_navbar/wallet_screen.dart';
import 'package:flutter/material.dart';

class UsageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey1,
      appBar: NavBarAppBar(appBarTitle: "My Data Usage"),
      body: ListView(
        children: [
          MyBalanceContainer(
            title: "No Data Package Available",
            titleStyle: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: white,
            ),
            subtitle: "Top up your data to enjoy Internet!",
            subStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: white,
            ),
            childWidget: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 45,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: OutlineCircularButton(
                    iconData: Icons.add_circle_rounded,
                    labelText: "Data",
                    onPressed: () async {
                      await Navigator.of(context).pushNamed("/add_data");
                    },
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
                    onPressed: () async {
                      await Navigator.of(context).pushNamed("/add_topping");
                    },
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
                    onPressed: () async {
                      await Navigator.of(context).pushNamed("/add_phone");
                    },
                    myColor: appBarColor,
                  ),
                ),
              ],
            ),
          ),
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
}
