import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../../model/Model_Fire.dart';
import '../../core/network_layer/Firebase_Service.dart';
import 'Categoryaccs.dart';
import 'Loading_widget.dart';

class TestFirebase extends StatelessWidget {
   TestFirebase({super.key,required this.collectionname});
  String collectionname ;

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;

    final FirebaseService firebaseService = FirebaseService(collectionname);

    return StreamBuilder<QuerySnapshot>(
      stream: firebaseService.getProductStream(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<ProdutsModel> productList = [];
          for (int i = 0; i < snapshot.data!.docs.length; i++) {
            productList.add(ProdutsModel.fromjson(snapshot.data!.docs[i]));
          }
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              elevation: 0,
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
          );
        } else {
          return const Center(
            child: LoadingWidget(),
          );
        }
      },
    );
  }
}
