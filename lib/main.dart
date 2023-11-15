import 'package:flutter/material.dart';
import 'package:prouductlist/view/prouductlist%20screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'manager/cart_cunbit_cubit.dart';

void main() {
  runApp(const ProductList());
}

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(
      create: (context) => CartCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ScreenProuductList(),

      ),
    );
  }

}

