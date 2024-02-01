
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:ruparupa/promo.dart';

class voucher extends StatelessWidget {
  const voucher({
    super.key,
    this.produk,
    this.rincian,
    this.kodepromo,
    this.jam,
  });

  final String? produk;
  final String? rincian;
  final String? kodepromo;
  final String? jam;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 400,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              produk.toString(),
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              rincian.toString(),
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
            Row(
              children: [
                Text("Kode Promo: ",
                style: TextStyle(
                fontSize: 12.0,
                ),
                ),
                Text(
                  kodepromo.toString(),
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Berakhir Dalam",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  jam.toString(),
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.red,
                  ),
                ),
                Spacer(),
                const Icon(
                  Icons.help,
                  size: 14.0,
                  color: Colors.grey,
                ),
                Text(
                  "S&K",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
