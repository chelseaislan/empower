import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/complete_header.dart';
import 'package:fake_mpwr/custom_widgets/buttons/button_fill_circular.dart';
import 'package:fake_mpwr/custom_widgets/buttons/button_outline_circular.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
                        OrderDetailsContainer(
                          title: "Order Number",
                          description: "840285",
                        ),
                        OrderDetailsContainer(
                          title: "Order Name",
                          description: "SP 0814 0853 8485",
                        ),
                        OrderDetailsContainer(
                          title: "Order Date",
                          description: "Thursday, 22 April 2021",
                        ),
                        OrderDetailsContainer(
                          title: "Order Time",
                          description: "07:56",
                        ),
                        OrderDetailsContainer(
                          title: "Payment Type",
                          description: "Bank Permata",
                        ),
                        OrderDetailsContainer(
                          title: "Total Payment",
                          description: "Rp30",
                        ),
                        OrderDetailsContainer(
                          title: "Delivery Service",
                          description: "SiCepat",
                        ),
                        OrderDetailsContainer(
                          title: "Tracking Number",
                          description: "31093103019",
                        ),
                        Container(
                          height: 45,
                          margin: EdgeInsets.symmetric(vertical: 15),
                          child: OutlineCircularButton(
                            iconData: Icons.copy_rounded,
                            labelText: "Copy Tracking Number",
                            onPressed: () {
                              Fluttertoast.showToast(
                                msg: "Tracking Number copied.",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.BOTTOM,
                              );
                            },
                            myColor: primary1,
                          ),
                        ),
                        Container(
                          height: 45,
                          margin: EdgeInsets.only(bottom: 10),
                          child: FilledCircularButton(
                            iconData: Icons.login_rounded,
                            labelText: "Go to Login Page",
                            myColor: primary1,
                            onPressed: () async {
                              await Navigator.of(context)
                                  .pushNamedAndRemoveUntil(
                                      "/login", (route) => false);
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

class OrderDetailsContainer extends StatelessWidget {
  final String title;
  final String description;
  const OrderDetailsContainer({
    Key key,
    this.title,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
