import 'package:flutter/material.dart';

class Partner extends StatelessWidget {
  final String img;
  final String partner;

  const Partner({Key? key, required this.img, required this.partner})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                color: Colors.grey,
                width: 1.0, // Menentukan lebar border
              ),
            ),
            child: Image.asset(
              img,
              width: 120.0,
              height: 120.0,
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          partner,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
