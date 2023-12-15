import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/Model_Fire.dart';
import 'Categoryaccs.dart';

class TestFirebase extends StatelessWidget {
  const TestFirebase({super.key});

  @override
  Widget build(BuildContext context) {
    CollectionReference Product =
        FirebaseFirestore.instance.collection("Accessories");
    return StreamBuilder<QuerySnapshot>(
      stream: Product.snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<ProdutsModel> ProductList = [];
          for (int i = 0; i < snapshot.data!.docs.length; i++) {
            ProductList.add(ProdutsModel.fromjson(snapshot.data!.docs[i]));
          }
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  height: 500,
                  child: ListView.builder(
                    itemCount: ProductList.length,
                    itemBuilder: (context, index) {
                      return CategoryState(
                        data: ProductList[index],
                      );
                    },
                  ),
                ),
              ]),
            ),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
