import 'package:final_paper/screens/your_ads.dart';
import 'package:flutter/material.dart';

import 'screens/ad_detail.dart';
import 'screens/home.dart';
import 'screens/login.dart';
import 'screens/orders.dart';
import 'screens/signup.dart';
import 'screens/update_profile.dart';
import 'screens/splash_screen.dart' as customSplash;

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
      ),
      routes: {
        "/": (ctx) => customSplash.SplashScreen(),
        Home.pageRoute: (ctx) => Home(),
        Login.pageRoute: (ctx) => Login(),
        SignUp.pageRoute: (ctx) => SignUp(),
        AdDetails.pageRoute: (ctx) => AdDetails(),
        UpdateProfile.pageRoute: (ctx) => UpdateProfile(),
        Orders.pageRoute: (ctx) => Orders(),
        YourAds.pageRoute: (ctx) => YourAds(),
      },
    );
  }
}
