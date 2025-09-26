import 'dart:async';

import 'package:flutter/material.dart';
import 'package:auth_page/constant/color.dart';
import 'package:auth_page/Screens/start_up/welcome_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer? timer;
  @override
  void initState() {
    setTime();
    super.initState();
  }

  setTime() {
    const duration = Duration(seconds: 5);
    return Timer(duration, route);
  }

  route() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => WelcomePage()),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryWhite,
      body: Center(
        child: Image.asset(
          'assets/images/png/Frame 4.png',
          height: 201,
          width: 204,
        ),
      ),
    );
  }
}
