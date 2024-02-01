// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class voucher2 extends StatelessWidget {
  const voucher2({
    super.key,
    this.ket1,
    this.ket2,
    this.ket3,
  });
  final String? ket1;
  final String? ket2;
  final String? ket3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey, // Warna border
            width: 1.0,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ket1.toString(),
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                ket2.toString(),
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
              Text(
                "Kode Promo",
                style: TextStyle(
                  fontSize: 10.0,
                ),
              ),
              Row(
                children: [
                  Text(
                    "Berakhir Dalam",
                    style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    ket3.toString(),
                    style: TextStyle(
                      fontSize: 11.0,
                      color: Color.fromARGB(255, 209, 90, 10),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 209, 90, 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              5), // Sesuaikan nilai radius sesuai keinginan
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Pakai Voucher",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Syarat & Ketentuan",
                    style: TextStyle(
                        fontSize: 10.0, decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
