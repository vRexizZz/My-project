class ProdutsModel {
  String productname;
  String price;
  String Dec;


  ProdutsModel(
      {
        required this.price,
        required this.Dec,
        required this.productname,

      });

  factory ProdutsModel.fromjson(jsondata) {
    return ProdutsModel(
        productname: jsondata["Product_Name"],
        price: jsondata["Product_descreption"],
        Dec: jsondata["price"]);

  }
}
