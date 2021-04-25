import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/login_textfield.dart';
import 'package:fake_mpwr/custom_widgets/buttons/button_outline_circular.dart';
import 'package:fake_mpwr/custom_widgets/product_container.dart';
import 'package:fake_mpwr/custom_widgets/text_widgets/text_style_one.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class TrackCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey1,
      appBar: AppBar(
        backgroundColor: lightGrey1,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: secondBlack),
        title: Text(
          'Track My SIM Card',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: secondBlack,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: Text(
              "Input your tracking number to track and activate your SIM card.",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: secondBlack,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.only(bottom: 20),
            child: Image.asset(
              "images/track.png",
              fit: BoxFit.cover,
            ),
          ),
          LoginTextField(
            iconData: Icons.playlist_add_check_rounded,
            obscure: false,
            type: TextInputType.number,
            title: "Tracking Number",
          ),
          Container(
            height: 45,
            margin: EdgeInsets.fromLTRB(20, 5, 20, 30),
            child: OutlineCircularButton(
              iconData: Icons.search_rounded,
              labelText: "Track",
              myColor: primary1,
              // route: "/belum_ada",
              onPressed: () async {
                await Fluttertoast.showToast(
                    msg: "Searching...",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.BOTTOM);
              },
            ),
          ),
          TextStyleOne(title: "Latest status:"),
          ProductContainer(
            iconColor: primary1,
            iconData: Icons.local_shipping_rounded,
            shadowColor: lightGrey2,
            title: "Received by Astrid",
            subtitle: "06 January 2021",
            price: "Activate",
            onItemTap: () {
              Navigator.of(context).pushNamed("/activate_card");
            },
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
