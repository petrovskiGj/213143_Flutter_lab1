import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClothesCardData extends StatelessWidget {
  String name;
  String img;
  String description;
  int price;

  ClothesCardData({super.key, required this.name, required this.img, required this.description, required this.price});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Expanded(child: Image.network(img, fit: BoxFit.contain, alignment: Alignment.bottomRight)),
        const Divider(),
        Text(name,
          style: const TextStyle(fontSize: 21, color: Colors.black87),
        ),
      ],
    );
  }
}