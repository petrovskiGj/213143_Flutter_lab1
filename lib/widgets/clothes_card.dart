import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lab1/models/clothes_model.dart';

import 'clothes_card_data.dart';

class ClothesCard extends StatelessWidget{
  final int id;
  final String name;
  final String img;
  final String description;
  final int price;

  const ClothesCard({super.key, required this.id, required this.name, required this.img, required this.description, required this.price});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(7),
        enableFeedback: true,
        splashColor: Colors.red[50],
        onTap: () => {
          Navigator.pushNamed(context, "/details", arguments: Clothes(id: id, name: name, img: img, description: description, price: price))
        },
        child: Container(
          margin: const EdgeInsets.all(5.0),
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.red.withOpacity(0.8), width: 2),
              borderRadius: BorderRadius.circular(10)
          ),
          child: ClothesCardData(img: img, name: name,  description: description, price: price),
        ),
      ),
    );
  }
}