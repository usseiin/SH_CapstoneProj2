import 'dart:async';

import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';

import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 3000),
      (() => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const LoginScreen(),
            ),
          )),
    );
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 49, 157),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "images/logo1.svg",
                width: 120,
              ), // SvgPicture.asset("images/logo1.svg"),
              const Text(
                "REPAIR HOME",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
