import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prouductlist/Widgets/TextWidget.dart';

import '../model/Offers_Model.dart';

class OffersWidget extends StatelessWidget {
  const OffersWidget({super.key, required this.data});

  final OffersModel data;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              data.image,
              height: 135,
            ),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(

                data.headtext,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15
                ),
              ),
            ),
            Text(
               data.descrption,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 13
              ),

            ),
            Row(

              children: [
                TextWidget(
                  fontSize: 16,
                  type: "EGP ${data.Price} ",
                  textcolor: Color(0xffAE0F30),
                  fontfamily: "Poppins",
                ),
                Text(
                   "EGP ${data.oldprice}",
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                    color: Colors.black54,
                    fontSize: 13
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
