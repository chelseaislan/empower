import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/custom_widgets/containers/app_ver_container.dart';
import 'package:fake_mpwr/custom_widgets/buttons/live_chat.dart';
import 'package:fake_mpwr/custom_widgets/buttons/button_outline_circular.dart';
import 'package:fake_mpwr/custom_widgets/product_container.dart';
import 'package:fake_mpwr/custom_widgets/text_widgets/text_style_one.dart';
import 'package:fake_mpwr/screens/home_navbar/offer_screen.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey1,
      appBar: NavBarAppBar(appBarTitle: "My Balance"),
      body: ListView(
        children: [
          MyBalanceContainer(
            title: "Rp72",
            titleStyle: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w600,
              color: white,
            ),
            subtitle: "Card is active until 24 July 2022 at 23:10",
            subStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: white,
            ),
            childWidget: Container(
              height: 45,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: OutlineCircularButton(
                iconData: Icons.add_circle_rounded,
                labelText: "Top-up Balance",
                onPressed: () async {
                  await Navigator.of(context).pushNamed("/add_balance");
                },
                myColor: appBarColor,
              ),
            ),
          ),
          TextStyleOne(title: "Your latest transactions"),
          Column(
            children: [
              ProductContainer(
                iconData: Icons.phonelink_ring_rounded,
                iconColor: primary1,
                shadowColor: lightGrey2,
                title: "Pulsa 15K",
                subtitle: "22 April 2021",
                price: "Rp15",
              ),
              ProductContainer(
                iconData: Icons.language_rounded,
                iconColor: primary1,
                shadowColor: lightGrey2,
                title: "Friendly Package",
                subtitle: "22 April 2021",
                price: "Rp50",
              ),
              ProductContainer(
                iconData: Icons.language_rounded,
                iconColor: primary1,
                shadowColor: lightGrey2,
                title: "PWR10",
                subtitle: "07 April 2021",
                price: "Rp20",
              ),
              ProductContainer(
                iconData: Icons.phonelink_ring_rounded,
                iconColor: primary1,
                shadowColor: lightGrey2,
                title: "Pulsa 15K",
                subtitle: "21 March 2021",
                price: "Rp15",
              ),
              ProductContainer(
                iconData: Icons.add_chart_rounded,
                iconColor: primary1,
                shadowColor: lightGrey2,
                title: "GitHub Topping",
                subtitle: "20 March 2021",
                price: "Rp10",
              ),
              ProductContainer(
                iconData: Icons.add_chart_rounded,
                iconColor: primary1,
                shadowColor: lightGrey2,
                title: "Reddit Topping",
                subtitle: "12 March 2021",
                price: "Rp10",
              ),
              ProductContainer(
                iconData: Icons.language_rounded,
                iconColor: primary1,
                shadowColor: lightGrey2,
                title: "6 Month Bonus",
                subtitle: "1 March 2021",
                price: "Rp0",
              ),
            ],
          ),
          AppVerContainer()
        ],
      ),
      floatingActionButton: LiveChat(),
    );
  }
}

class MyBalanceContainer extends StatelessWidget {
  final String title;
  final TextStyle titleStyle;
  final String subtitle;
  final TextStyle subStyle;
  final Widget childWidget;

  const MyBalanceContainer({
    Key key,
    this.title,
    this.subtitle,
    this.childWidget,
    this.titleStyle,
    this.subStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.fromLTRB(20, 0, 20, 15),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [appBarColor, Colors.blueGrey[400]],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title, style: titleStyle),
          SizedBox(height: 5),
          Text(subtitle, style: subStyle),
          SizedBox(height: 10),
          childWidget,
        ],
      ),
    );
  }
}
