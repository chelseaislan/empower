import 'package:fake_mpwr/colors.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // 2. Add method initState
  void initState() {
    super.initState();
    startSplash();
  }

  // 1. Add function startSplash dan tambah timer
  startSplash() async {
    var duration = Duration(seconds: 2);
    return Timer(duration, () {
      Navigator.of(context).pushReplacementNamed("/onboarding");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Background gradient MPWR
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [primary2, primary1],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Image.asset("images/mpwr_logo.png"),
        ),
      ),
    );
  }
}
