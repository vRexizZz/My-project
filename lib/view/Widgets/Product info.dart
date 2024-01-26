import 'package:flutter/material.dart';

class ProductItem extends StatefulWidget {
  final String title;
  final String details;

  const ProductItem({Key? key, required this.title, required this.details})
      : super(key: key);

  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Card(
        color: Colors.white,
        elevation: 3,
        child: ExpansionTile(
          backgroundColor: Colors.white,
          title: Text(
              widget.title),
          onExpansionChanged: (expanded) {
            setState(() {
              isExpanded = expanded;
            });
          },
          tilePadding: const EdgeInsets.symmetric(horizontal: 8.0),
          expandedCrossAxisAlignment: CrossAxisAlignment.start,
          collapsedTextColor: Colors.black54,
          textColor: Colors.blue,
          iconColor: isExpanded ? Colors.black : Colors.blue,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.details),
            ),
          ], // لون السهم
        ),
      ),
    );
  }
}