import 'package:fake_mpwr/colors.dart';
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
          titleContainer(),
          Column(
            children: [
              historyContainer(
                Icons.phone_in_talk_rounded,
                "All-net Basic",
                "22 April 2021",
                "Rp15.000",
              ),
              historyContainer(
                Icons.phone_android_rounded,
                "Friendly Package",
                "22 April 2021",
                "Rp50.000",
              ),
              historyContainer(
                Icons.phone_android_rounded,
                "PWR10",
                "07 April 2021",
                "Rp20.000",
              ),
              historyContainer(
                Icons.phone_in_talk_rounded,
                "All-net Basic",
                "21 March 2021",
                "Rp15.000",
              ),
            ],
          ),
          versionContainer()
        ],
      ),
    );
  }

  Container historyContainer(icon, title, date, price) {
    return Container(
      decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              spreadRadius: 1,
              color: lightGrey2,
            ),
          ]),
      margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(icon),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: secondBlack,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    date,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: secondBlack,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Text(
            price,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: primary1,
            ),
          ),
        ],
      ),
    );
  }

  Container titleContainer() {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Text(
        "Your latest transactions",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: primaryBlack,
        ),
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
          ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_circle_up_rounded,
              color: appBarColor,
            ),
            label: Text(
              "Top Up",
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
    );
  }
}
