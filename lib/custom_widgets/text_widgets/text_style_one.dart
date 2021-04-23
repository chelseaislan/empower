import 'package:fake_mpwr/colors.dart';
import 'package:flutter/material.dart';

class TextStyleOne extends StatelessWidget {
  final String title;

  const TextStyleOne({Key key, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
}
