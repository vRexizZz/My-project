class ProdutsModel {
  String productname;
  String price;
  String Dec;
  String Image;

  ProdutsModel(
      {required this.price,
      required this.Dec,
      required this.productname,
      required this.Image});

  factory ProdutsModel.fromjson(jsondata) {
    return ProdutsModel(
        productname: jsondata["Product_Name"],
        Dec   : jsondata["Product_descreption"],
        price : jsondata["price"],
        Image: jsondata["image"]);
  }
}
