import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/blue_header.dart';
import 'package:fake_mpwr/custom_widgets/buttons/button_alert.dart';
import 'package:fake_mpwr/custom_widgets/login_textfield.dart';
import 'package:fake_mpwr/screens/top_up/add_data.dart';
import 'package:flutter/material.dart';

class EditAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NoActionsAppBar(appBarTitle: "Edit Shipping Address"),
      body: Stack(
        children: [
          ListView(
            children: [
              BlueHeader(
                title: "Moved to a new location?",
                subtitle:
                    "Edit your address here in case if your SIM card has been damaged or lost.",
                textColor: white,
              ),
              LoginTextField(
                title: "Shipping Address",
                type: TextInputType.streetAddress,
                obscure: false,
                iconData: Icons.location_city_rounded,
              ),
              LoginTextField(
                title: "Postal Code",
                type: TextInputType.number,
                obscure: false,
                iconData: Icons.location_on_rounded,
              ),
              LoginTextField(
                title: "Recipient Phone Number",
                type: TextInputType.phone,
                obscure: false,
                iconData: Icons.phone_in_talk_rounded,
              ),
              ButtonAlert(
                titleText: "Successful!",
                contentText: "Your new shipping address has been saved.",
                alertText: "Go to Dashboard",
                buttonIcon: Icons.save_rounded,
                buttonText: "Save Changes",
                myColor: primary1,
                onPressed: () async {
                  await Navigator.of(context)
                      .pushNamedAndRemoveUntil("/navbar", (route) => false);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
