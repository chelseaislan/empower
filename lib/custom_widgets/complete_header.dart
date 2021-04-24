import 'package:fake_mpwr/colors.dart';
import 'package:flutter/material.dart';

class CompleteHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(0, 60, 0, 20),
          child: Icon(
            Icons.check_circle_rounded,
            color: white,
            size: 150,
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Text(
                "Payment Complete",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: white,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Thank you, your order has been confirmed. A confirmation email has been sent to your registered email.",
                style: TextStyle(
                  height: 1.5,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        )
      ],
    );
  }
}
