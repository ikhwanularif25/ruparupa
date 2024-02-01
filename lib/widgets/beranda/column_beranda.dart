import 'package:flutter/material.dart';

class CustomIconColumn extends StatelessWidget {
  final IconData iconData;
  final String text;

  const CustomIconColumn({Key? key, required this.iconData, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.grey, // Warna border
              width: 0.5,
            ),
          ),
          child: Icon(iconData),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(text),
      ],
    );
  }
}
