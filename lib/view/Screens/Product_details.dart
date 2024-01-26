import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../model/Model_Fire.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key, required this.data});

  final ProdutsModel data;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(data.productname,
        style: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w600
        ),),
        actions: [
        IconButton(
        iconSize: 25,
        onPressed: () {},
        icon: const Icon(

            Icons.share),
      ),
          IconButton(
            iconSize: 25,
            onPressed: () {},
            icon: const Icon(

                Icons.favorite_outline),
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
                decoration: BoxDecoration(
                  color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12.withOpacity(.2),
                        spreadRadius: 0,
                        blurRadius: 7,
                        blurStyle: BlurStyle.outer,

                        offset: const Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  border: Border.all(
                    color: Colors.black12,
                    width: 1.5
                  ),
                  borderRadius: BorderRadius.circular(10)
                ),

                width: double.infinity,
                height: height*.320 ,
                child: Image.network(
                data.Image,
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
                  child: Text(data.productname,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,

                    ),
                  ),
                ),
              Gap(15),
              SizedBox(
              child: Text(
              data.Dec,
                style: TextStyle(
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.w600,
                    fontSize: 15.5),
              ),

                        ),



                      ]),
                  ),
                  Text(data.price),
                  ],
                  ),


        ),
    MaterialButton(onPressed: (){},
        child: Container(
          color: Colors.red,
          width: double.infinity,
          height: 50,

          child: const Align(
            alignment: AlignmentDirectional.center,
            child: Text("Add to Bag",
            textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontFamily: "Poppins"
              ),
            ),
          )
          ,
        ),
    )
    ]
      )
        );

  }

}


