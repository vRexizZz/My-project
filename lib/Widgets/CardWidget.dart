import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prouductlist/Widgets/prouductwidget.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 116 / 185,
          ),
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return const ProductWidget();
          },
    );
  }
}
