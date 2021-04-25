import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/app_ver_container.dart';
import 'package:fake_mpwr/custom_widgets/live_chat.dart';
import 'package:fake_mpwr/custom_widgets/profile_help_buttons.dart';
import 'package:flutter/material.dart';
import 'package:group_button/group_button.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey1,
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'My Profile',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.mail_rounded),
            tooltip: "Notifications",
          ),
        ],
      ),
      body: ListView(
        children: [
          profileContainer(),
          GestureDetector(
            onTap: () => Navigator.of(context).pushNamed("/edit_profile"),
            child: ProfileHelpButtons(
              labelText: "Edit Profile",
              materialColor: Colors.red[800],
            ),
          ),
          ProfileHelpButtons(
            labelText: "Invite friends to get rewards!",
            materialColor: Colors.red[800],
          ),
          GestureDetector(
            onTap: () {
              return showDialog(
                context: context,
                builder: (builder) => AlertDialog(
                  title: Text("Lost your SIM card?"),
                  content: Text(
                      "You can send an email to us. We will gather your personal data and device information for verification in the email."),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Cancel"),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text("Send Email"),
                    ),
                  ],
                ),
              );
            },
            child: ProfileHelpButtons(
              labelText: "Lost your SIM card?",
              materialColor: Colors.red[800],
            ),
          ),
          ProfileHelpButtons(
            labelText: "Edit shipping address",
            materialColor: Colors.red[800],
          ),
          GestureDetector(
            onTap: () {
              return showDialog(
                context: context,
                builder: (builder) => AlertDialog(
                  title: Text("Change Language"),
                  content: GroupButton(
                    isRadio: true,
                    spacing: 3,
                    buttons: [
                      "🇮🇩 Bahasa Indonesia",
                      "🇺🇸 English (United States)"
                    ],
                    unselectedTextStyle: TextStyle(
                        fontWeight: FontWeight.w400, color: secondBlack),
                    selectedColor: primary1,
                    selectedButtons: ["🇮🇩 Bahasa Indonesia"],
                    onSelected: (index, isSelected) =>
                        print('$index button is selected'),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text("Save Changes"),
                    ),
                  ],
                ),
              );
            },
            child: ProfileHelpButtons(
              labelText: "Change Language",
              materialColor: Colors.red[800],
            ),
          ),
          GestureDetector(
            child: ProfileHelpButtons(
              labelText: "Log Out",
              materialColor: Colors.red[800],
            ),
            onTap: () {
              // Show Dialog for confirmation
              return showDialog(
                context: context,
                builder: (builder) => AlertDialog(
                  title: Text("Confirmation"),
                  content: Text("Log out from MPWR?"),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: primary1,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            "/login", (route) => false);
                      },
                      child: Text(
                        "Log Out",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: primary1,
                        ),
                      ),
                    ),
                  ],
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

  Container profileContainer() {
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
            backgroundImage: AssetImage("images/profpic.jpg"),
            radius: 50,
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Astrid S",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: white,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "0814 9582 1048",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: white,
                ),
              ),
              Text(
                "astrids@gmail.com",
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
