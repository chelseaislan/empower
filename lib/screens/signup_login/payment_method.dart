import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/payment_options.dart';
import 'package:fake_mpwr/custom_widgets/total_price_new.dart';
import 'package:flutter/material.dart';

class Payment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: secondBlack),
        backgroundColor: lightGrey1,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Payment Method',
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
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                PaymentOptions(
                  imagePath: "images/bca.png",
                  bankName: "Bank BCA",
                  visibleStatus: false,
                  myColor: lightGrey2,
                ),
                PaymentOptions(
                  imagePath: "images/bni.png",
                  bankName: "Bank BNI",
                  visibleStatus: false,
                  myColor: lightGrey2,
                ),
                PaymentOptions(
                  imagePath: "images/mandiri.png",
                  bankName: "Bank Mandiri",
                  visibleStatus: false,
                  myColor: lightGrey2,
                ),
                PaymentOptions(
                  imagePath: "images/permata.png",
                  bankName: "Bank Permata",
                  visibleStatus: true,
                  myColor: primary1,
                ),
                PaymentOptions(
                  imagePath: "images/jago.png",
                  bankName: "Bank Jago",
                  visibleStatus: false,
                  myColor: lightGrey2,
                ),
                PaymentOptions(
                  imagePath: "images/card.png",
                  bankName: "Visa/Mastercard",
                  visibleStatus: false,
                  myColor: lightGrey2,
                ),
              ],
            ),
          ),
          agreeContainer(),
          TotalPriceNew(
            titleText: "Total Price:",
            totalPrice: "30.000",
            routeNext: "/successful",
            myColor: primary1,
          ),
        ],
      ),
    );
  }

  Container agreeContainer() {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 15, 20, 0),
      child: Text(
        "By purchasing a SIM card, you will automatically agree to our Terms of Use and Privacy Policy, and agree to receive promotions from us and our third parties.",
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: secondBlack,
        ),
      ),
    );
  }
}
