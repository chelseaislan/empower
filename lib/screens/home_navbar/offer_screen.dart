import 'package:fake_mpwr/colors.dart';
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
      body: ListView(
        children: [
          headerContainer(),
          titleContainer("Offers from MPWR"),
          // ListView(
          //   scrollDirection: Axis.horizontal,
          //   children: [
          //     Container(
          //       width: 160,
          //       color: Colors.red,
          //     ),
          //     Container(
          //       width: 160,
          //       color: Colors.green,
          //     ),
          //     Container(
          //       width: 160,
          //       color: Colors.blue,
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }

  Container titleContainer(title) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: primaryBlack,
        ),
      ),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.language_rounded, color: primary1),
                      SizedBox(width: 5),
                      Text("7.54 GB"),
                    ],
                  ),
                  VerticalDivider(
                    width: 5,
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      Icon(Icons.add_circle_rounded, color: primary1),
                      SizedBox(width: 5),
                      Text("1.13 GB"),
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
