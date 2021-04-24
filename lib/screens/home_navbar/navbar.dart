import 'package:fake_mpwr/colors.dart';
import 'package:fake_mpwr/screens/home_navbar/help_screen.dart';
import 'package:fake_mpwr/screens/home_navbar/offer_screen.dart';
import 'package:fake_mpwr/screens/home_navbar/profile_screen.dart';
import 'package:fake_mpwr/screens/home_navbar/usage_screen.dart';
import 'package:fake_mpwr/screens/home_navbar/wallet_screen.dart';
import 'package:flutter/material.dart';

class HomeNavBar extends StatefulWidget {
  @override
  _HomeNavBarState createState() => _HomeNavBarState();
}

class _HomeNavBarState extends State<HomeNavBar> {
  var selectedIndex = 0;
  var widgetOptions = [
    OfferScreen(),
    UsageScreen(),
    WalletScreen(),
    ProfileScreen(),
    HelpScreen(),
  ];

  void onItemTap(var index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: lightGrey1,
        elevation: 10,
        selectedItemColor: primary2,
        unselectedItemColor: lightGrey2,
        selectedLabelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: primary2,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: lightGrey2,
        ),
        items: [
          navbarItems(Icons.home_rounded, "Home"),
          navbarItems(Icons.insert_chart_outlined_rounded, "Usage"),
          navbarItems(Icons.account_balance_wallet_rounded, "Balance"),
          navbarItems(Icons.person_rounded, "Profile"),
          navbarItems(Icons.help_rounded, "Help"),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTap,
      ),
    );
  }

  BottomNavigationBarItem navbarItems(icon, text) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: text,
      tooltip: text,
    );
  }
}
