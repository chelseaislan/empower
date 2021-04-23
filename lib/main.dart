import 'package:fake_mpwr/screens/home_navbar/navbar.dart';
import 'package:fake_mpwr/screens/onboarding/onboarding_function.dart';
import 'package:fake_mpwr/screens/onboarding/splash_screen.dart';
import 'package:fake_mpwr/screens/signup_login/choose_number.dart';
import 'package:fake_mpwr/screens/signup_login/payment_method.dart';
import 'package:fake_mpwr/screens/signup_login/shipping_page.dart';
import 'package:fake_mpwr/screens/signup_login/signup_login_page.dart';
import 'package:fake_mpwr/screens/signup_login/successful_order.dart';
import 'package:fake_mpwr/screens/signup_login/track_sim_card.dart';
import 'package:fake_mpwr/screens/top_up/add_balance.dart';
import 'package:fake_mpwr/screens/top_up/add_data.dart';
import 'package:fake_mpwr/screens/top_up/add_payment.dart';
import 'package:fake_mpwr/screens/top_up/add_phone.dart';
import 'package:fake_mpwr/screens/top_up/add_topping.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: SplashScreen(),
      routes: {
        "/onboarding": (context) => new OnboardingPage(),
        "/login": (context) => new SignupLogin(),
        "/choose_number": (context) => new ChooseNumber(),
        "/shipping": (context) => new Shipping(),
        "/payment": (context) => new Payment(),
        "/successful": (context) => new SuccessfulOrder(),
        "/navbar": (context) => new HomeNavBar(),
        "/track_card": (context) => new TrackCard(),
        "/add_data": (context) => new AddData(),
        "/add_topping": (context) => new AddTopping(),
        "/add_phone": (context) => new AddPhone(),
        "/add_balance": (context) => new AddBalance(),
        "/add_payment": (context) => new AddPayment(),
      },
    );
  }
}
