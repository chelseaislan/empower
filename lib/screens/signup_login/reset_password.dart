import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/login_textfield.dart';
import 'package:fake_mpwr/custom_widgets/buttons/button_outline_circular.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey1,
      appBar: AppBar(
        backgroundColor: lightGrey1,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: secondBlack),
        title: Text(
          'Reset Password',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: secondBlack,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: Text(
              "Forgot your password? Input your registered email address to get a one-time verification link.",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: secondBlack,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.only(bottom: 20),
            child: Image.asset(
              "images/lost.png",
              fit: BoxFit.cover,
            ),
          ),
          LoginTextField(
            iconData: Icons.email_rounded,
            obscure: false,
            type: TextInputType.emailAddress,
            title: "Email Address",
          ),
          Container(
            height: 45,
            margin: EdgeInsets.fromLTRB(20, 5, 20, 30),
            child: OutlineCircularButton(
              iconData: Icons.link_rounded,
              labelText: "Get Verification Link",
              myColor: primary1,
              onPressed: () {
                Fluttertoast.showToast(msg: "Please check your email!", toastLength: Toast.LENGTH_SHORT, gravity: ToastGravity.BOTTOM);
              },
            ),
          ),
        ],
      ),
    );
  }
}
