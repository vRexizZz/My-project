import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
      elevation: 5,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsetsDirectional.only(top: 0),
            child: Image.network(
              widget.data.image,
              width: 200,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10,child: Container(
            color: Colors.white,
          ),),
          Divider(
            height: 0,
            thickness: 1.2,
            endIndent: 10,
            indent: 10,
            color: Colors.black,
          ),

          Expanded(
            child: Container(
              color: Colors.white,
              padding: const EdgeInsetsDirectional.all(8),
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
                        textcolor: Colors.black,
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
                    children: [],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Buttonaddtobag(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
