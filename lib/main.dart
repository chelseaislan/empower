import 'package:fake_mpwr/screens/home_navbar/navbar.dart';
import 'package:fake_mpwr/screens/onboarding/onboarding_function.dart';
import 'package:fake_mpwr/screens/onboarding/splash_screen.dart';
import 'package:fake_mpwr/screens/signup_login/choose_number.dart';
import 'package:fake_mpwr/screens/signup_login/payment_method.dart';
import 'package:fake_mpwr/screens/signup_login/shipping_page.dart';
import 'package:fake_mpwr/screens/signup_login/signup_login_page.dart';
import 'package:fake_mpwr/screens/signup_login/successful_order.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        "/onboarding": (context) => new OnboardingPage(),
        "/login": (context) => new SignupLogin(),
        "/choose_number": (context) => new ChooseNumber(),
        "/shipping": (context) => new Shipping(),
        "/payment": (context) => new Payment(),
        "/successful": (context) => new SuccessfulOrder(),
        "/navbar": (context) => new HomeNavBar(),
      },
    );
  }
}
