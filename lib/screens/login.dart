import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  static final String pageRoute = "/login";
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Login"),
      ),
    );
  }
}
