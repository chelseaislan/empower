import 'package:fake_mpwr/colors.dart';
import 'package:flutter/material.dart';

class PaymentOptions extends StatelessWidget {
  final String bankName;
  final bool visibleStatus;
  final String imagePath;
  final Color myColor;

  const PaymentOptions(
      {Key key,
      this.bankName,
      this.visibleStatus,
      this.imagePath,
      this.myColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              spreadRadius: 1,
              color: myColor,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                imagePath,
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bankName,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: secondBlack,
                    ),
                  ),
                  Text(
                    bankName,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: thirdBlack,
                    ),
                  ),
                ],
              )
            ],
          ),
          Visibility(
            visible: visibleStatus,
            child: Icon(
              Icons.check_circle_rounded,
              color: myColor,
            ),
          )
        ],
      ),
    );
  }
}
