import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/login_textfield.dart';
import 'package:fake_mpwr/custom_widgets/total_price_new.dart';
import 'package:flutter/material.dart';

class Shipping extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey1,
      appBar: AppBar(
        iconTheme: IconThemeData(color: secondBlack),
        backgroundColor: lightGrey1,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Personal Details',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: secondBlack,
          ),
        ),
      ),
      body: ListView(
        children: [
          LoginTextField(
            title: "Full Name",
            type: TextInputType.name,
            obscure: false,
            iconData: Icons.person_rounded,
          ),
          LoginTextField(
            title: "KTP Number",
            type: TextInputType.number,
            obscure: false,
            iconData: Icons.library_books_rounded,
          ),
          LoginTextField(
            title: "KK Number",
            type: TextInputType.number,
            obscure: false,
            iconData: Icons.library_books_rounded,
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
          TotalPriceNew(
            titleText: "Total Price:",
            totalPrice: "Rp30",
            routeNext: "/payment",
            myColor: primary1,
          ),
        ],
      ),
    );
  }
}
