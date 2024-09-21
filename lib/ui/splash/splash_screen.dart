import 'dart:async';

import 'package:daily_tasks_app/ui/home/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
static const String routName='splash screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routName);
    });
  }
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xffDFECDB),
        child: Image.asset('assets/images/logo.png'));
  }
}