import 'package:flutter/material.dart';
import 'package:lab1/models/clothes_model.dart';

import '../widgets/clothes_grid.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

const List<String> imagesURL = ["https://static.zara.net/assets/public/8362/9bfa/a60c407eadd5/3f499913afbb/05070291802-e1/05070291802-e1.jpg?ts=1728911865267&w=315",
"https://static.zara.net/assets/public/19e2/efb9/234f4007a202/4e89e4722e8e/06747862724-e1/06747862724-e1.jpg?ts=1727963668191&w=315",
"https://static.zara.net/assets/public/7b83/19a5/f1764249b06c/c7fc1fbe7f04/06494602802-e1/06494602802-e1.jpg?ts=1727256195920&w=315",
"https://static.zara.net/assets/public/000e/d663/29894ff5931e/45b0401d3864/05070410718-e1/05070410718-e1.jpg?ts=1727768340016&w=315"];

class _MyHomePageState extends State<MyHomePage> {

  List<Clothes> clothes = List.generate(imagesURL.length, (index) =>
      Clothes(id: index, name: "Winter Coat $index", img: imagesURL[index], description: "Description $index", price: 50 + 2 * index - 15)
  );

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ClothesGrid(clothes: clothes),
    );
  }
}
