import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/agree_container.dart';
import 'package:fake_mpwr/custom_widgets/payment_options.dart';
import 'package:fake_mpwr/custom_widgets/buttons/total_price_new.dart';
import 'package:fake_mpwr/screens/signup_login/successful_order.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  final int value;
  final String package;

  const Payment({Key key, this.value, this.package}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  String _bankId = "Not Selected";
  bool _option1 = false,
      _option2 = false,
      _option3 = false,
      _option4 = false,
      _option5 = false,
      _option6 = false;

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
                  onItemTap: () {
                    setState(() {
                      _option1 = !_option1;
                      _bankId = _option1 ? "Bank BCA" : "Not Selected";
                    });
                  },
                  imagePath: "images/bca.png",
                  bankName: "Bank BCA",
                  visibleStatus: _bankId == "Bank BCA" ? true : false,
                  myColor: _bankId == "Bank BCA" ? primary1 : lightGrey2,
                ),
                PaymentOptions(
                  onItemTap: () {
                    setState(() {
                      _option2 = !_option2;
                      _bankId = _option2 ? "Bank BNI" : "Not Selected";
                    });
                  },
                  imagePath: "images/bni.png",
                  bankName: "Bank BNI",
                  visibleStatus: _bankId == "Bank BNI" ? true : false,
                  myColor: _bankId == "Bank BNI" ? primary1 : lightGrey2,
                ),
                PaymentOptions(
                  onItemTap: () {
                    setState(() {
                      _option3 = !_option3;
                      _bankId = _option3 ? "Bank Mandiri" : "Not Selected";
                    });
                  },
                  imagePath: "images/mandiri.png",
                  bankName: "Bank Mandiri",
                  visibleStatus: _bankId == "Bank Mandiri" ? true : false,
                  myColor: _bankId == "Bank Mandiri" ? primary1 : lightGrey2,
                ),
                PaymentOptions(
                  onItemTap: () {
                    setState(() {
                      _option4 = !_option4;
                      _bankId = _option4 ? "Bank Permata" : "Not Selected";
                    });
                  },
                  imagePath: "images/permata.png",
                  bankName: "Bank Permata",
                  visibleStatus: _bankId == "Bank Permata" ? true : false,
                  myColor: _bankId == "Bank Permata" ? primary1 : lightGrey2,
                ),
                PaymentOptions(
                  onItemTap: () {
                    setState(() {
                      _option5 = !_option5;
                      _bankId = _option5 ? "Bank Jago" : "Not Selected";
                    });
                  },
                  imagePath: "images/jago.png",
                  bankName: "Bank Jago",
                  visibleStatus: _bankId == "Bank Jago" ? true : false,
                  myColor: _bankId == "Bank Jago" ? primary1 : lightGrey2,
                ),
                PaymentOptions(
                  onItemTap: () {
                    setState(() {
                      _option6 = !_option6;
                      _bankId = _option6 ? "Visa/Mastercard" : "Not Selected";
                    });
                  },
                  imagePath: "images/card.png",
                  bankName: "Visa/Mastercard",
                  visibleStatus: _bankId == "Visa/Mastercard" ? true : false,
                  myColor: _bankId == "Visa/Mastercard" ? primary1 : lightGrey2,
                ),
              ],
            ),
          ),
          AgreeContainer(bankId: _bankId),
          TotalPriceNew(
            titleText: "Total Price:",
            totalPrice: "Rp${widget.value}",
            myColor: primary1,
            onItemTap: () {
              var nextRoute = new MaterialPageRoute(builder: (context) {
                return new SuccessfulOrder(
                  value: widget.value,
                  package: widget.package,
                  bankName: _bankId,
                );
              });
              Navigator.of(context).pushAndRemoveUntil(nextRoute, (route) => false);
            },
          ),
        ],
      ),
    );
  }
}
