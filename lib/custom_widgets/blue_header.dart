import 'package:fake_mpwr/colors.dart';
import 'package:flutter/material.dart';

class BlueHeader extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color textColor;

  const BlueHeader({Key key, this.title, this.subtitle, this.textColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.fromLTRB(20, 0, 20, 25),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [appBarColor, Colors.blueGrey[400]],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: TitleSubtitleColumn(
          title: title, textColor: textColor, subtitle: subtitle),
    );
  }
}

class TitleSubtitleColumn extends StatelessWidget {
  const TitleSubtitleColumn({
    Key key,
    @required this.title,
    @required this.textColor,
    @required this.subtitle,
  }) : super(key: key);

  final String title;
  final Color textColor;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: textColor,
          ),
        ),
        SizedBox(height: 5),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: textColor,
          ),
        ),
      ],
    );
  }
}
