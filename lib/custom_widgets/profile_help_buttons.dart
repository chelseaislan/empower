import 'package:fake_mpwr/colors.dart';
import 'package:flutter/material.dart';

class ProfileHelpButtons extends StatelessWidget {
  final String labelText;
  final Color materialColor;

  const ProfileHelpButtons({Key key, this.labelText, this.materialColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 5, 15, 10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: materialColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            labelText,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: white,
            ),
          ),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: white,
            size: 20,
          ),
        ],
      ),
    );
  }
}
