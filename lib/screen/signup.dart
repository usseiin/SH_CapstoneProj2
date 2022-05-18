// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:repair_home_66/screen/view_cart.dart';

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
        padding: const EdgeInsets.all(24.0),
        child: Stack(children: [
          Transform.translate(
            offset: const Offset(130, -180),
            child: Transform.scale(
              scale: 1.3,
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("images/logo1.png"),
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
                  SvgPicture.asset(
                    "images/logo1.svg",
                    color: const Color.fromARGB(255, 31, 49, 157),
                  ),
                  const Text("REPAIR HOME"),
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
                    onPressed: () {},
                    child: const Text(
                      'Sign up',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Column(
                    children: [
                      const Text(". Or sign up with ."),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const FaIcon(
                              FontAwesomeIcons.google,
                              size: 25,
                            ),
                          ),
                          const SizedBox(width: 5),
                          IconButton(
                            onPressed: () {},
                            icon: const FaIcon(
                              FontAwesomeIcons.facebookSquare,
                              size: 25,
                            ),
                          ),
                          const SizedBox(width: 5),
                          IconButton(
                            onPressed: () => Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => const ViewCart())),
                            icon: const FaIcon(
                              FontAwesomeIcons.twitterSquare,
                              size: 25,
                            ),
                          ),
                        ],
                      )
                    ],
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
