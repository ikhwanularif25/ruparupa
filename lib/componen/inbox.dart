import 'package:flutter/material.dart';

class inbox extends StatelessWidget {
  const inbox({
    super.key,
    this.awal,
    this.emot,
    this.keterangan,
  });

final String? awal;
final String? emot;
final String? keterangan;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 400,
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                   awal.toString(),
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Image.network(
                  "https://media.istockphoto.com/id/1328395253/vector/hundred-points-emoji-icon.jpg?b=1&s=170x170&k=20&c=Cr9eHQWZ2DRMzCYtRj370fV5FEkQ4J0Swt5_mPEy29k=",
                  width: 20.0,
                  height: 20.0,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            Text(
               keterangan.toString(),
              style: TextStyle(
                fontSize: 12.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
