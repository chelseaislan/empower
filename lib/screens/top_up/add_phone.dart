import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/blue_header.dart';
import 'package:fake_mpwr/custom_widgets/product_container.dart';
import 'package:fake_mpwr/custom_widgets/text_widgets/text_style_one.dart';
import 'package:flutter/material.dart';

import 'add_data.dart';

class AddPhone extends StatefulWidget {
  @override
  _AddPhoneState createState() => _AddPhoneState();
}

class _AddPhoneState extends State<AddPhone> {
  int _price = 0;
  String _packageId = "Not Selected";
  bool _option1 = false, _option2 = false, _option3 = false, _option4 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey1,
      appBar: NoActionsAppBar(appBarTitle: "Add Phone Package"),
      body: Stack(
        children: [
          ListView(
            children: [
              BlueHeader(
                title: "Wanna save some pulsa to call?",
                subtitle:
                    "Add a phone package to freely call to ALL local operators!",
                textColor: white,
              ),
              TextStyleOne(
                title: "Available packages:",
              ),
              Column(
                children: [
                  ProductContainer(
                    iconData: Icons.phone_callback_rounded,
                    iconColor: primary1,
                    shadowColor: _price == 6 ? primary1 : lightGrey2,
                    onItemTap: () {
                      setState(() {
                        _option1 = !_option1;
                        _packageId = _option1 ? "All-net Mini" : "Not Selected";
                        _price = _option1 ? 6 : 0;
                      });
                    },
                    title: "All-net Mini",
                    subtitle: "Free 25 minutes for 1 day",
                    price: "Rp6",
                  ),
                  ProductContainer(
                    iconData: Icons.phone_callback_rounded,
                    iconColor: primary1,
                    shadowColor: _price == 12 ? primary1 : lightGrey2,
                    onItemTap: () {
                      setState(() {
                        _option2 = !_option2;
                        _packageId =
                            _option2 ? "All-net Basic" : "Not Selected";
                        _price = _option2 ? 12 : 0;
                      });
                    },
                    title: "All-net Basic",
                    subtitle: "Free 50 minutes for 3 days",
                    price: "Rp12",
                  ),
                  ProductContainer(
                    iconData: Icons.phone_callback_rounded,
                    iconColor: primary1,
                    shadowColor: _price == 17 ? primary1 : lightGrey2,
                    onItemTap: () {
                      setState(() {
                        _option3 = !_option3;
                        _packageId = _option3 ? "All-net Pro" : "Not Selected";
                        _price = _option3 ? 17 : 0;
                      });
                    },
                    title: "All-net Pro",
                    subtitle: "Free 70 minutes for 7 days",
                    price: "Rp17",
                  ),
                  ProductContainer(
                    iconData: Icons.phone_callback_rounded,
                    iconColor: primary1,
                    shadowColor: _price == 50 ? primary1 : lightGrey2,
                    onItemTap: () {
                      setState(() {
                        _option4 = !_option4;
                        _packageId =
                            _option4 ? "All-net Super" : "Not Selected";
                        _price = _option4 ? 50 : 0;
                      });
                    },
                    title: "All-net Super",
                    subtitle: "Free 200 minutes for 30 days",
                    price: "Rp50",
                  ),
                ],
              ),
              SelectedPackageContainer(packageId: _packageId),
              SizedBox(height: 115),
            ],
          ),
          TotalPriceContainer(price: _price, packageId: _packageId),
        ],
      ),
    );
  }
}
