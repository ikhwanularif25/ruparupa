import 'package:flutter/material.dart';

class tips extends StatelessWidget {
  const tips({
    super.key,
    this.gambar,
    this.judul,
    this.ket,
  });

  final String? gambar;
  final String? judul;
  final String? ket;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 300,
      width: 250,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 251, 233, 232),
        borderRadius: BorderRadius.circular(7),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(7),
            child: Image.asset(
              gambar.toString(),
              fit: BoxFit.cover,
              height: 110,
              width: double.infinity,
            ),
          ),
          SizedBox(height: 10), // Adjust spacing as needed
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                judul.toString(),
                style: TextStyle(
                  fontSize: 15.5,
                  fontWeight: FontWeight.bold,
                  height: 1.2,
                ),
              ),
              const SizedBox(
                height: 5.0,
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
                  minimumSize: Size(120, 20),
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
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
