import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/total_price_new.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                paymentSelect(context, "images/bca.svg", "Bank BCA", false),
                paymentSelect(context, "images/bni.svg", "Bank BNI", false),
                paymentSelect(
                    context, "images/mandiri.svg", "Bank Mandiri", false),
                paymentSelect(
                    context, "images/permata.svg", "Bank Permata", true),
                paymentSelect(
                    context, "images/card.svg", "Visa/Mastercard", false),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                agreeContainer(),
                TotalPriceNew(
                  titleText: "Total Price:",
                  totalPrice: "30.000",
                  route: "/successful",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container agreeContainer() {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
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

  Container paymentSelect(
      BuildContext context, var image, var bankName, var visibleStatus) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              blurRadius: 2,
              spreadRadius: 1,
              color: primary1,
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                image,
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              SizedBox(width: 10),
              Text(
                bankName,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: secondBlack,
                ),
              )
            ],
          ),
          Visibility(
            visible: visibleStatus,
            child: Icon(
              Icons.check_circle_rounded,
              color: primary1,
            ),
          )
        ],
      ),
    );
  }
}
