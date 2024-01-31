import 'package:flutter/material.dart';

class dikirim extends StatelessWidget {
  const dikirim({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.0,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft:
              Radius.circular(12.0), // Border radius di atas kiri
          topRight:
              Radius.circular(12.0), // Border radius di atas kanan
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 24,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "Dikirim dari (Tanggerang - Informa) QBIG BSD",
          style: TextStyle(
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}
