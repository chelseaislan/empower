import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/containers/ad_container.dart';
import 'package:fake_mpwr/custom_widgets/containers/app_ver_container.dart';
import 'package:fake_mpwr/custom_widgets/buttons/live_chat.dart';
import 'package:fake_mpwr/custom_widgets/containers/latest_offer_container.dart';
import 'package:fake_mpwr/custom_widgets/text_widgets/text_style_one.dart';
import 'package:fake_mpwr/screens/home_navbar/help_screen.dart';
import 'package:flutter/material.dart';

class OfferScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey1,
      appBar: NavBarAppBar(appBarTitle: "MPWR - Dashboard"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWithActionContainer(
              title: "Good morning!",
              subtitle: "Here are interesting offers just for you!",
              containerChild: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed("/usage_detail");
                },
                child: Container(
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
                            Icon(Icons.addchart_rounded, color: primary1),
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
              ),
            ),
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
}

class NavBarAppBar extends StatelessWidget with PreferredSizeWidget {
  final String appBarTitle;
  const NavBarAppBar({
    Key key,
    this.appBarTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColor,
      centerTitle: true,
      elevation: 0,
      title: Text(
        appBarTitle,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: white,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_rounded),
          tooltip: "Notifications",
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
