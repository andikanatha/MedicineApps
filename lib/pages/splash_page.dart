import 'dart:async';
import 'package:flutter/material.dart';
import '../theme.dart';

class SplashPage extends StatefulWidget {
  static const routeName = '/splashpage';

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacementNamed('/startedpage');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logopharmeasy.png',
              // height: 300,
              width: 250,
              )
          ],
        ),
      ),
    );
  }
}
