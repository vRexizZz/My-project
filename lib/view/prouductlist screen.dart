import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:prouductlist/manager/cart_cunbit_cubit.dart';

import '../Widgets/CardWidget.dart';
import '../Widgets/Customtextfield.dart';

class ScreenProuductList extends StatefulWidget {
  ScreenProuductList({super.key});

  @override
  State<ScreenProuductList> createState() => _ScreenProuductListState();
}

class _ScreenProuductListState extends State<ScreenProuductList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffaf8f8),
      appBar: AppBar(
        elevation: 0,
        title: Image.network(
          "https://images.wuzzuf-data.net/files/company_logo/Bavaria-Egypt-Egypt-29995-1612179858-og.png",
          height: 85,
          width: 150,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                CaustomTextFormField(),
                Stack(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shopping_cart_outlined,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                    Positioned(
                      left: 25,
                      child: BlocBuilder<CartCubit, int>(
                        builder: (context, state) {
                          return CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 11,
                            child: Text(
                              '$state',
                              style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: CardWidget(),
            ),
          ],
        ),
      ),

    );
  }
}
