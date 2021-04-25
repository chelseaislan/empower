import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/complete_header.dart';
import 'package:fake_mpwr/custom_widgets/buttons/button_fill_circular.dart';
import 'package:fake_mpwr/screens/signup_login/successful_order.dart';
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
                        OrderDetailsContainer(
                          title: "Transaction Number",
                          description: "840285",
                        ),
                        OrderDetailsContainer(
                          title: "Order Name",
                          description: "Friendly Package",
                        ),
                        OrderDetailsContainer(
                          title: "Order Date",
                          description: "Thursday, 24 April 2021",
                        ),
                        OrderDetailsContainer(
                          title: "Order Time",
                          description: "13:24",
                        ),
                        OrderDetailsContainer(
                          title: "Payment Type",
                          description: "Bank Jago",
                        ),
                        OrderDetailsContainer(
                          title: "Total Payment",
                          description: "Rp50",
                        ),
                        Container(
                          height: 45,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: FilledCircularButton(
                            iconData: Icons.home_rounded,
                            labelText: "Go to Dashboard",
                            myColor: primary1,
                            onPressed: () async {
                              await Navigator.of(context)
                                  .pushNamedAndRemoveUntil(
                                      "/navbar", (route) => false);
                            },
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
}
