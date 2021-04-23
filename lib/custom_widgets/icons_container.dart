import 'package:fake_mpwr/colors.dart';
import 'package:flutter/material.dart';

class IconsContainer extends StatelessWidget {
  final String icon;
  final String title;

  const IconsContainer({Key key, this.icon, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        margin: EdgeInsets.fromLTRB(5, 10, 5, 10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                spreadRadius: 1,
                color: lightGrey2,
              ),
            ]),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 5),
              width: 45,
              height: 45,
              child: Image.asset(
                "icons/$icon.png",
                fit: BoxFit.cover,
              ),
            ),
            Text(
              title,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: secondBlack,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
