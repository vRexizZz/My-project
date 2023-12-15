import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/Model_Fire.dart';

class CategoryState extends StatelessWidget {
  const CategoryState({super.key, required this.data});

  final ProdutsModel data;

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
        Container(
          height: 100,
          width: 200,
          child: Text(data.productname,style: const TextStyle(
            color: Colors.red,
            fontSize: 20
          ),),
        ),
            Container(
              height: 100,
              width: 200,
              child: Text(data.Dec,style: const TextStyle(
                  color: Colors.red,
                  fontSize: 20
              ),),
            ),
            Container(
              height: 100,
              width: 200,
              child: Text(data.price,style: const TextStyle(
                  color: Colors.red,
                  fontSize: 20
              ),),
            ),
      ]);

  }
}
