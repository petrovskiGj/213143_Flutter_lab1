import 'package:flutter/cupertino.dart';
import 'package:lab1/models/clothes_model.dart';

import 'clothes_card.dart';

class ClothesGrid extends StatefulWidget {
  final List<Clothes> clothes;
  const ClothesGrid({required this.clothes, super.key});

  @override
  _ClothesGridState createState() => _ClothesGridState();

}

class _ClothesGridState extends State<ClothesGrid> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
      padding: const EdgeInsets.all(6),
      crossAxisCount: 2,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      semanticChildCount: 250,
      childAspectRatio: 200 / 244,
      physics: const BouncingScrollPhysics(),
        children: widget.clothes.map((clothingPiece) =>
            ClothesCard(id: clothingPiece.id, name: clothingPiece.name, img: clothingPiece.img, description: clothingPiece.description, price: clothingPiece.price),
        ).toList()
    );
  }

}

