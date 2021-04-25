import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/filled_circular_button.dart';
import 'package:fake_mpwr/custom_widgets/login_textfield.dart';
import 'package:fake_mpwr/custom_widgets/outlined_circular_button.dart';
import 'package:flutter/material.dart';

class SignupLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary1,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.info_rounded, color: white),
            tooltip: "About",
          ),
        ],
      ),
      body: ListView(
        children: [
          headerContainer(),
          SizedBox(height: 20),
          LoginTextField(
            title: "Email Address",
            type: TextInputType.emailAddress,
            obscure: false,
            iconData: Icons.email_rounded,
          ),
          LoginTextField(
            title: "Password",
            type: TextInputType.text,
            obscure: true,
            iconData: Icons.vpn_key_rounded,
          ),
          Container(
            margin: EdgeInsets.fromLTRB(50, 20, 50, 10),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  blurRadius: 5,
                  spreadRadius: 1,
                  color: lightGrey2,
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.crop_square_rounded,
                      size: 40,
                      color: lightGrey2,
                    ),
                    SizedBox(width: 10),
                    Text(
                      "I'm not a robot",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: secondBlack,
                      ),
                    ),
                  ],
                ),
                Icon(Icons.rotate_left_rounded),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    signupButton(context),
                    Expanded(flex: 1, child: SizedBox()),
                    loginButton(context),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 45,
                  margin: EdgeInsets.only(bottom: 10),
                  child: OutlineCircularButton(
                    iconData: Icons.local_shipping_rounded,
                    labelText: "Track/Activate My SIM Card",
                    route: "/track_card",
                    myColor: primary1,
                  ),
                ),
                Container(
                  height: 45,
                  child: OutlineCircularButton(
                    iconData: Icons.password_rounded,
                    labelText: "Reset Password",
                    route: "/reset_pass",
                    myColor: primary1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Expanded loginButton(BuildContext context) {
    return Expanded(
      flex: 10,
      child: Container(
        height: 45,
        child: FilledCircularButton(
          iconData: Icons.login_rounded,
          labelText: "Log In",
          route: "/navbar",
        ),
      ),
    );
  }

  Expanded signupButton(BuildContext context) {
    return Expanded(
      flex: 10,
      child: Container(
        height: 45,
        child: OutlineCircularButton(
          iconData: Icons.group_add_rounded,
          labelText: "Sign Up",
          route: "/choose_number",
          myColor: primary1,
        ),
      ),
    );
  }

  Container headerContainer() {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 40, 20, 10),
      height: 160,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [primary1, primary2],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Hello there!",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: white,
            ),
          ),
          Text(
            "Log in or sign up for a new account.",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w400,
              color: white,
            ),
          ),
        ],
      ),
    );
  }
}
