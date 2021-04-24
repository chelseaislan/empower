import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/complete_header.dart';
import 'package:fake_mpwr/custom_widgets/filled_circular_button.dart';
import 'package:fake_mpwr/custom_widgets/outlined_circular_button.dart';
import 'package:flutter/material.dart';

class SuccessfulOrder extends StatelessWidget {
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
                    colors: [primary1, primary2],
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
                          "Order Number",
                          "840285",
                        ),
                        orderDetailContainer(
                          "Order Name",
                          "SP 0814 0853 8485",
                        ),
                        orderDetailContainer(
                          "Order Date",
                          "Thursday, 22 April 2021",
                        ),
                        orderDetailContainer(
                          "Order Time",
                          "07:56",
                        ),
                        orderDetailContainer(
                          "Payment Type",
                          "Bank Permata",
                        ),
                        orderDetailContainer(
                          "Total Payment",
                          "Rp30",
                        ),
                        orderDetailContainer(
                          "Delivery Service",
                          "SiCepat",
                        ),
                        orderDetailContainer(
                          "Tracking Number",
                          "31093103019",
                        ),
                        Container(
                          height: 45,
                          margin: EdgeInsets.symmetric(vertical: 15),
                          child: OutlineCircularButton(
                            iconData: Icons.copy_rounded,
                            labelText: "Copy Tracking Number",
                            route: "/belum_ada",
                            myColor: primary1,
                          ),
                        ),
                        Container(
                          height: 45,
                          margin: EdgeInsets.only(bottom: 10),
                          child: FilledCircularButton(
                            iconData: Icons.login_rounded,
                            labelText: "Go to Login Page",
                            route: "/login",
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
