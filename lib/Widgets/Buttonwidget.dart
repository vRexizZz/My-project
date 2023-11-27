import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../manager/cart_cunbit_cubit.dart';

class Buttonaddtobag extends StatelessWidget {
  const Buttonaddtobag({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      clipBehavior: Clip.antiAlias,
      child: MaterialButton(
        color: Colors.red,
        child: const Text(
          "Add To Cart",
          style: TextStyle(
              fontSize: 15, fontFamily: "poppins", color: Colors.white),
        ),
        onPressed: () {
          context.read<CartCubit>().addItemToCart();
        },
      ),
    );
  }
}
