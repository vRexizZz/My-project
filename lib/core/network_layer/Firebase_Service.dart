import 'package:cloud_firestore/cloud_firestore.dart';


class FirebaseService
{
  late final CollectionReference _productCollection ;
FirebaseService(String collectionName){
  _productCollection= FirebaseFirestore.instance.collection(collectionName);
}

    Stream<QuerySnapshot> getProductStream() {
      return _productCollection.orderBy("createdat").snapshots();
    }
}