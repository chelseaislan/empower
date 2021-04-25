import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/agree_container.dart';
import 'package:fake_mpwr/custom_widgets/payment_options.dart';
import 'package:fake_mpwr/custom_widgets/buttons/total_price_new.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int _bankId = 0;
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
                      _bankId = _option1 ? 1 : 0;
                    });
                  },
                  imagePath: "images/bca.png",
                  bankName: "Bank BCA",
                  visibleStatus: _bankId == 1 ? true : false,
                  myColor: _bankId == 1 ? primary1 : lightGrey2,
                ),
                PaymentOptions(
                  onItemTap: () {
                    setState(() {
                      _option2 = !_option2;
                      _bankId = _option2 ? 2 : 0;
                    });
                  },
                  imagePath: "images/bni.png",
                  bankName: "Bank BNI",
                  visibleStatus: _bankId == 2 ? true : false,
                  myColor: _bankId == 2 ? primary1 : lightGrey2,
                ),
                PaymentOptions(
                  onItemTap: () {
                    setState(() {
                      _option3 = !_option3;
                      _bankId = _option3 ? 3 : 0;
                    });
                  },
                  imagePath: "images/mandiri.png",
                  bankName: "Bank Mandiri",
                  visibleStatus: _bankId == 3 ? true : false,
                  myColor: _bankId == 3 ? primary1 : lightGrey2,
                ),
                PaymentOptions(
                  onItemTap: () {
                    setState(() {
                      _option4 = !_option4;
                      _bankId = _option4 ? 4 : 0;
                    });
                  },
                  imagePath: "images/permata.png",
                  bankName: "Bank Permata",
                  visibleStatus: _bankId == 4 ? true : false,
                  myColor: _bankId == 4 ? primary1 : lightGrey2,
                ),
                PaymentOptions(
                  onItemTap: () {
                    setState(() {
                      _option5 = !_option5;
                      _bankId = _option5 ? 5 : 0;
                    });
                  },
                  imagePath: "images/jago.png",
                  bankName: "Bank Jago",
                  visibleStatus: _bankId == 5 ? true : false,
                  myColor: _bankId == 5 ? primary1 : lightGrey2,
                ),
                PaymentOptions(
                  onItemTap: () {
                    setState(() {
                      _option6 = !_option6;
                      _bankId = _option6 ? 6 : 0;
                    });
                  },
                  imagePath: "images/card.png",
                  bankName: "Visa/Mastercard",
                  visibleStatus: _bankId == 6 ? true : false,
                  myColor: _bankId == 6 ? primary1 : lightGrey2,
                ),
              ],
            ),
          ),
          AgreeContainer(bankId: _bankId),
          TotalPriceNew(
            titleText: "Total Price:",
            totalPrice: "Rp30",
            myColor: primary1,
            onItemTap: () => Navigator.of(context).pushNamed("/successful"),
          ),
        ],
      ),
    );
  }
}
