import 'package:flutter/material.dart';

class Button extends StatelessWidget {
   Button({super.key,required this.textname,required this.onTap});
String textname ;
VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      width: double.infinity,
      decoration: BoxDecoration(

          gradient: const LinearGradient(
              stops: [
            0.3,
            0.99
          ], colors: [

            Color(0xffff2440),
            Color(0xff81261a),
          ]),
          borderRadius: BorderRadius.circular(8)),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: MaterialButton(
        focusColor: Colors.transparent,
        onPressed: onTap,
        child: Text(
          textname,
          style: const TextStyle(color: Colors.white, fontSize: 18),

        ),
      ),
    );
  }
}
