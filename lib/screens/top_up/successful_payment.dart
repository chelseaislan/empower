import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/complete_header.dart';
import 'package:fake_mpwr/custom_widgets/buttons/button_fill_circular.dart';
import 'package:fake_mpwr/screens/signup_login/successful_order.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SuccessPayment extends StatefulWidget {
  final int value;
  final String package;
  final String bankName;

  const SuccessPayment({Key key, this.value, this.bankName, this.package}) : super(key: key);

  @override
  _SuccessPaymentState createState() => _SuccessPaymentState();
}

class _SuccessPaymentState extends State<SuccessPayment> {
  // Show current date & time
  String finalDate = "";
  String finalTime = "";

  void initState() {
    super.initState();
    getCurrentDate();
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
                          description: "${widget.package}",
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
