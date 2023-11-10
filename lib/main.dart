import 'package:flutter/material.dart';
import 'package:prouductlist/view/prouductlist%20screen.dart';

void main (

)
{
  runApp(const ProductList());
}
class ProductList extends StatelessWidget
{
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenProuductList(),

    );
  }

}