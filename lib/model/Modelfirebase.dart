class Prouduct {
  final String detail;

  Prouduct({required this.detail});

  factory Prouduct.getjsondata( Json) {
    return Prouduct(detail: Json['name']);

  }
}
