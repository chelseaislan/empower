import 'package:fake_mpwr/colors.dart';
import 'package:flutter/material.dart';

class TotalPriceNew extends StatelessWidget {
  // 1. Declare required final variables and auto create constructor
  final String titleText;
  final String totalPrice;
  final String route;

  const TotalPriceNew({Key key, this.titleText, this.totalPrice, this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    titleText,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: secondBlack,
                    ),
                  ),
                  Text(
                    "Rp$totalPrice",
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
            onTap: () => Navigator.of(context).pushNamed(route),
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
}
