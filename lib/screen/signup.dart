// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:repair_home_66/screen/view_cart.dart';

import '../widgets/constant.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(children: [
          Transform.translate(
            offset: const Offset(130, -180),
            child: Transform.scale(
              scale: 1.3,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(image_png),
                  fit: BoxFit.contain,
                )),
              ),
            ),
          ),
          SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Expanded(
                    child: SizedBox(),
                    flex: 1,
                  ),
                  SvgPicture.asset(
                    image_svg,
                    color: main_color,
                  ),
                  Text(repair_home),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text("Create new account"),
                    ],
                  ),
                  const Card(
                    child: Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "email",
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                        ),
                        obscureText: false,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Card(
                    child: Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "password",
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                        ),
                        obscureText: true,
                      ),
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Card(
                    child: Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "confirm email",
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                        ),
                        obscureText: true,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  ElevatedButton(
                    onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const ViewCart())),
                    child: const Text(
                      'Sign up',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text(". Or sign up with ."),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SvgPicture.asset(
                                  "images/google.svg",
                                  width: 25,
                                ),
                                SvgPicture.asset(
                                  "images/facebook.svg",
                                  height: 25,
                                ),
                                SvgPicture.asset(
                                  "images/twitter.svg",
                                  width: 25,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
