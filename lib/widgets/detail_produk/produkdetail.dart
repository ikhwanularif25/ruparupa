import 'package:flutter/material.dart';

class produkdetail extends StatelessWidget {
  const produkdetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Sunon Aveza li Kursi Kantor Sandaran Rendah\n-Hitam/Putih",
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
          Row(
            children: [
              Text(
                "Rp.4.499.000",
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
            "Rp.3.149.300",
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              const Icon(
                Icons.info_outline,
                size: 24.0,
                color: Colors.grey,
              ),
              Text(
                "S&K berlaku",
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.star_rate,
                    size: 24.0,
                    color: Colors.orange,
                  ),
                  Text(
                    "4.9",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
              Text(
                " | ",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w100,
                ),
              ),
              Text(
                "316 Ulasan",
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w100,
                ),
              ),
              Text(
                " | ",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.w100,
                ),
              ),
              Text(
                "Brand: ",
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.w100,
                ),
              ),
              Text(
                "Informa ",
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
