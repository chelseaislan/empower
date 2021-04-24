import 'package:flutter/material.dart';

class AdContainer extends StatelessWidget {
  final String adImage;

  const AdContainer({Key key, this.adImage}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      width: 320,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          adImage,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
