import 'dart:async';

import 'package:flutter/material.dart';
import 'package:newsify/screens/main_screen.dart';
import 'package:newsify/style/theme.dart' as style;

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MainScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Image(
                  width: 200.0,
                  image: AssetImage("assets/icon.png")
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Newsify",
                style: TextStyle(
                  color: style.Colors.mainColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
