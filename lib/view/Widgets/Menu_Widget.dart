import 'package:Bavaria_Fire_Fighting_Solution/view/Widgets/testfirebase.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
class MenuProducts extends StatelessWidget {
  MenuProducts({
    super.key,
    required this.image,
    required this.text,
  });

  String image;
  String text;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height * .1;
    var width = MediaQuery.of(context).size.width * .35;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(
              builder: (context) {
            return TestFirebase(
              collectionname: text,
            );
          }));
        },
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(),
              child: Align(
                alignment: AlignmentDirectional.centerEnd,
                child: Image.asset(
                  image,
                  width: width*1,

                  fit: BoxFit.fill,
                  height: height*2,
                ),
              ),
            ),
            const Gap(10),
            Text(
              text,
              style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                  fontFamily: "Poppins",
                  letterSpacing: 0.6),
              textAlign: TextAlign.center,
            ),
            const Gap(5),
          ],
        ),
      ),
    );
  }
}
