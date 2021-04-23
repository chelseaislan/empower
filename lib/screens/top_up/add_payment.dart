import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/blue_header.dart';
import 'package:fake_mpwr/custom_widgets/payment_options.dart';
import 'package:fake_mpwr/custom_widgets/total_price_new.dart';
import 'package:flutter/material.dart';

class AddPayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey1,
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Payment Method',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: white,
          ),
        ),
      ),
      body: ListView(
        children: [
          BlueHeader(
            title: "Confirm order and pay",
            subtitle:
                "Please make the payment, after that you can enjoy all the features and benefits.",
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                PaymentOptions(
                  imagePath: "images/bca.svg",
                  bankName: "Bank BCA",
                  visibleStatus: false,
                  myColor: lightGrey2,
                ),
                PaymentOptions(
                  imagePath: "images/bni.svg",
                  bankName: "Bank BNI",
                  visibleStatus: false,
                  myColor: lightGrey2,
                ),
                PaymentOptions(
                  imagePath: "images/mandiri.svg",
                  bankName: "Bank Mandiri",
                  visibleStatus: false,
                  myColor: lightGrey2,
                ),
                PaymentOptions(
                  imagePath: "images/permata.svg",
                  bankName: "Bank Permata",
                  visibleStatus: false,
                  myColor: lightGrey2,
                ),
                PaymentOptions(
                  imagePath: "images/jago.svg",
                  bankName: "Bank Jago",
                  visibleStatus: true,
                  myColor: appBarColor,
                ),
                PaymentOptions(
                  imagePath: "images/card.svg",
                  bankName: "Visa/Mastercard",
                  visibleStatus: false,
                  myColor: lightGrey2,
                ),
              ],
            ),
          ),
          TotalPriceNew(
            titleText: "Total Price:",
            totalPrice: "0",
            routeNext: "/belum_ada",
            myColor: appBarColor,
          )
        ],
      ),
    );
  }
}
