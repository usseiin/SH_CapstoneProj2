import 'package:flutter/material.dart';

class ViewCart extends StatefulWidget {
  const ViewCart({Key? key}) : super(key: key);

  @override
  State<ViewCart> createState() => _ViewCartState();
}

class _ViewCartState extends State<ViewCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 255, 193, 7),
        shadowColor: const Color.fromRGBO(255, 255, 255, 0),
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: const Center(
            child: Text(
          "Cart",
          style: TextStyle(color: Colors.black),
        )),
        actions: const [
          SizedBox(
            width: 70,
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: ((context, index) => const Card(
                  child: ListTile(
                    leading: Icon(Icons.sd_card),
                    title: Text("repair refrigerator"),
                    subtitle: Text("kitchen"),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
