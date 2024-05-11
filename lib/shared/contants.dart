import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const decorationTextField = InputDecoration(

  // To delete borders
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide.none,
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
);
