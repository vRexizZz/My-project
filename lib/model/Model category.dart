class ModelCategory {
  String image;
  String title;
  String? price;
  String? oldprice;
  String? review;

  ModelCategory(
      {
      required this.title,
      required this.image,
      this.oldprice,
      this.price,
      this.review});
}
