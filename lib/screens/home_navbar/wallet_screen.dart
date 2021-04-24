import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/app_ver_container.dart';
import 'package:fake_mpwr/custom_widgets/live_chat.dart';
import 'package:fake_mpwr/custom_widgets/outlined_circular_button.dart';
import 'package:fake_mpwr/custom_widgets/product_container.dart';
import 'package:fake_mpwr/custom_widgets/text_widgets/text_style_one.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey1,
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'My Balance',
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
          balanceContainer(),
          TextStyleOne(title: "Your latest transactions"),
          Column(
            children: [
              ProductContainer(
                iconData: Icons.phonelink_ring_rounded,
                iconColor: primary1,
                shadowColor: lightGrey2,
                title: "Pulsa 15.000",
                subtitle: "22 April 2021",
                price: "Rp15.000",
              ),
              ProductContainer(
                iconData: Icons.language_rounded,
                iconColor: primary1,
                shadowColor: lightGrey2,
                title: "Friendly Package",
                subtitle: "22 April 2021",
                price: "Rp50.000",
              ),
              ProductContainer(
                iconData: Icons.language_rounded,
                iconColor: primary1,
                shadowColor: lightGrey2,
                title: "PWR10",
                subtitle: "07 April 2021",
                price: "Rp20.000",
              ),
              ProductContainer(
                iconData: Icons.phonelink_ring_rounded,
                iconColor: primary1,
                shadowColor: lightGrey2,
                title: "Pulsa 15.000",
                subtitle: "21 March 2021",
                price: "Rp15.000",
              ),
              ProductContainer(
                iconData: Icons.add_chart_rounded,
                iconColor: primary1,
                shadowColor: lightGrey2,
                title: "GitHub Topping",
                subtitle: "20 March 2021",
                price: "Rp10.000",
              ),
              ProductContainer(
                iconData: Icons.add_chart_rounded,
                iconColor: primary1,
                shadowColor: lightGrey2,
                title: "Reddit Topping",
                subtitle: "12 March 2021",
                price: "Rp10.000",
              ),
              ProductContainer(
                iconData: Icons.language_rounded,
                iconColor: primary1,
                shadowColor: lightGrey2,
                title: "6 Month Bonus",
                subtitle: "1 March 2021",
                price: "Rp0",
              ),
            ],
          ),
          AppVerContainer()
        ],
      ),
      floatingActionButton: LiveChat(),
    );
  }

  Container balanceContainer() {
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Rp70.000",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w600,
              color: white,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "Card is active until 24 July 2022 at 23:10",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: white,
            ),
          ),
          SizedBox(height: 10),
          Container(
            height: 45,
            margin: EdgeInsets.symmetric(vertical: 10),
            child: OutlineCircularButton(
              iconData: Icons.add_circle_rounded,
              labelText: "Top-up Balance",
              route: "/add_balance",
              myColor: appBarColor,
            ),
          ),
        ],
      ),
    );
  }
}
