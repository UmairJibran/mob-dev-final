import 'package:final_paper/screens/home.dart';
import 'package:final_paper/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart' as splash;

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _loggedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: splash.SplashScreen(
        loadingText: Text("Checking if logged in..."),
        loaderColor: Theme.of(context).primaryColor,
        seconds: 3,
        navigateAfterSeconds: _loggedIn ? Home() : Login(),
      ),
    );
  }
}
