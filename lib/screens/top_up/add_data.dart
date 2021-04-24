import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/blue_header.dart';
import 'package:fake_mpwr/custom_widgets/product_container.dart';
import 'package:fake_mpwr/custom_widgets/text_widgets/text_style_one.dart';
import 'package:fake_mpwr/custom_widgets/total_price_new.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddData extends StatefulWidget {
  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  int _value = 0;
  bool _option1 = false,
      _option2 = false,
      _option3 = false,
      _option4 = false,
      _option5 = false,
      _option6 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey1,
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Add Data Package',
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
                title: "Need to watch SeasPiracy? 😀",
                subtitle: "Add a data package to satisfy your needs!",
              ),
              TextStyleOne(
                title: "Available packages:",
              ),
              Column(
                children: [
                  ProductContainer(
                    iconData: Icons.language_rounded,
                    iconColor: primary1,
                    shadowColor: _option1 ? primary1 : lightGrey2,
                    onItemTap: () {
                      setState(() {
                        _option1 = !_option1;
                        _value = _option1 ? 10000 : 0;
                      });
                    },
                    title: "PWR3 (Promo)",
                    subtitle: "3GB + MPWR calls for 5 days",
                    price: "Rp10.000",
                  ),
                  ProductContainer(
                    iconData: Icons.language_rounded,
                    iconColor: primary1,
                    shadowColor: _option2 ? primary1 : lightGrey2,
                    onItemTap: () {
                      setState(() {
                        _option2 = !_option2;
                        _value = _option2 ? 15000 : 0;
                      });
                    },
                    title: "PWR5 (Promo)",
                    subtitle: "5GB + MPWR calls for 15 days",
                    price: "Rp15.000",
                  ),
                  ProductContainer(
                    iconData: Icons.language_rounded,
                    iconColor: primary1,
                    shadowColor: _option3 ? primary1 : lightGrey2,
                    onItemTap: () {
                      setState(() {
                        _option3 = !_option3;
                        _value = _option3 ? 20000 : 0;
                      });
                    },
                    title: "PWR10 (Promo)",
                    subtitle: "10GB + MPWR calls for 15 days",
                    price: "Rp20.000",
                  ),
                  ProductContainer(
                    iconData: Icons.language_rounded,
                    iconColor: primary1,
                    shadowColor: _option4 ? primary1 : lightGrey2,
                    onItemTap: () {
                      setState(() {
                        _option4 = !_option4;
                        _value = _option4 ? 50000 : 0;
                      });
                    },
                    title: "Friendly Package",
                    subtitle: "12GB + MPWR calls for 30 days",
                    price: "Rp50.000",
                  ),
                  ProductContainer(
                    iconData: Icons.language_rounded,
                    iconColor: primary1,
                    shadowColor: _option5 ? primary1 : lightGrey2,
                    onItemTap: () {
                      setState(() {
                        _option5 = !_option5;
                        _value = _option5 ? 75000 : 0;
                      });
                    },
                    title: "Buddy Package",
                    subtitle: "23GB + MPWR calls for 30 days",
                    price: "Rp75.000",
                  ),
                  ProductContainer(
                    iconData: Icons.language_rounded,
                    iconColor: primary1,
                    shadowColor: _option6 ? primary1 : lightGrey2,
                    onItemTap: () {
                      setState(() {
                        _option6 = !_option6;
                        _value = _option6 ? 100000 : 0;
                      });
                    },
                    title: "Bestie Package",
                    subtitle: "38GB + MPWR calls for 30 days",
                    price: "Rp100.000",
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
