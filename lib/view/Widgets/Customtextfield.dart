import 'package:flutter/material.dart';

class CaustomTextFormField extends StatelessWidget {
   CaustomTextFormField({super.key});

  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 296,
      child: TextField(
        style: const TextStyle(fontSize: 17.5),
        controller: _textController,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(35),
            borderSide: const BorderSide(
              color: Color(0xff004182),
            ),
          ),
          hintText: "what do you search for?",
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(35),
            borderSide: const BorderSide(
              color: Color(0xff004182),
            ),
          ),
          contentPadding: const EdgeInsets.all(15),
          prefixIcon: const Icon(
            Icons.search,
            size: 30,
            color: Color(0xff004182),
          ),
          suffixIcon: IconButton(
            onPressed: () {
              _textController.clear();
            },
            icon: const Icon(
              Icons.clear,
              size: 20,
              color: Color(0xff004182),
            ),
          ),
        ),
      ),
    );
  }
}
