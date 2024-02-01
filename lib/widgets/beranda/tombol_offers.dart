import 'package:flutter/material.dart';

class TombolOffers extends StatelessWidget {
  final Color colorBg;
  final Color colorText;
  final String text;

  const TombolOffers(
      {Key? key,
      required this.colorBg,
      required this.colorText,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(colorBg),
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: colorText,
        ),
      ),
    );
  }
}
