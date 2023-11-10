import 'package:flutter/material.dart';
import '../model/Model category.dart';
import 'TextWidget.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({
    super.key,
    this.data,
  });

  final ModelCategory? data;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.only(top: 5, bottom: 5, left: 5, right: 5),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xff004182), width: 1.2),
        borderRadius: BorderRadius.circular(20),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            Image.network(
              "https://eg.jumia.is/unsafe/fit-in/680x680/filters:fill(white)/product/96/286943/1.jpg?0088",
              width: 191,
              height: 128,
              fit: BoxFit.fill,
            ),
            Align(
              alignment: AlignmentDirectional.topEnd,
              child: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {},
                icon: const Icon(Icons.favorite_outline),
                color: Colors.blue,
              ),
            )
          ]),
          const SizedBox(
            height: 8,
          ),
          const Text(
            """Nike Air Jordon
Nike shoes flexible for wo..""",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(color: Color(0xff004182)),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              TextWidget(
                fontSize: 14,
                tybe: "EGP 1200",
                textcolor: const Color(0xff004182),
              ),
              const SizedBox(
                width: 30,
              ),
              const Text(
                "2000 EGP",
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 12,
                    decoration: TextDecoration.lineThrough),
              )
            ],
          ),
          Row(
            children: [
              TextWidget(
                textcolor: const Color(0xff004182),
                fontSize: 13,
                tybe: "Review",
              ),
              const SizedBox(
                width: 5,
              ),
              const Text("(4.6)"),
              const SizedBox(
                width: 25,
              ),
              IconButton(
                iconSize: 30,
                splashRadius: 20,
                padding: EdgeInsetsDirectional.zero,
                onPressed: () {},
                icon: const Icon(
                  Icons.add_circle_sharp,
                  color: Color(0xff004182),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
