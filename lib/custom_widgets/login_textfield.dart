import 'package:fake_mpwr/colors.dart';
import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  // 1. Declare final variables and contructor
  final String title;
  final TextInputType type;
  final bool obscure;
  final IconData iconData;

  const LoginTextField(
      {Key key, this.title, this.type, this.obscure, this.iconData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: lightGrey1,
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 5),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: secondBlack,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 5),
                padding: EdgeInsets.symmetric(vertical: 10),
                child: TextFormField(
                  keyboardType: type,
                  obscureText: obscure,
                  decoration: InputDecoration(
                    hintText: "Enter $title",
                    fillColor: white,
                    filled: true,
                    suffixIcon: Icon(
                      iconData,
                      color: primary1,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(width: 2, color: primary1),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(width: 2, color: primary1),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
