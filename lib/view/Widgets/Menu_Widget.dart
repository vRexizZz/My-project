import 'package:Bavaria_Fire_Fighting_Solution/view/Widgets/testfirebase.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Screens/prouductlist screen.dart';

class MenuProducts extends StatelessWidget {
   MenuProducts({
     super.key ,
     required this.image,required this.text,

   });
   String image;
   String text;


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height*.140;
    var width = MediaQuery.of(context).size.width*.40;
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return TestFirebase(collectionname: text,);
          }));
        },
        child: Column(
          children: [
            Container(
              width: width,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                border: Border.all(width: 0.2, color: Colors.grey),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.fill,
                height: height,
              ),
            ),
            const Gap(10),
             Text(
              text,
              style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 13,
                  fontFamily: "Poppins",
                  letterSpacing: 0.6
              ),
              textAlign: TextAlign.center,
            ),
            const Gap(5),
            Divider(thickness: .5,)
          ],
        ),
      ),

          // Expanded(
          //     child: Column(
          //       children: [
          //         Container(
          //           decoration: BoxDecoration(
          //             color: Colors.grey.shade200,
          //             border: Border.all(width: 0.2, color: Colors.grey),
          //           ),
          //           child: Column(
          //             children: [
          //               Image.asset(
          //                 image2,
          //                 fit: BoxFit.fill,
          //                 height: height,
          //               ),
          //             ],
          //           ),
          //         ),
          //         const Gap(10),
          //          Text(
          //           text2,
          //
          //           textAlign: TextAlign.center,
          //           style:
          //           const TextStyle(
          //               fontFamily: "Poppins",
          //               letterSpacing: 0.6,
          //               fontSize: 13,
          //               fontWeight: FontWeight.w700),
          //         )
          //       ],
          //     )),

    );
  }
}
