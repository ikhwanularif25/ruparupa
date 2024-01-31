import 'package:flutter/material.dart';

class shopinshop extends StatelessWidget {
  const shopinshop({
    super.key,
    this.judul,
    this.ket,
    this.gambar,
    this.color,
  });

  final String? judul;
  final String? ket;
  final String? gambar;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 200,
      width: 400,
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.only(left: 5),
            height: 180,
            width: 145,
            child: Column(
              mainAxisAlignment:
                  MainAxisAlignment.start, // Set the alignment to start
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Align children to the start
              children: [
                Text(
                  judul.toString(),
                  style: TextStyle(
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),
                const SizedBox(
                  height: 7.0,
                ),
                Text(
                  ket.toString(),
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    height: 1.2,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(110, 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                      side: BorderSide(
                        color: Colors.grey,
                        width: 0,
                      ),
                    ),
                    padding: EdgeInsets.zero,
                    backgroundColor: Colors.white,
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Lihat Selengkapnya",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(gambar.toString(),
                fit: BoxFit.cover, height: 180, width: 235),
          )
        ],
      ),
    );
  }
}
