import 'package:flutter/material.dart';

class ShopInShop extends StatelessWidget {
  final String img;
  final String text;

  const ShopInShop({Key? key, required this.img, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
          ),
          padding: EdgeInsets.all(7),
          child: ClipRRect(
            child: Image.asset(
              img,
              width: 250,
              height: 130,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 2.0,
        ),
        Text(text)
      ],
    );
  }
}
