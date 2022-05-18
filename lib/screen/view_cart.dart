import 'package:flutter/material.dart';
import 'package:repair_home_66/screen/view_prod.dart';
import 'package:repair_home_66/widgets/constant.dart';

class ViewCart extends StatefulWidget {
  const ViewCart({Key? key}) : super(key: key);

  @override
  State<ViewCart> createState() => _ViewCartState();
}

class _ViewCartState extends State<ViewCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Transform.translate(
            offset: const Offset(130, -180),
            child: Transform.scale(
              scale: 1.2,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image_png),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.arrow_back),
                      Text(
                        "Cart",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: ((context, index) => const Card(
                            child: ListTile(
                              leading: Icon(Icons.sd_card),
                              title: Text(
                                "repair refrigerator",
                                style: TextStyle(fontSize: 16),
                              ),
                              subtitle: Text(
                                "kitchen",
                                style: TextStyle(fontSize: 12),
                              ),
                              trailing: Icon(Icons.arrow_forward),
                            ),
                          )),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text("Total Prce"),
                            Text("\$273"),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const ViewProduct())),
                        child: Container(
                          alignment: Alignment.center,
                          child: const Text(
                            "Make an Order",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          constraints: const BoxConstraints(
                            minWidth: double.infinity,
                            minHeight: 50.0,
                          ),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
