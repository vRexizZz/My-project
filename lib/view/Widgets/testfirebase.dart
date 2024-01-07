import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../model/Model_Fire.dart';
import 'Categoryaccs.dart';

class TestFirebase extends StatelessWidget {
  const TestFirebase({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    CollectionReference product =
        FirebaseFirestore.instance.collection("Accessories");
    return StreamBuilder<QuerySnapshot>(
      stream: product.orderBy("createdat").snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<ProdutsModel> productList = [];
          for (int i = 0; i < snapshot.data!.docs.length; i++) {
            productList.add(ProdutsModel.fromjson(snapshot.data!.docs[i]));
          }
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                elevation: 3,
                backgroundColor: Colors.white70.withOpacity(1),
                // backgroundColor: Colors.white.withOpacity(1),
                title: Image.asset(
                  "assets/images/Bavaria-Egypt-Egypt-29995-1612179858-og-removebg-preview.png",
                  height: 78,
                  fit: BoxFit.fill,
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: height * 1,
                  child: GridView.builder(
                    itemCount: productList.length,
                    itemBuilder: (context, index) {
                      return CategoryState(
                        data: productList[index],
                      );
                    },
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 4,
                            mainAxisSpacing: 10.0,
                            childAspectRatio: 0.46),
                  ),
                ),
              ),
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
