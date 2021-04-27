import 'dart:math';

import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/complete_header.dart';
import 'package:fake_mpwr/custom_widgets/buttons/button_fill_circular.dart';
import 'package:fake_mpwr/custom_widgets/buttons/button_outline_circular.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

class SuccessfulOrder extends StatefulWidget {
  final int value;
  final String package;
  final String bankName;

  const SuccessfulOrder({Key key, this.value, this.package, this.bankName})
      : super(key: key);

  @override
  _SuccessfulOrderState createState() => _SuccessfulOrderState();
}

class _SuccessfulOrderState extends State<SuccessfulOrder> {
  // Show current date & time
  String finalDate = "";
  String finalTime = "";
  int trxNumber = 0;
  int trackNumber = 0;

  void initState() {
    super.initState();
    getCurrentDate();
    randomizer();
  }

  getCurrentDate() {
    var date = new DateTime.now().toString();
    var day = DateFormat('EEEE').format(DateTime.now());
    var dateParse = DateTime.parse(date);
    var formattedDate =
        "$day, ${dateParse.day}/${dateParse.month}/${dateParse.year}";
    var formattedTime =
        "${dateParse.hour}:${dateParse.minute}:${dateParse.second}";
    setState(() {
      finalDate = formattedDate.toString();
      finalTime = formattedTime.toString();
    });
  }

  randomizer() {
    var rng = new Random();
    setState(() {
      trxNumber = rng.nextInt(999999) + 100000;
      trackNumber = rng.nextInt(99999999) + 10000000;
    });
  }

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
                          description: "$trxNumber",
                        ),
                        OrderDetailsContainer(
                          title: "Order Name",
                          description: "SP ${widget.package}",
                        ),
                        OrderDetailsContainer(
                          title: "Order Date",
                          description: "$finalDate",
                        ),
                        OrderDetailsContainer(
                          title: "Order Time",
                          description: "$finalTime",
                        ),
                        OrderDetailsContainer(
                          title: "Payment Type",
                          description: "${widget.bankName}",
                        ),
                        OrderDetailsContainer(
                          title: "Total Payment",
                          description: "Rp${widget.value}",
                        ),
                        OrderDetailsContainer(
                          title: "Delivery Service",
                          description: "SiCepat",
                        ),
                        OrderDetailsContainer(
                          title: "Tracking Number",
                          description: "$trackNumber",
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
