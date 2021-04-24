import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/complete_header.dart';
import 'package:fake_mpwr/custom_widgets/filled_circular_button.dart';
import 'package:flutter/material.dart';

class SuccessPayment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [appBarColor, Colors.blueGrey[400]],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: ListView(
                children: [
                  CompleteHeader(),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Order Details",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: secondBlack,
                          ),
                        ),
                        SizedBox(height: 10),
                        orderDetailContainer(
                          "Transaction Number",
                          "840285",
                        ),
                        orderDetailContainer(
                          "Order Name",
                          "Friendly Package",
                        ),
                        orderDetailContainer(
                          "Order Date",
                          "Thursday, 24 April 2021",
                        ),
                        orderDetailContainer(
                          "Order Time",
                          "13:24",
                        ),
                        orderDetailContainer(
                          "Payment Type",
                          "Bank Jago",
                        ),
                        orderDetailContainer(
                          "Total Payment",
                          "Rp50.000",
                        ),
                        Container(
                          height: 45,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: FilledCircularButton(
                            iconData: Icons.local_offer_rounded,
                            labelText: "Go to Dashboard",
                            route: "/navbar",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container orderDetailContainer(title, description) {
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: secondBlack,
            ),
          ),
          Text(
            description,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: primary1,
            ),
          ),
        ],
      ),
    );
  }
}
