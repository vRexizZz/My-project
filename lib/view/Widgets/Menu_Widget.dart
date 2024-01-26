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
    var height = MediaQuery.of(context).size.height * .091;
    var width = MediaQuery.of(context).size.width * .35;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return TestFirebase(
                  collectionname: text,
                );
              },
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12)
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                      width: width * 3,
                      height: height * 2,
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                  width: double.infinity,
                  height: height * 2,
                  color: Colors.black.withOpacity(0.35),
                ),
              ),
              const Gap(10),
              Container(
                alignment: AlignmentDirectional.center,
                height: height * 2,
                child: Text(
                  text,
                  style: const TextStyle(
                      fontSize: 15.5,
                      letterSpacing: 0.4,
                      fontFamily: "Poppins",
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              const Gap(5),
            ],
          ),
        ),
      ),
    );
  }
}
