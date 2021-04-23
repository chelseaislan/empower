import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/blue_header.dart';
import 'package:fake_mpwr/custom_widgets/icons_container.dart';
import 'package:fake_mpwr/custom_widgets/total_price_new.dart';
import 'package:flutter/material.dart';

class AddTopping extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey1,
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Add Topping',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: white,
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              BlueHeader(
                title: "Level up your life!",
                subtitle:
                    "You can buy toppings only for the applications that you know and love.",
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  children: [
                    Row(
                      children: [
                        IconsContainer(icon: "fb", title: "Facebook"),
                        IconsContainer(icon: "ig", title: "Instagram"),
                        IconsContainer(icon: "wa", title: "WhatsApp"),
                        IconsContainer(icon: "tw", title: "Twitter"),
                      ],
                    ),
                    Row(
                      children: [
                        IconsContainer(icon: "msg", title: "Messenger"),
                        IconsContainer(icon: "sc", title: "Snapchat"),
                        IconsContainer(icon: "red", title: "Reddit"),
                        IconsContainer(icon: "yt", title: "YouTube"),
                      ],
                    ),
                    Row(
                      children: [
                        IconsContainer(icon: "sp", title: "Spotify"),
                        IconsContainer(icon: "wat", title: "Wattpad"),
                        IconsContainer(icon: "git", title: "GitHub"),
                        IconsContainer(icon: "in", title: "LinkedIn"),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 115),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: TotalPriceNew(
              totalPrice: "0",
              titleText: "Total Price:",
              routeNext: "/add_payment",
              myColor: appBarColor,
            ),
          ),
        ],
      ),
    );
  }
}
