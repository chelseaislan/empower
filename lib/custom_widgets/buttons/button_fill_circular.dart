import 'package:fake_mpwr/colors.dart';
import 'package:flutter/material.dart';

// Filled circular button buat push named and remove until
class FilledCircularButton extends StatelessWidget {
  final IconData iconData;
  final String labelText;
  final Color myColor;
  final Function onPressed;

  const FilledCircularButton(
      {Key key, this.iconData, this.labelText, this.myColor, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        primary: myColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: onPressed,
      icon: Icon(
        iconData,
        color: white,
      ),
      label: Text(
        labelText,
        style: TextStyle(color: white),
      ),
    );
  }
}
