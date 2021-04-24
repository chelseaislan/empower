import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/total_price_new.dart';
import 'package:flutter/material.dart';

class ChooseNumber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey1,
      appBar: AppBar(
        iconTheme: IconThemeData(color: secondBlack),
        backgroundColor: lightGrey1,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Choose Phone Number',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: secondBlack,
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              titleContainer(),
              timeContainer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    numberSelect("0814 1416 9420", true),
                    numberSelect("0814 2404 5366", false),
                    numberSelect("0814 3205 7421", false),
                    numberSelect("0814 1384 1098", false),
                    numberSelect("0814 1098 6547", false),
                  ],
                ),
              ),
              SizedBox(height: 115),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: TotalPriceNew(
              titleText: "Total Price:",
              totalPrice: "30.000",
              routeNext: "/shipping",
              myColor: primary1,
            ),
          ),
        ],
      ),
    );
  }

  Container numberSelect(phoneNum, visibleStatus) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              spreadRadius: 1,
              color: primary1,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            phoneNum,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: secondBlack,
            ),
          ),
          Visibility(
            visible: visibleStatus,
            child: Icon(
              Icons.check_circle_rounded,
              color: primary1,
            ),
          )
        ],
      ),
    );
  }

  Container timeContainer() {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 10, bottom: 20),
      child: Text(
        "05:00",
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: secondBlack,
        ),
      ),
    );
  }

  Container titleContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Choose your own number!",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: secondBlack,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "These phone numbers will expire in:",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: secondBlack,
            ),
          ),
        ],
      ),
    );
  }
}
