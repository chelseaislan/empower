import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/containers/app_ver_container.dart';
import 'package:fake_mpwr/custom_widgets/buttons/live_chat.dart';
import 'package:fake_mpwr/custom_widgets/profile_help_buttons.dart';
import 'package:fake_mpwr/screens/home_navbar/offer_screen.dart';
import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey1,
      appBar: NavBarAppBar(appBarTitle: "My Profile"),
      body: ListView(
        children: [
          ProfileHeaderContainer(
            imagePath: "images/profpic.jpg",
            nickName: "Astrid S",
            phoneNumber: "0814 1848 2099",
            emailAddress: "astrids@gmail.com",
          ),
          ProfileHelpButtons(
            labelText: "Edit Profile",
            materialColor: Colors.red[800],
            onItemTap: () => Navigator.of(context).pushNamed("/edit_profile"),
          ),
          ProfileHelpButtons(
            labelText: "Invite friends to get rewards!",
            materialColor: Colors.red[800],
            onItemTap: () => Navigator.of(context).pushNamed("/referral"),
          ),
          ProfileHelpButtons(
            labelText: "Lost your SIM card?",
            materialColor: Colors.red[800],
            onItemTap: () {
              return showDialog(
                context: context,
                builder: (builder) => TextAlertDialog(
                  alertTitle: "Lost your SIM card?",
                  alertContent: Text(
                      "Contact us through email and send all the details that you have."),
                  alertTrueButton: "Okay",
                  alertTrueRoute: () async => Navigator.of(context).pop(),
                ),
              );
            },
          ),
          ProfileHelpButtons(
            labelText: "Edit shipping address",
            materialColor: Colors.red[800],
            onItemTap: () => Navigator.of(context).pushNamed("/edit_address"),
          ),
          ProfileHelpButtons(
            labelText: "Change Language",
            materialColor: Colors.red[800],
            onItemTap: () {
              return showDialog(
                context: context,
                builder: (builder) => TextAlertDialog(
                  alertTitle: "Change Language",
                  alertTrueButton: "Confirm",
                  alertTrueRoute: () async {
                    await Navigator.of(context)
                        .pushNamedAndRemoveUntil("/login", (route) => false);
                  },
                  alertContent: GroupButton(
                    isRadio: true,
                    spacing: 1,
                    unselectedTextStyle: TextStyle(
                        fontWeight: FontWeight.w400, color: secondBlack),
                    selectedColor: primary1,
                    selectedButtons: ["🇮🇩 Bahasa Indonesia"],
                    buttons: [
                      "🇮🇩 Bahasa Indonesia",
                      "🇺🇸 English (United States)",
                      "🇷🇺 Русский (Russian)",
                    ],
                    onSelected: (index, isSelected) =>
                        print('$index button is selected'),
                  ),
                ),
              );
            },
          ),
          ProfileHelpButtons(
            labelText: "Log Out",
            materialColor: Colors.red[800],
            onItemTap: () {
              return showDialog(
                context: context,
                builder: (builder) => TextAlertDialog(
                  alertTitle: "Confirmation",
                  alertContent:
                      Text("Do you really want to log out from MPWR?"),
                  alertTrueButton: "Log Out",
                  alertTrueRoute: () async {
                    await Navigator.of(context)
                        .pushNamedAndRemoveUntil("/login", (route) => false);
                  },
                ),
              );
            },
          ),
          AppVerContainer(),
        ],
      ),
      floatingActionButton: LiveChat(),
    );
  }
}

class TextAlertDialog extends StatelessWidget {
  // Cancel let it as it is
  final String alertTitle;
  final Widget alertContent;
  final String alertTrueButton;
  final Function alertTrueRoute;
  const TextAlertDialog({
    Key key,
    this.alertTitle,
    this.alertContent,
    this.alertTrueButton,
    this.alertTrueRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(alertTitle),
      content: alertContent,
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text("Cancel"),
        ),
        TextButton(
          onPressed: alertTrueRoute,
          child: Text(alertTrueButton),
        ),
      ],
    );
  }
}

class ProfileHeaderContainer extends StatelessWidget {
  final String imagePath;
  final String nickName;
  final String phoneNumber;
  final String emailAddress;

  const ProfileHeaderContainer({
    Key key,
    this.imagePath,
    this.nickName,
    this.phoneNumber,
    this.emailAddress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.fromLTRB(20, 10, 20, 30),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [appBarColor, Colors.blueGrey[400]],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(imagePath),
            radius: 50,
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nickName,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: white,
                ),
              ),
              SizedBox(height: 5),
              Text(
                phoneNumber,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: white,
                ),
              ),
              Text(
                emailAddress,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
