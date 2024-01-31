import 'package:flutter/material.dart';

class BannerIklan extends StatelessWidget {
  final String img;

  const BannerIklan({Key? key, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.asset(
        img,
        width: 300.0,
        height: 120.0,
        fit: BoxFit.cover,
      ),
    );
  }
}
