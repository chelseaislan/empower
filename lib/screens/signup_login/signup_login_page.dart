import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/buttons/button_fill_circular.dart';
import 'package:fake_mpwr/custom_widgets/login_textfield.dart';
import 'package:fake_mpwr/custom_widgets/buttons/button_outline_circular.dart';
import 'package:flutter/material.dart';

class SignupLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
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
          IntroHeaderContainer(),
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
          RobotContainer(),
          // Container for login, signup, reset, track buttons
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 10,
                      child: Container(
                        height: 45,
                        child: OutlineCircularButton(
                          iconData: Icons.group_add_rounded,
                          labelText: "Sign Up",
                          onPressed: () async {
                            await Navigator.of(context)
                                .pushNamed("/choose_number");
                          },
                          myColor: primary1,
                        ),
                      ),
                    ),
                    Expanded(flex: 1, child: SizedBox()),
                    Expanded(
                      flex: 10,
                      child: Container(
                        height: 45,
                        child: FilledCircularButton(
                          iconData: Icons.login_rounded,
                          labelText: "Log In",
                          myColor: primary1,
                          onPressed: () async {
                            await Navigator.of(context).pushNamedAndRemoveUntil(
                                "/navbar", (route) => false);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 45,
                  margin: EdgeInsets.only(bottom: 10),
                  child: OutlineCircularButton(
                    iconData: Icons.local_shipping_rounded,
                    labelText: "Track/Activate My SIM Card",
                    onPressed: () async {
                      await Navigator.of(context).pushNamed("/track_card");
                    },
                    myColor: primary1,
                  ),
                ),
                Container(
                  height: 45,
                  child: OutlineCircularButton(
                    iconData: Icons.password_rounded,
                    labelText: "Reset Password",
                    onPressed: () async {
                      await Navigator.of(context).pushNamed("/reset_pass");
                    },
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
}

class RobotContainer extends StatelessWidget {
  const RobotContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

class IntroHeaderContainer extends StatelessWidget {
  const IntroHeaderContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 40, 20, 10),
      height: 160,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [appBarColor, primary1],
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
