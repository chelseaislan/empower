import 'package:fake_mpwr/colors.dart';
import 'package:flutter/material.dart';

class ButtonAlert extends StatelessWidget {
  final String titleText;
  final String contentText;
  final String route;
  final IconData alertIcon;
  final String alertText;
  final IconData buttonIcon;
  final String buttonText;

  const ButtonAlert(
      {Key key,
      this.titleText,
      this.contentText,
      this.route,
      this.alertIcon,
      this.alertText,
      this.buttonIcon,
      this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      margin: EdgeInsets.fromLTRB(20, 5, 20, 30),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          primary: primary1,
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
                TextButton.icon(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil(route, (route) => false);
                  },
                  icon: Icon(alertIcon),
                  label: Text(alertText),
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
