import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../model/Model_Fire.dart';
import '../Widgets/Product info.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key, required this.data});

  final ProdutsModel data;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    dynamic price = int.parse(widget.data.price) + 700;
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    String quantityfixed = "5";
    int quantity = int.parse(quantityfixed);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          widget.data.productname,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          IconButton(
            iconSize: 25,
            onPressed: () {},
            icon: const Icon(
              Icons.share,
            ),
          ),
          IconButton(
            iconSize: 25,
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_outline,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    width: double.infinity,
                    height: height * .320,
                    child: Image.network(
                      widget.data.Image,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Text(
                          widget.data.productname,
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              fontFamily: "Poppins"),
                        ),
                      ),
                      const Gap(15),
                      Row(
                        children: [
                          Align(
                            alignment: AlignmentDirectional.centerStart,
                            child: Text(
                              "EGP ${widget.data.price}",
                              textAlign: TextAlign.end,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const Gap(10),
                          Text(
                            "$price",
                            style: const TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontSize: 13,
                                color: Colors.black54),
                          ),
                          const Gap(120),
                          Container(
                            alignment: AlignmentDirectional.centerEnd,
                            width: width * .22,
                            height: height * .045,
                            padding: const EdgeInsetsDirectional.only(
                                start: 10, top: 0, bottom: 0, end: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      quantity=quantity--;
                                    });
                                  },
                                  child: const Text(
                                    "-",
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ),
                                 Text(
                                   "$quantity",
                                  style: const TextStyle(fontSize: 17),
                                ),
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        quantity++;
                                      });


                                    },
                                    child: const Text(
                                      "+",
                                      style: TextStyle(fontSize: 17),
                                    )),
                              ],
                            ),
                          )
                        ],
                      ),
                      const Gap(15),
                      const Gap(15),
                      ProductItem(
                        title: ' More Info',
                        details: widget.data.Dec,
                      ),
                      const Gap(150),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Align(
              alignment: AlignmentDirectional.bottomEnd,
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    price + price;
                  });
                },
                child: Container(
                  width: width * .78,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8)),
                  height: height * .0490,
                  child: const Align(
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      "Add To Cart",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: "Poppins"),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
