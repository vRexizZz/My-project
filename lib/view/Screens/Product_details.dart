import 'package:flutter/material.dart';

import '../../model/Model_Fire.dart';

class ProductDetails extends StatelessWidget {
   ProductDetails({super.key, required this.data});
   final ProdutsModel data;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Image.network(data.Image),
          Text(data.Dec),
          Text(data.price),

        ],
      ),
    );
  }
}
