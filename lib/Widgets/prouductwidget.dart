import 'package:flutter/material.dart';
import '../model/Model category.dart';
import 'Buttonwidget.dart';
import 'TextWidget.dart';

class ProductWidget extends StatefulWidget {
  ProductWidget({super.key, required this.data});

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
  final ModelCategory data;
}

class _ProductWidgetState extends State<ProductWidget> {
  bool favimage = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsetsDirectional.symmetric(vertical: 8,horizontal: 5),
      elevation: 5,
      child: Container(
        margin: const EdgeInsets.only(top: 20, bottom: 10, left: 5, right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.network(
                    widget.data.image,
                    width: 200,
                    height: 190,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: -10,
                  left: 113,
                  child: GestureDetector(
                    onTap: () {
                      setState(
                        () {
                          favimage = !favimage;
                        },
                      );
                    },
                    child: Image.asset(favimage
                        ? "assets/images/Group 11.png"
                        : "assets/images/Group 17.png"),
                  ),
                )
              ],
            ),
            const SizedBox(height: 10,),
            Container(
              padding: const EdgeInsetsDirectional.all(5),
              child: Column(
                children: [
                  Text(
                    widget.data.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: "poppins"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                        fontSize: 18,
                        type: "EGP 1200",
                        fontfamily: "Poppins",
                        textcolor:  Colors.black,
                      ),
                      const Text(
                        "2000 EGP",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.black54,
                            fontSize: 11,
                            decoration: TextDecoration.lineThrough),
                      )
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [


                    ],
                  ),
                  const SizedBox(height: 15,),
                  Buttonaddtobag(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
