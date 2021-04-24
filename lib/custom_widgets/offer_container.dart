import 'package:fake_mpwr/colors.dart';
import 'package:flutter/material.dart';

class OfferContainer extends StatelessWidget {
  final Color myColor;
  final String littleText;
  final String bigText;
  final String image;

  const OfferContainer(
      {Key key, this.myColor, this.littleText, this.bigText, this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    double myWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      padding: EdgeInsets.fromLTRB(0, 15, 15, 15),
      decoration: BoxDecoration(
        color: myColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            spreadRadius: 1,
            color: lightGrey2,
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.fromLTRB(20, 3, 6, 3),
                  decoration: BoxDecoration(
                    color: thirdBlack,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    littleText,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: white,
                    ),
                  ),
                ),
                Image.asset(
                  image,
                  width: myWidth * 0.3,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 6,
            child: Container(
              padding: EdgeInsets.only(top: 10, bottom: 15, left: 10),
              child: Text(
                bigText,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: white,
                  height: 1.5,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Icon(
              Icons.arrow_forward_ios_rounded,
              color: white,
              size: 14,
            ),
          ),
        ],
      ),
    );
  }
}
