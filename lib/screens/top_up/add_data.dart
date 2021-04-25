import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/blue_header.dart';
import 'package:fake_mpwr/custom_widgets/product_container.dart';
import 'package:fake_mpwr/custom_widgets/text_widgets/text_style_one.dart';
import 'package:fake_mpwr/custom_widgets/buttons/total_price_new.dart';
import 'package:fake_mpwr/screens/top_up/add_payment.dart';
import 'package:flutter/material.dart';

class AddData extends StatefulWidget {
  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  int _price = 0;
  String _packageId = "Not Selected";
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
      appBar: NoActionsAppBar(appBarTitle: "Buy Data Package"),
      body: Stack(
        children: [
          ListView(
            children: [
              BlueHeader(
                title: "Need to update your OS?",
                subtitle: "Add a data package to satisfy your needs!",
                textColor: white,
              ),
              TextStyleOne(
                title: "Available packages:",
              ),
              Column(
                children: [
                  ProductContainer(
                    iconData: Icons.language_rounded,
                    iconColor: primary1,
                    shadowColor: _price == 10 ? primary1 : lightGrey2,
                    onItemTap: () {
                      setState(() {
                        _option1 = !_option1;
                        _packageId = _option1 ? "PWR3 (Promo)" : "Not Selected";
                        _price = _option1 ? 10 : 0;
                      });
                    },
                    title: "PWR3 (Promo)",
                    subtitle: "3GB + MPWR calls for 5 days",
                    price: "Rp10",
                  ),
                  ProductContainer(
                    iconData: Icons.language_rounded,
                    iconColor: primary1,
                    shadowColor: _price == 15 ? primary1 : lightGrey2,
                    onItemTap: () {
                      setState(() {
                        _option2 = !_option2;
                        _packageId = _option2 ? "PWR5 (Promo)" : "Not Selected";
                        _price = _option2 ? 15 : 0;
                      });
                    },
                    title: "PWR5 (Promo)",
                    subtitle: "5GB + MPWR calls for 15 days",
                    price: "Rp15",
                  ),
                  ProductContainer(
                    iconData: Icons.language_rounded,
                    iconColor: primary1,
                    shadowColor: _price == 20 ? primary1 : lightGrey2,
                    onItemTap: () {
                      setState(() {
                        _option3 = !_option3;
                        _packageId =
                            _option3 ? "PWR10 (Promo)" : "Not Selected";
                        _price = _option3 ? 20 : 0;
                      });
                    },
                    title: "PWR10 (Promo)",
                    subtitle: "10GB + MPWR calls for 15 days",
                    price: "Rp20",
                  ),
                  ProductContainer(
                    iconData: Icons.language_rounded,
                    iconColor: primary1,
                    shadowColor: _price == 50 ? primary1 : lightGrey2,
                    onItemTap: () {
                      setState(() {
                        _option4 = !_option4;
                        _packageId =
                            _option4 ? "Friendly Package" : "Not Selected";
                        _price = _option4 ? 50 : 0;
                      });
                    },
                    title: "Friendly Package",
                    subtitle: "12GB + MPWR calls for 30 days",
                    price: "Rp50",
                  ),
                  ProductContainer(
                    iconData: Icons.language_rounded,
                    iconColor: primary1,
                    shadowColor: _price == 75 ? primary1 : lightGrey2,
                    onItemTap: () {
                      setState(() {
                        _option5 = !_option5;
                        _packageId =
                            _option5 ? "Buddy Package" : "Not Selected";
                        _price = _option5 ? 75 : 0;
                      });
                    },
                    title: "Buddy Package",
                    subtitle: "23GB + MPWR calls for 30 days",
                    price: "Rp75",
                  ),
                  ProductContainer(
                    iconData: Icons.language_rounded,
                    iconColor: primary1,
                    shadowColor: _price == 100 ? primary1 : lightGrey2,
                    onItemTap: () {
                      setState(() {
                        _option6 = !_option6;
                        _packageId =
                            _option6 ? "Bestie Package" : "Not Selected";
                        _price = _option6 ? 100 : 0;
                      });
                    },
                    title: "Bestie Package",
                    subtitle: "38GB + MPWR calls for 30 days",
                    price: "Rp100",
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

class TotalPriceContainer extends StatelessWidget {
  const TotalPriceContainer({
    Key key,
    @required int price,
    @required String packageId,
  })  : _price = price,
        _packageId = packageId,
        super(key: key);

  final int _price;
  final String _packageId;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: TotalPriceNew(
        totalPrice: "Rp${_price.toString()}",
        titleText: "Total Price:",
        myColor: appBarColor,
        onItemTap: () {
          var nextRoute = new MaterialPageRoute(builder: (context) {
            return new AddPayment(value: _price, package: _packageId);
          });
          Navigator.of(context).push(nextRoute);
        },
      ),
    );
  }
}

class SelectedPackageContainer extends StatelessWidget {
  const SelectedPackageContainer({
    Key key,
    @required String packageId,
  })  : _packageId = packageId,
        super(key: key);

  final String _packageId;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 10),
      child: Text(
        "Selected Package: $_packageId",
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: secondBlack,
        ),
      ),
    );
  }
}

class NoActionsAppBar extends StatelessWidget with PreferredSizeWidget {
  final String appBarTitle;
  const NoActionsAppBar({
    Key key,
    this.appBarTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appBarColor,
      centerTitle: true,
      elevation: 0,
      title: Text(
        appBarTitle,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: white,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
