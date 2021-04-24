import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/blue_header.dart';
import 'package:fake_mpwr/custom_widgets/product_container.dart';
import 'package:fake_mpwr/custom_widgets/text_widgets/text_style_one.dart';
import 'package:fake_mpwr/custom_widgets/total_price_new.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddPhone extends StatefulWidget {
  @override
  _AddPhoneState createState() => _AddPhoneState();
}

class _AddPhoneState extends State<AddPhone> {
  int _value = 0;
  bool _option1 = false, _option2 = false, _option3 = false, _option4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey1,
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Add Phone Package',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: white,
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              BlueHeader(
                title: "Wanna save some pulsa to call?",
                subtitle:
                    "Add a phone package to freely call to ALL local operators!",
              ),
              TextStyleOne(
                title: "Available packages:",
              ),
              Column(
                children: [
                  ProductContainer(
                    iconData: Icons.phone_callback_rounded,
                    iconColor: primary1,
                    shadowColor: _option1 ? primary1 : lightGrey2,
                    onItemTap: () {
                      setState(() {
                        _option1 = !_option1;
                        _value = _option1 ? 6000 : 0;
                      });
                    },
                    title: "All-net Mini",
                    subtitle: "Free 25 minutes for 1 day",
                    price: "Rp6.000",
                  ),
                  ProductContainer(
                    iconData: Icons.phone_callback_rounded,
                    iconColor: primary1,
                    shadowColor: _option2 ? primary1 : lightGrey2,
                    onItemTap: () {
                      setState(() {
                        _option2 = !_option2;
                        _value = _option2 ? 12000 : 0;
                      });
                    },
                    title: "All-net Basic",
                    subtitle: "Free 50 minutes for 3 days",
                    price: "Rp12.000",
                  ),
                  ProductContainer(
                    iconData: Icons.phone_callback_rounded,
                    iconColor: primary1,
                    shadowColor: _option3 ? primary1 : lightGrey2,
                    onItemTap: () {
                      setState(() {
                        _option3 = !_option3;
                        _value = _option3 ? 17000 : 0;
                      });
                    },
                    title: "All-net Pro",
                    subtitle: "Free 70 minutes for 7 days",
                    price: "Rp17.000",
                  ),
                  ProductContainer(
                    iconData: Icons.phone_callback_rounded,
                    iconColor: primary1,
                    shadowColor: _option4 ? primary1 : lightGrey2,
                    onItemTap: () {
                      setState(() {
                        _option4 = !_option4;
                        _value = _option4 ? 50000 : 0;
                      });
                    },
                    title: "All-net Super",
                    subtitle: "Free 200 minutes for 30 days",
                    price: "Rp50.000",
                  ),
                ],
              ),
              SizedBox(height: 115),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: TotalPriceNew(
              totalPrice: NumberFormat.currency(
                      locale: 'id', symbol: 'Rp', decimalDigits: 0)
                  .format(_value),
              titleText: "Total Price:",
              routeNext: "/add_payment",
              myColor: appBarColor,
            ),
          ),
        ],
      ),
    );
  }
}
