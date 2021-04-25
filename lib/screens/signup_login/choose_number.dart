import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/blue_header.dart';
import 'package:fake_mpwr/custom_widgets/product_container.dart';
import 'package:fake_mpwr/custom_widgets/buttons/total_price_new.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChooseNumber extends StatefulWidget {
  @override
  _ChooseNumberState createState() => _ChooseNumberState();
}

class _ChooseNumberState extends State<ChooseNumber> {
  int _cardId = 0;
  int _price = 0;
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
                      shadowColor: _cardId == 1 ? primary1 : lightGrey2,
                      onItemTap: () {
                        setState(() {
                          _option1 = !_option1;
                          _cardId = _option1 ? 1 : 0;
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
                      shadowColor: _cardId == 2 ? primary1 : lightGrey2,
                      onItemTap: () {
                        setState(() {
                          _option2 = !_option2;
                          _cardId = _option2 ? 2 : 0;
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
                      shadowColor: _cardId == 3 ? primary1 : lightGrey2,
                      onItemTap: () {
                        setState(() {
                          _option3 = !_option3;
                          _cardId = _option3 ? 3 : 0;
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
                      shadowColor: _cardId == 4 ? primary1 : lightGrey2,
                      onItemTap: () {
                        setState(() {
                          _option4 = !_option4;
                          _cardId = _option4 ? 4 : 0;
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
                      shadowColor: _cardId == 5 ? primary1 : lightGrey2,
                      onItemTap: () {
                        setState(() {
                          _option5 = !_option5;
                          _cardId = _option5 ? 5 : 0;
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
              SizedBox(height: 115),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: TotalPriceNew(
              titleText: "Total Price:",
              totalPrice: NumberFormat.currency(
                      locale: 'id', symbol: 'Rp', decimalDigits: 0)
                  .format(_price),
              myColor: primary1,
              onItemTap: () => Navigator.of(context).pushNamed("/shipping"),
            ),
          ),
        ],
      ),
    );
  }
}
