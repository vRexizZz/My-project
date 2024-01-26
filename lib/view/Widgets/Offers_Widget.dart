import 'package:flutter/material.dart';
import '../../model/Offers_Model.dart';
import 'TextWidget.dart';

class OffersWidget extends StatelessWidget {
  const OffersWidget({super.key, required this.data});

  final OffersModel data;

  @override
  Widget build(BuildContext context) {
    var hegiht = MediaQuery.of(context).size.height;
    return Card(
      elevation: 4,
      color: Colors.white.withOpacity(1),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              data.image,
              fit: BoxFit.cover,
              height: hegiht*.195,
            ),
            Align(
              alignment: AlignmentDirectional.topStart,
              child: Text(

                data.headtext,
                style: const TextStyle(
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
              style: const TextStyle(
                fontSize: 13.5
              ),

            ),
            Row(

              children: [
                TextWidget(
                  fontSize: 16,
                  type: "EGP ${data.Price} ",
                  textcolor: const Color(0xffAE0F30),
                  fontfamily: "Poppins",
                ),
                Text(
                   "EGP ${data.oldprice}",
                  style: const TextStyle(
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
