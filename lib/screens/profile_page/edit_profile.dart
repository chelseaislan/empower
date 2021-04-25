import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/buttons/button_alert.dart';
import 'package:fake_mpwr/custom_widgets/login_textfield.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class EditProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey1,
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Edit Profile',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: white,
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 15),
            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [appBarColor, Colors.blueGrey[400]],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => Fluttertoast.showToast(
                      msg: "Coming soon!",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("images/profpic.jpg"),
                    radius: 50,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Tap to change profile picture.",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: white,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          LoginTextField(
            iconData: Icons.person_rounded,
            obscure: false,
            type: TextInputType.name,
            title: "Nickname",
          ),
          LoginTextField(
            iconData: Icons.email_rounded,
            obscure: false,
            type: TextInputType.emailAddress,
            title: "Email Address",
          ),
          LoginTextField(
            iconData: Icons.vpn_key_outlined,
            obscure: true,
            type: TextInputType.text,
            title: "Old Password",
          ),
          LoginTextField(
            iconData: Icons.vpn_key_rounded,
            obscure: true,
            type: TextInputType.text,
            title: "New Password",
          ),
          ButtonAlert(
            titleText: "Successful!",
            contentText: "You have successfully edited your profile.",
            alertText: "Go to Dashboard",
            buttonIcon: Icons.save_rounded,
            buttonText: "Save Profile",
            myColor: primary1,
            onPressed: () async {
              Fluttertoast.showToast(
                msg: "Profile saved.",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
              );
              await Navigator.of(context)
                  .pushNamedAndRemoveUntil("/navbar", (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
