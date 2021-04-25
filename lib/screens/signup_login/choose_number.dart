import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/blue_header.dart';
import 'package:fake_mpwr/custom_widgets/product_container.dart';
import 'package:fake_mpwr/custom_widgets/buttons/total_price_new.dart';
import 'package:fake_mpwr/screens/signup_login/shipping_page.dart';
import 'package:fake_mpwr/screens/top_up/add_data.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChooseNumber extends StatefulWidget {
  @override
  _ChooseNumberState createState() => _ChooseNumberState();
}

class _ChooseNumberState extends State<ChooseNumber> {
  int _price = 0;
  String _newPhoneId = "Not Selected";
  bool _option1 = false,
      _option2 = false,
      _option3 = false,
      _option4 = false,
      _option5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey1,
      appBar: AppBar(
        iconTheme: IconThemeData(color: secondBlack),
        backgroundColor: lightGrey1,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Choose Phone Number',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: secondBlack,
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: TitleSubtitleColumn(
                  title: "Choose your own number!",
                  textColor: secondBlack,
                  subtitle: "These phone numbers will expire in:",
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  "05:00",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: secondBlack,
                  ),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ProductContainer(
                      iconData: Icons.settings_phone_rounded,
                      iconColor: primary1,
                      shadowColor: _newPhoneId == "0814 8468 1083"
                          ? primary1
                          : lightGrey2,
                      onItemTap: () {
                        setState(() {
                          _option1 = !_option1;
                          _newPhoneId =
                              _option1 ? "0814 8468 1083" : _newPhoneId;
                          _price = _option1 ? 30 : 0;
                        });
                      },
                      title: "0814 8468 1083",
                      subtitle: "Card active period 60 days",
                      price: "Rp30",
                    ),
                    ProductContainer(
                      iconData: Icons.settings_phone_rounded,
                      iconColor: primary1,
                      shadowColor: _newPhoneId == "0814 8468 1084"
                          ? primary1
                          : lightGrey2,
                      onItemTap: () {
                        setState(() {
                          _option2 = !_option2;
                          _newPhoneId =
                              _option2 ? "0814 8468 1084" : _newPhoneId;
                          _price = _option2 ? 30 : 0;
                        });
                      },
                      title: "0814 8468 1084",
                      subtitle: "Card active period 60 days",
                      price: "Rp30",
                    ),
                    ProductContainer(
                      iconData: Icons.settings_phone_rounded,
                      iconColor: primary1,
                      shadowColor: _newPhoneId == "0814 8468 1085"
                          ? primary1
                          : lightGrey2,
                      onItemTap: () {
                        setState(() {
                          _option3 = !_option3;
                          _newPhoneId =
                              _option3 ? "0814 8468 1085" : _newPhoneId;
                          _price = _option3 ? 30 : 0;
                        });
                      },
                      title: "0814 8468 1085",
                      subtitle: "Card active period 60 days",
                      price: "Rp30",
                    ),
                    ProductContainer(
                      iconData: Icons.settings_phone_rounded,
                      iconColor: primary1,
                      shadowColor: _newPhoneId == "0814 8468 1086"
                          ? primary1
                          : lightGrey2,
                      onItemTap: () {
                        setState(() {
                          _option4 = !_option4;
                          _newPhoneId =
                              _option4 ? "0814 8468 1086" : _newPhoneId;
                          _price = _option4 ? 30 : 0;
                        });
                      },
                      title: "0814 8468 1086",
                      subtitle: "Card active period 60 days",
                      price: "Rp30",
                    ),
                    ProductContainer(
                      iconData: Icons.settings_phone_rounded,
                      iconColor: primary1,
                      shadowColor: _newPhoneId == "0814 8468 1087"
                          ? primary1
                          : lightGrey2,
                      onItemTap: () {
                        setState(() {
                          _option5 = !_option5;
                          _newPhoneId =
                              _option5 ? "0814 8468 1087" : _newPhoneId;
                          _price = _option5 ? 30 : 0;
                        });
                      },
                      title: "0814 8468 1087",
                      subtitle: "Card active period 60 days",
                      price: "Rp30",
                    ),
                  ],
                ),
              ),
              SelectedPackageContainer(packageId: _newPhoneId),
              SizedBox(height: 115),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: TotalPriceNew(
              totalPrice: "Rp${_price.toString()}",
              titleText: "Total Price:",
              myColor: primary1,
              onItemTap: () {
                var nextRoute = new MaterialPageRoute(builder: (context) {
                  return new Shipping(value: _price, package: _newPhoneId);
                });
                Navigator.of(context).push(nextRoute);
              },
            ),
          ),
        ],
      ),
    );
  }
}
