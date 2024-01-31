import 'package:flutter/material.dart';

class ide1 extends StatelessWidget {
  const ide1({
    super.key,
    this.gambar,
    this.nama,
    this.hargadiskon,
    this.harga,
    this.diskon,
    this.icon,
    this.ket,
    this.icon2,
    this.ket2,
    this.ketColor1,
    this.ketColor2,
    this.discolor,
  });

  final String? gambar;
  final String? nama;
  final String? hargadiskon;
  final String? harga;
  final String? diskon;
  final String? icon;
  final String? ket;
  final String? icon2;
  final String? ket2;
  final Color? ketColor1;
  final Color? ketColor2;
  final Color? discolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                width: 15.0,
              ),
              Image.asset(
                gambar.toString(),
                width: 110.0,
                height: 120.0,
                fit: BoxFit.fill,
              ),
              Image.asset(
                "assets/images/like2.png",
                width: 20.0,
                height: 20.0,
                fit: BoxFit.fill,
                color: Colors.red,
              ),
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            nama.toString(),
            style: TextStyle(
              fontSize: 13.0,
              height: 1.2,
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Row(
            children: [
              Text(
                hargadiskon.toString(),
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey[600],
                  decoration: TextDecoration.lineThrough,
                  decorationColor: Colors.grey[600],
                ),
              ),
              const SizedBox(
                width: 20.0,
              ),
              Container(
                height: 20,
                width: 40,
                decoration: BoxDecoration(
                  color: discolor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  diskon.toString(),
                  style: TextStyle(
                    fontSize: 12.0,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8.0,
          ),
          Text(
            harga.toString(),
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Image.asset(
                icon.toString(),
                width: 20.0,
                height: 20.0,
                fit: BoxFit.fill,
                color: ketColor1,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                ket.toString(),
                style: TextStyle(
                  fontSize: 15.0,
                  color: ketColor2,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Image.asset(
                icon2.toString(),
                width: 20.0,
                height: 20.0,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                width: 10.0,
              ),
              Text(
                ket2.toString(),
                style: TextStyle(
                  fontSize: 12.0,
                  color: ketColor2,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
