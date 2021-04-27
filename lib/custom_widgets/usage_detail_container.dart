import 'package:fake_mpwr/colors.dart';
import 'package:flutter/material.dart';

class UsageDetailContainer extends StatelessWidget {
  final IconData iconData;
  final String title;
  final double number1;
  final double number2;
  final String type;
  final String activeUntil;
  final String whatHour;
  final bool isVisible;

  const UsageDetailContainer(
      {Key key,
      this.iconData,
      this.title,
      this.number1,
      this.type,
      this.number2,
      this.activeUntil,
      this.whatHour,
      this.isVisible})
      : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
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
                  Row(
                    children: [
                      Text(
                        "$number1 $type",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: primary1,
                        ),
                      ),
                      Text(
                        " / $number2 $type",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: secondBlack,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Visibility(
                visible: isVisible,
                child: Icon(
                  Icons.check_circle_rounded,
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
                widthFactor: number1 / number2,
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
          SizedBox(height: 15),
          Text(
            "Active until $activeUntil at $whatHour",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: secondBlack,
            ),
          ),
        ],
      ),
    );
  }
}
