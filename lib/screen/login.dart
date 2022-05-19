import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:repair_home_66/screen/signup.dart';
import 'package:repair_home_66/widgets/constant.dart';

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
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(image_png),
                  fit: BoxFit.contain,
                )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SafeArea(
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
                        Text("Login to your account"),
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
                    const SizedBox(
                      height: 4,
                    ),
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
                        Padding(
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
                        )
                      ],
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
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
