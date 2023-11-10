import 'package:flutter/material.dart';

import '../Widgets/CardWidget.dart';
import '../Widgets/Customtextfield.dart';

class ScreenProuductList extends StatelessWidget {
  const ScreenProuductList({super.key});

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
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                        Icons.shopping_bag_outlined),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Expanded(child: CardWidget())
            ],
          ),

      ),
    );
  }
}
