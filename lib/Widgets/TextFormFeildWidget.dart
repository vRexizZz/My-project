import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget({super.key, required this.labelText,required this.onChanged});

  String labelText;
  Function (String) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      validator: (data) {
        if (data!.isEmpty) {
          return "Must be Empty";
        }
      },

      decoration:
          InputDecoration(
              hintText: labelText,
            fillColor: Colors.white,
            hintStyle: TextStyle(
              color: Colors.black.withOpacity(1),
              fontFamily: "Poppins"
            )

          ),
    );
  }
}
