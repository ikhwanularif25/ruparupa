import 'package:flutter/material.dart';

class Pilihan extends StatelessWidget {
  final String img;
  final String text;

  const Pilihan({Key? key, required this.img, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white, // Warna latar belakang Container
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(0, 1), // Geser shadow ke bawah
          ),
        ],
      ),
      width: 100,
      height: 135,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
            ),
            padding: EdgeInsets.all(7),
            child: ClipRRect(
              child: Image.asset(
                img,
                width: 85,
                height: 85,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 2.0,
          ),
          Text(text)
        ],
      ),
    );
  }
}
