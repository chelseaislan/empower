import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/buttons/button_alert.dart';
import 'package:fake_mpwr/custom_widgets/login_textfield.dart';
import 'package:flutter/material.dart';

class ActivateCard extends StatelessWidget {
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
          'Activate SIM Card',
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
              "Input the 16-digit ICCID number available at the back of your SIM card.",
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
              "images/activate.png",
              fit: BoxFit.cover,
            ),
          ),
          LoginTextField(
            iconData: Icons.stars_rounded,
            obscure: false,
            type: TextInputType.number,
            title: "ICCID Number",
          ),
          ButtonAlert(
            titleText: "Successful!",
            contentText:
                "You have activated your MPWR SIM card. Enjoy Internet!",
            alertText: "Go to Login Page",
            buttonIcon: Icons.phonelink_setup_rounded,
            buttonText: "Activate Card",
            myColor: primary1,
            onPressed: () async {
              await Navigator.of(context)
                  .pushNamedAndRemoveUntil("/login", (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
