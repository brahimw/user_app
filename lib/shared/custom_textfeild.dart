// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyTextField extends StatelessWidget {
  TextInputType textInputType;
  bool isPassword;
  String hintText;

  MyTextField({
    required this.textInputType,
    required this.isPassword,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: textInputType,
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: hintText,
          // To delete borders
          enabledBorder: OutlineInputBorder(
            borderSide: Divider.createBorderSide(context),
          ),
          // OutLineInputBorder (focus on box when I click it)
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          // fillColor: Colors.red,
          filled: true,
          contentPadding: const EdgeInsets.all(8),
        ));
  }
}
