import 'package:flutter/material.dart';

class shopthelook1 extends StatelessWidget {
  const shopthelook1({
    super.key,
    this.nama,
    this.colorNama,
    this.color,
  });
  final String? nama;
  final Color? colorNama;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 150,
      decoration: BoxDecoration(
        color: colorNama,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Color.fromARGB(77, 158, 158, 158), // Lebar border
        ),
      ),
      child: Center(
          child: Text(
        nama.toString(),
        style: TextStyle(
          color: color,
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      )),
    );
  }
}
