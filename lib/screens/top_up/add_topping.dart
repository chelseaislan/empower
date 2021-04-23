import 'package:fake_mpwr/colors.dart';
import 'package:flutter/material.dart';

class AddTopping extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        centerTitle: true,
        elevation: 0,
        title: Text(
          'Add Topping',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: white,
          ),
        ),
      ),
      body: Container(),
    );
  }
}
