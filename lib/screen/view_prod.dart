import 'package:flutter/material.dart';
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
          children: const [
            Text('data'),
          ],
        )),
      ]),
    );
  }
}
