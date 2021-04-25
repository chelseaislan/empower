import 'package:flutter/material.dart';

class ButtonAlert extends StatelessWidget {
  final String titleText;
  final String contentText;
  final String alertText;
  final IconData buttonIcon;
  final String buttonText;
  final Color myColor;
  final Function onPressed;

  const ButtonAlert(
      {Key key,
      this.titleText,
      this.contentText,
      this.alertText,
      this.buttonIcon,
      this.buttonText,
      this.myColor,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: EdgeInsets.fromLTRB(20, 5, 20, 30),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          primary: myColor,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(titleText),
              content: Text(contentText),
              actions: [
                TextButton(
                  onPressed: onPressed,
                  child: Text(alertText),
                ),
              ],
            ),
          );
        },
        icon: Icon(buttonIcon),
        label: Text(buttonText),
      ),
    );
  }
}
