import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Register_Screen_Widget extends StatelessWidget {
  Register_Screen_Widget(
      {super.key,
      this.image,
      required this.text,
      required this.fieldColor,
      required this.textColor});

  String? image;
  String text;
  Color fieldColor;
  Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
      padding: const EdgeInsets.only(left: 0, right: 10, bottom: 10, top: 10),
      decoration: BoxDecoration(
          color: fieldColor,
          border: Border.all(width: 0.2),
          borderRadius: BorderRadius.circular(50)),
      child: GestureDetector(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              image!,
              height: 25,
            ),
            const Gap(20),
            Text(
              text,
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w500, color: textColor),
            ),
          ],
        ),
        onTap: () {},
      ),
    );
  }
}
