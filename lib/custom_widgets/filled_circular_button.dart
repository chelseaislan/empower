import 'package:fake_mpwr/colors.dart';
import 'package:flutter/material.dart';

// Filled circular button buat push named and remove until
class FilledCircularButton extends StatelessWidget {
  final IconData iconData;
  final String labelText;
  final String route;

  const FilledCircularButton(
      {Key key, this.iconData, this.labelText, this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        primary: primary1,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: () {
        Navigator.of(context).pushNamedAndRemoveUntil(route, (route) => false);
      },
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
