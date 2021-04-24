import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/ad_container.dart';
import 'package:fake_mpwr/custom_widgets/app_ver_container.dart';
import 'package:fake_mpwr/custom_widgets/live_chat.dart';
import 'package:fake_mpwr/custom_widgets/offer_container.dart';
import 'package:fake_mpwr/custom_widgets/text_widgets/text_style_one.dart';
import 'package:flutter/material.dart';

class OfferScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Dashboard',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            headerContainer(),
            Container(
                margin: EdgeInsets.only(bottom: 5),
                alignment: Alignment.centerLeft,
                child: TextStyleOne(title: "Offers from our partners")),
            SizedBox(
              height: 80,
              child: Container(
                padding: EdgeInsets.only(left: 10),
                child: ListView(
                  physics: ClampingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    AdContainer(adImage: "images/ad1.jpg"),
                    AdContainer(adImage: "images/ad2.jpg"),
                    AdContainer(adImage: "images/ad3.jpg"),
                  ],
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: 15),
                alignment: Alignment.centerLeft,
                child: TextStyleOne(title: "Latest from MPWR")),
            Column(
              children: [
                OfferContainer(
                  myColor: primary1,
                  littleText: "Ramadan",
                  image: "images/bike.png",
                  bigText:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                ),
                OfferContainer(
                  myColor: Colors.teal[800],
                  littleText: "Discover",
                  image: "images/bike.png",
                  bigText:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                ),
                OfferContainer(
                  myColor: Colors.blueGrey[800],
                  littleText: "Referrals",
                  image: "images/bike.png",
                  bigText:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                ),
              ],
            ),
            AppVerContainer(),
          ],
        ),
      ),
      floatingActionButton: LiveChat(),
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
            "Good afternoon!",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: white,
            ),
          ),
          SizedBox(height: 3),
          Text(
            "Here are interesting offers just for you!",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: white,
            ),
          ),
          SizedBox(height: 15),
          Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: lightGrey1,
              borderRadius: BorderRadius.circular(15),
            ),
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.language_rounded, color: primary1),
                      SizedBox(width: 5),
                      Text("0 GB"),
                    ],
                  ),
                  VerticalDivider(
                    width: 5,
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      Icon(Icons.add_chart_rounded, color: primary1),
                      SizedBox(width: 5),
                      Text("0 GB"),
                    ],
                  ),
                  VerticalDivider(
                    width: 5,
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      Icon(Icons.phone_callback_rounded, color: primary1),
                      SizedBox(width: 5),
                      Text("0 minutes"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
