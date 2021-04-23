import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/filled_circular_button.dart';
import 'package:fake_mpwr/custom_widgets/login_textfield.dart';
import 'package:fake_mpwr/custom_widgets/outlined_circular_button.dart';
import 'package:flutter/material.dart';

class SignupLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
            child: Row(
              children: [
                signupButton(context),
                Expanded(flex: 1, child: SizedBox()),
                loginButton(context),
              ],
            ),
          ),
          shippingContainer(context),
        ],
      ),
    );
  }

  Container shippingContainer(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 45,
      child: OutlineCircularButton(
        iconData: Icons.local_shipping_rounded,
        labelText: "Track My SIM Card 1",
        route: "/track_card",
        myColor: primary1,
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
          labelText: "Log In 1",
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
          labelText: "Sign Up 1",
          route: "/choose_number",
          myColor: primary1,
        ),
      ),
    );
  }

  Container headerContainer() {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 80, 20, 20),
      height: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [primary1, primary2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
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
