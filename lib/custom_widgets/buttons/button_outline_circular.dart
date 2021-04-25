import 'package:fake_mpwr/colors.dart';
import 'package:flutter/material.dart';

// Outline circular buat pushNamed
class OutlineCircularButton extends StatelessWidget {
  final IconData iconData;
  final String labelText;
  final Color myColor;
  final Function onPressed;

  // Function onPressed + async await
  const OutlineCircularButton(
      {Key key, this.iconData, this.labelText, this.myColor, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        primary: white,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(color: myColor),
        ),
      ),
      // Navigator Route
      onPressed: onPressed,
      icon: Icon(
        iconData,
        color: myColor,
      ),
      label: Text(
        labelText,
        style: TextStyle(color: myColor),
      ),
    );
  }
}
