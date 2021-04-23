import 'package:fake_mpwr/colors.dart';
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
      body: ListView(
        children: [
          Column(
            children: [
              titleContainer(),
              timeContainer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    numberSelect("0814 4210 4304", true),
                    numberSelect("0814 2404 9783", false),
                    numberSelect("0814 3205 7354", false),
                    numberSelect("0814 1384 1435", false),
                    numberSelect("0814 1098 4629", false),
                  ],
                ),
              ),
              totalContainer(context)
            ],
          )
        ],
      ),
    );
  }

  Container totalContainer(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            flex: 7,
            child: Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                      spreadRadius: 1,
                      color: lightGrey2,
                    )
                  ]),
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total Price",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: secondBlack,
                    ),
                  ),
                  Text(
                    "Rp20.000",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: primary1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.of(context).pushNamed("/shipping"),
            child: Container(
              margin: EdgeInsets.only(left: 10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primary1,
              ),
              child: Icon(
                Icons.arrow_forward_ios_rounded,
                color: white,
              ),
            ),
          )
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
