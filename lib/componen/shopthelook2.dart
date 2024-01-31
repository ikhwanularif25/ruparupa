import 'package:flutter/material.dart';

class shopthelook2 extends StatelessWidget {
  const shopthelook2({
    super.key,
    this.nama,
    this.gambar,
  });

  final String? gambar;
  final String? nama;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 105,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Image.asset(
            gambar.toString(),
            width: 30.0,
            height: 30.0,
            fit: BoxFit.fill,
          ),
        ),
        const SizedBox(
          height: 15.0, // Adjust the spacing between container and text
        ),
        Text(
          nama.toString(),
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
