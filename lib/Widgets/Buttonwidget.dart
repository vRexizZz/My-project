import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Buttonaddtobag extends StatelessWidget {
   Buttonaddtobag({super.key});

  @override
  Widget build(BuildContext context) {
    return  IconButton(
      iconSize: 30,
      splashRadius: 20,
      padding: EdgeInsetsDirectional.zero,
      icon: const Icon(
        Icons.add_circle_sharp,
        color: Color(0xff004182),
      ), onPressed: () {  },
    );
  }
}
