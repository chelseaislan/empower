import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/blue_header.dart';
import 'package:fake_mpwr/custom_widgets/product_container.dart';
import 'package:fake_mpwr/custom_widgets/text_widgets/text_style_one.dart';
import 'package:fake_mpwr/custom_widgets/buttons/total_price_new.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'add_data.dart';

class AddBalance extends StatefulWidget {
  @override
  _AddBalanceState createState() => _AddBalanceState();
}

class _AddBalanceState extends State<AddBalance> {
  int _price = 0;
  bool _option1 = false,
      _option2 = false,
      _option3 = false,
      _option4 = false,
      _option5 = false,
      _option6 = false,
      _option7 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey1,
      appBar: NoActionsAppBar(appBarTitle: "Add Balance"),
      body: Stack(
        children: [
          ListView(
            children: [
              BlueHeader(
                title: "In need of pulsa to call?",
                subtitle: "Top up your balance here before it's too late!",
                textColor: white,
              ),
              TextStyleOne(
                title: "Available packages:",
              ),
              Column(
                children: [
                  ProductContainer(
                    iconData: Icons.phonelink_ring_rounded,
                    iconColor: primary1,
                    shadowColor: _price == 15 ? primary1 : lightGrey2,
                    onItemTap: () {
                      setState(() {
                        _option1 = !_option1;
                        _price = _option1 ? 15 : 0;
                      });
                    },
                    title: "Pulsa 15K",
                    subtitle: "+ 30 Days Active Period",
                    price: "Rp15",
                  ),
                  ProductContainer(
                    iconData: Icons.phonelink_ring_rounded,
                    iconColor: primary1,
                    shadowColor: _price == 25 ? primary1 : lightGrey2,
                    onItemTap: () {
                      setState(() {
                        _option2 = !_option2;
                        _price = _option2 ? 25 : 0;
                      });
                    },
                    title: "Pulsa 25K",
                    subtitle: "+ 30 Days Active Period",
                    price: "Rp25",
                  ),
                  ProductContainer(
                    iconData: Icons.phonelink_ring_rounded,
                    iconColor: primary1,
                    shadowColor: _price == 50 ? primary1 : lightGrey2,
                    onItemTap: () {
                      setState(() {
                        _option3 = !_option3;
                        _price = _option3 ? 50 : 0;
                      });
                    },
                    title: "Pulsa 50K",
                    subtitle: "+ 60 Days Active Period",
                    price: "Rp50",
                  ),
                  ProductContainer(
                    iconData: Icons.phonelink_ring_rounded,
                    iconColor: primary1,
                    shadowColor: _price == 100 ? primary1 : lightGrey2,
                    onItemTap: () {
                      setState(() {
                        _option4 = !_option4;
                        _price = _option4 ? 100 : 0;
                      });
                    },
                    title: "Pulsa 100K",
                    subtitle: "+ 60 Days Active Period",
                    price: "Rp100",
                  ),
                  ProductContainer(
                    iconData: Icons.phonelink_ring_rounded,
                    iconColor: primary1,
                    shadowColor: _price == 200 ? primary1 : lightGrey2,
                    onItemTap: () {
                      setState(() {
                        _option5 = !_option5;
                        _price = _option5 ? 200 : 0;
                      });
                    },
                    title: "Pulsa 200K",
                    subtitle: "+ 90 Days Active Period",
                    price: "Rp200",
                  ),
                  ProductContainer(
                    iconData: Icons.phonelink_ring_rounded,
                    iconColor: primary1,
                    shadowColor: _price == 500 ? primary1 : lightGrey2,
                    onItemTap: () {
                      setState(() {
                        _option6 = !_option6;
                        _price = _option6 ? 500 : 0;
                      });
                    },
                    title: "Pulsa 500K",
                    subtitle: "+ 180 Days Active Period",
                    price: "Rp500",
                  ),
                  ProductContainer(
                    iconData: Icons.phonelink_ring_rounded,
                    iconColor: primary1,
                    shadowColor: _price == 1000 ? primary1 : lightGrey2,
                    onItemTap: () {
                      setState(() {
                        _option7 = !_option7;
                        _price = _option7 ? 1000 : 0;
                      });
                    },
                    title: "Pulsa 1.000K",
                    subtitle: "+ 360 Days Active Period",
                    price: "Rp1.000",
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
                  .format(_price),
              titleText: "Total Price:",
              myColor: appBarColor,
              onItemTap: () => Navigator.of(context).pushNamed("/add_payment"),
            ),
          )
        ],
      ),
    );
  }
}
