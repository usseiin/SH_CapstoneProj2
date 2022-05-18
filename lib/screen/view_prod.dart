import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:repair_home_66/widgets/constant.dart';

class ViewProduct extends StatefulWidget {
  const ViewProduct({Key? key}) : super(key: key);

  @override
  State<ViewProduct> createState() => _ViewProductState();
}

class _ViewProductState extends State<ViewProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Transform.translate(
          offset: const Offset(130, -180),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image_svg),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
        SafeArea(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Icon(Icons.arrow_back),
                      Text("Fix Microwave")
                    ],
                  ),
                  Image.asset(microwave)
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  child: const Text("Review"),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                IconButton(onPressed: () {}, icon: const Icon(Icons.comment))
              ],
            ),
            Row(),
            Row(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  alignment: Alignment.center,
                  child: const Text(
                    "Order Repair",
                    style: TextStyle(color: Colors.white),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  alignment: Alignment.center,
                  child: const Text("Order Setup"),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],
            )
          ],
        )),
      ]),
    );
  }
}
