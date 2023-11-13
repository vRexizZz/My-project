import 'package:flutter/material.dart';

import '../Widgets/CardWidget.dart';
import '../Widgets/Customtextfield.dart';

class ScreenProuductList extends StatefulWidget {
  ScreenProuductList({super.key});

  int? itemcard;

  @override
  State<ScreenProuductList> createState() => _ScreenProuductListState();
}

class _ScreenProuductListState extends State<ScreenProuductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Image.asset("assets/images/Group 5 (1).png"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                CaustomTextFormField(),
                Stack(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shopping_cart_outlined,
                        size: 30,
                        color: Color(0xff005aaf),
                      ),
                    ),
                    const Positioned(
                      left: 25,
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        radius: 11,
                        child: Text("0"),
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: CardWidget(),
              ),
          ],
        ),
      ),
    );
  }
}
