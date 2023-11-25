
import 'package:flutter/material.dart';

void showSnackbar(BuildContext context, String massage) {
  ScaffoldMessenger.of(context)
      .showSnackBar(SnackBar(content: Text(massage)));
}