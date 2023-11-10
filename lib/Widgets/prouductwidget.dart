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
      margin: const EdgeInsets.only(top: 5, bottom: 10, left: 5, right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 1, color: const Color(0xff004182))),
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                ClipRRect(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(14),
                        topRight: Radius.circular(14),
                      ),
                    ),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.network(
                      "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco,u_126ab356-44d8-4a06-89b4-fcdcc8df0245,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/2b303472-c84c-4076-85e8-e7c16d5e185a/jordan-spizike-big-kids-shoes-qfxxlQ.png",
                      width: 190,
                      height: 128,
                      fit: BoxFit.cover,
                    ),
                  ),
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
              ],
            ),
            Container(
              padding: const EdgeInsetsDirectional.all(5),
              child: Column(
                children: [
                  const Text(
                    """Nike Air Jordon
Nike shoes flexible for wo..""",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Color(0xff004182),
                    fontSize: 13,
                    fontFamily: "poppins"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                        fontSize: 14,
                        type: "EGP 1200",
                        fontfamily: "Poppins",
                        textcolor: const Color(0xff004182),
                      ),
                      const Text(

                        "2000 EGP",
                        style: TextStyle(
                          fontFamily: "Poppins",
                            color: Colors.blue,
                            fontSize: 11,
                            decoration: TextDecoration.lineThrough),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                        textcolor: const Color(0xff004182),
                        fontSize: 12,
                        type: "Review",
                        fontfamily: "Poppins",

                      ),
                      const Text("(4.6)"),
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
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
