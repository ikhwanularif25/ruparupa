import 'package:flutter/material.dart';

class Produk extends StatelessWidget {
  const Produk({
    Key? key,
    this.gproduk,
    this.harga,
    this.namaproduk,
  }) : super(key: key);

  final String? gproduk;
  final String? namaproduk;
  final String? harga;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 160,
            width: 160,
            decoration: BoxDecoration(
              color: Colors.purple,
              image: DecorationImage(
                image: NetworkImage(gproduk.toString()),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  right: 0,
                  child: Icon(
                    Icons.favorite_border,
                    size: 24.0,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
          Text(
            namaproduk.toString(),
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "37%",
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
          Text(
            harga.toString(),
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
            child: Row(
              children: [
                const Icon(
                  Icons.star,
                  size: 24.0,
                ),
                Text(
                  "5 | 540 Ulasan",
                  style: TextStyle(
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
          height: 20.0,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: Size(150, 40),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(
                  color: Colors.orange,
                  width: 1,
                ),
              ),
              padding: EdgeInsets.zero,
            ),
            onPressed: () {},
            child: Text(
              "Tambahkan",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
