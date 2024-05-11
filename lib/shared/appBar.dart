
// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:user_app/pages/checkout.dart';
import 'package:user_app/provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductsAndPrice extends StatelessWidget {
  const ProductsAndPrice({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Row(children: [
                Stack(
                  children: [
                    Positioned(
                      bottom: 24,
                      child: Container(
                          child: Text(
                            "${cart.selectedProducts.length}",
                            style:
                                TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                          ),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(211, 164, 255, 193),
                              shape: BoxShape.circle)),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CheckOut(),
                        ),
                      );
                        }, icon: Icon(Icons.add_shopping_cart)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Text("\$ ${cart.sumPrice}"),
                )
              ]);
  }
}