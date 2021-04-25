import 'package:fake_mpwr/colors.dart';
import 'package:flutter/material.dart';

class UsageIndicator extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String number;
  final String type;
  final double remaining;

  const UsageIndicator(
      {Key key,
      this.iconData,
      this.title,
      this.number,
      this.type,
      this.remaining})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 5, 20, 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            spreadRadius: 1,
            color: lightGrey2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    iconData,
                    color: primary1,
                    size: 18,
                  ),
                  SizedBox(width: 10),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: secondBlack,
                    ),
                  ),
                ],
              ),
              Text(
                "$number $type",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: primary1,
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Stack(
            children: [
              FractionallySizedBox(
                widthFactor: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: lightGrey2,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 10,
                ),
              ),
              FractionallySizedBox(
                widthFactor: remaining,
                child: Container(
                  // this container
                  decoration: BoxDecoration(
                    color: primary1,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 10,
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
