import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:repair_home_66/screen/signup.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
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
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: SafeArea(
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
                        Text("Login to your account"),
                      ],
                    ),
                    const Card(
                      child: Padding(
                        padding: EdgeInsets.all(4),
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
                    const SizedBox(
                      height: 4,
                    ),
                    const Card(
                      child: Padding(
                        padding: EdgeInsets.all(4),
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
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Sign in',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Column(
                      children: [
                        const Text(". Or sign in with ."),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const FaIcon(
                                FontAwesomeIcons.google,
                                size: 50,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const FaIcon(
                                FontAwesomeIcons.facebookSquare,
                                size: 50,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const FaIcon(
                                FontAwesomeIcons.twitterSquare,
                                size: 50,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Dont have an account? "),
                        GestureDetector(
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const SignUpScreen(),
                            ),
                          ),
                          child: const Text("Sign up"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
