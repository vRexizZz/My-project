import 'package:flutter/material.dart';
import '../model/modelPhotos.dart';

class Screenone extends StatelessWidget {
   Screenone({super.key,required this.data});
   final PageViewModel data ;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsetsDirectional.all(8),
      decoration:  BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
                data.image
            ),
            fit: BoxFit.fill),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
        // Container(
        //
        // ),
            const SizedBox(height: 75,),
         Text(
          data.categoryTitle,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontFamily: "Poppins"
          ),

        ),
         Text(
           data.description
         // "" "Dicover our diverse selction of fire extinguishers"""
         // "" "       and find the right product  for your needs"""
           ,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            overflow: TextOverflow.fade,
            fontFamily: "Poppins",
            fontSize: 13

          ),
        ),
        Container(
          margin: const EdgeInsetsDirectional.all(8),
          width: 140,
          height: 35,
          decoration: BoxDecoration(
            color: Colors.white38,
              border: Border.all(color: Colors.white38),
              borderRadius: BorderRadius.circular(5)),
          child: GestureDetector(
            child: MaterialButton(
              onPressed: () {},
              child:  Text(
                data.textButton,
                style: const TextStyle(fontSize: 15, color: Colors.white,
                fontFamily: "Poppins"),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
