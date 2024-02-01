import 'package:flutter/material.dart';

class pilihanproduct extends StatelessWidget {
  const pilihanproduct({
    super.key,
    this.judul,
    this.diskon,
    this.harga,
    this.sale,
    this.ulasan,
    this.gambar,
    this.alamatproduk,
  });

  final String? judul;
  final String? diskon;
  final String? harga;
  final String? sale;
  final String? ulasan;
  final String? gambar;
  final Function? alamatproduk;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (alamatproduk != null) {
          alamatproduk!();
        }
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              child: Image.network(
                gambar.toString(),
                width: 100.0,
                height: 100.0,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    judul.toString(),
                    style: TextStyle(
                      fontSize: 10.0,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        diskon.toString(),
                        style: TextStyle(
                          fontSize: 12.0,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(
                              8.0), // You can adjust the radius as needed
                          border: Border.all(
                            color: Colors
                                .red, // Set border color to match the container color
                          ),
                        ),
                        child: Text(
                          "30%",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    harga.toString(),
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.info,
                        size: 24.0,
                        color: Colors.red,
                      ),
                      Text(
                        sale.toString(),
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star_rate,
                        size: 24.0,
                        color: Colors.yellow,
                      ),
                      Text(
                        ulasan.toString(),
                        style: TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
