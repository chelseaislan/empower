import 'package:fake_mpwr/colors.dart';
import 'package:flutter/material.dart';

class AppVerContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
}
