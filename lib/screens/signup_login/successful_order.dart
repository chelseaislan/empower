import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/filled_circular_button.dart';
import 'package:fake_mpwr/custom_widgets/outlined_circular_button.dart';
import 'package:flutter/material.dart';

class SuccessfulOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [primary1, primary2],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  checkContainer(),
                  titleContainer(),
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
                          "Order Date",
                          "Thursday, 22 April 2021",
                        ),
                        orderDetailContainer(
                          "Payment Type",
                          "Bank Permata",
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
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: OutlineCircularButton(
                            iconData: Icons.copy_rounded,
                            labelText: "Copy Tracking Number",
                            route: "/belum_ada",
                            myColor: primary1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 45,
                      margin: EdgeInsets.only(bottom: 30),
                      child: FilledCircularButton(
                        iconData: Icons.login_rounded,
                        labelText: "Go to Login Page",
                        route: "/login",
                      ),
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
      padding: EdgeInsets.only(bottom: 10),
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

  Container titleContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Text(
            "Payment Complete",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: white,
            ),
          ),
          SizedBox(height: 5),
          Text(
            "Thank you, your order has been confirmed. A confirmation email has been sent to your registered email.",
            style: TextStyle(
              height: 1.5,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Container checkContainer() {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 60, 0, 20),
      child: Icon(
        Icons.check_circle_rounded,
        color: Colors.indigo[100],
        size: 150,
      ),
    );
  }
}
