import 'package:fake_mpwr/colors.dart';
import 'package:flutter/material.dart';

class ProductContainer extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String subtitle;
  final String price;
  final Color shadowColor;
  final Color iconColor;
  final onItemTap;

  const ProductContainer(
      {Key key,
      this.iconData,
      this.title,
      this.subtitle,
      this.price,
      this.shadowColor,
      this.iconColor,
      this.onItemTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onItemTap,
      child: Container(
        decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                blurRadius: 5,
                spreadRadius: 1,
                color: shadowColor,
              ),
            ]),
        margin: EdgeInsets.fromLTRB(20, 5, 20, 10),
        padding: EdgeInsets.all(15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(iconData, color: iconColor),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: secondBlack,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: thirdBlack,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              price,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: iconColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
