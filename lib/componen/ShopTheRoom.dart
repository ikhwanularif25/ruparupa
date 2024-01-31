import 'package:flutter/material.dart';

class shoptheroom extends StatelessWidget {
  const shoptheroom({
    super.key,
    this.nama,
    this.gambar,
    this.color,
  });

  final String? nama;
  final String? gambar;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 190,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              nama.toString(),
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            ClipRRect(
              borderRadius:
                  BorderRadius.circular(10.0), // Atur nilai sesuai keinginan
              child: Image.asset(
                gambar.toString(),
                width: 180.0,
                height: 90.0,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
