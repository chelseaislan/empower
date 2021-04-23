import 'package:fake_mpwr/colors.dart';
import 'package:flutter/material.dart';

class SignupLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              headerContainer(),
              textFieldContainer(),
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Row(
                  children: [
                    signupButton(context),
                    Expanded(flex: 1, child: SizedBox()),
                    loginButton(context),
                  ],
                ),
              )
            ],
          ),
          shippingContainer(context),
        ],
      ),
    );
  }

  Container shippingContainer(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 45,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          primary: white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(color: primary1),
          ),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed("/trace_card");
        },
        icon: Icon(
          Icons.local_shipping_rounded,
          color: primary1,
        ),
        label: Text(
          "Track My SIM Card",
          style: TextStyle(color: primary1),
        ),
      ),
    );
  }

  Expanded loginButton(BuildContext context) {
    return Expanded(
      flex: 10,
      child: Container(
        height: 45,
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            primary: primary1,
            elevation: 0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          onPressed: () {
            Navigator.of(context)
                .pushNamedAndRemoveUntil("/navbar", (route) => false);
          },
          icon: Icon(
            Icons.login_rounded,
            color: white,
          ),
          label: Text("Log In"),
        ),
      ),
    );
  }

  Expanded signupButton(BuildContext context) {
    return Expanded(
      flex: 10,
      child: Container(
        height: 45,
        child: ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            primary: white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: BorderSide(color: primary1),
            ),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed("/choose_number");
          },
          icon: Icon(
            Icons.group_add_rounded,
            color: primary1,
          ),
          label: Text(
            "Sign Up",
            style: TextStyle(color: primary1),
          ),
        ),
      ),
    );
  }

  Container textFieldContainer() {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
      color: lightGrey1,
      child: Column(
        children: [
          textFieldColumn(
            "Email Address",
            TextInputType.emailAddress,
            false,
            Icons.email_rounded,
          ),
          textFieldColumn(
            "Password",
            TextInputType.text,
            true,
            Icons.vpn_key_rounded,
          ),
        ],
      ),
    );
  }

  Column textFieldColumn(title, type, obscure, icon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(5, 5, 0, 5),
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
          padding: EdgeInsets.symmetric(vertical: 10),
          child: TextFormField(
            keyboardType: type,
            obscureText: obscure,
            decoration: InputDecoration(
              hintText: "Enter $title",
              fillColor: white,
              filled: true,
              suffixIcon: Icon(
                icon,
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
