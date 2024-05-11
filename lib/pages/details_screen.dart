// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'dart:ffi';

import 'package:user_app/model/item.dart';
import 'package:user_app/shared/appBar.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  Item product;
  Details({required this.product});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  // const Details({super.key});
  bool isShowMore = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Product Details"),
        actions: [
          Row(
            children: [
              ProductsAndPrice(),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.product.imgPath),
            SizedBox(
              height: 11,
            ),
            Text("\$ ${widget.product.price}", style: TextStyle(fontSize: 16)),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.all(4),
                    child: Text("New", style: TextStyle(fontSize: 16)),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 129, 129),
                      borderRadius: BorderRadius.circular(4),
                    )),
                SizedBox(
                  width: 11,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    Icon(
                      Icons.star,
                      size: 26,
                      color: Color.fromARGB(255, 255, 191, 0),
                    ),
                    SizedBox(
                      width: 66,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.edit_location,
                          size: 26,
                          color: Color.fromARGB(168, 3, 65, 27),
                          // color: Color.fromARGB(255, 186, 30, 30),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          widget.product.location,
                          style: TextStyle(fontSize: 19),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
                width: double.infinity,
                child: Text(
                  "Details : ",
                  style: TextStyle(fontSize: 22),
                  textAlign: TextAlign.start,
                )),
            Text(
              "Le Maroc, pays d'Afrique du Nord sur le littoral de l'Atlantique et de la Méditerranée, se distingue par ses influences berbères, arabes et européennes. La médina de Marrakech, quartier médiéval aux allures de labyrinthe, est un lieu animé, avec sa place Jemaa el-Fna et ses souks (marchés) vendant des céramiques, des bijoux et des lanternes en métal. La casbah des Oudayas à Rabat, la capitale, est un fort royal du XIIe siècle qui surplombe l'océan. des bijoux et des lanternes en métal. La casbah des Oudayas à Rabat, la capitale, est un fort royal du XIIe siècle qui surplombe l'océan.",
              style: TextStyle(fontSize: 18),
              maxLines: isShowMore ? 5 : null,
              overflow: TextOverflow.fade,
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    isShowMore = !isShowMore;
                  });
                },
                child: Text(
                  isShowMore ? "Show more" : "Show less",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
