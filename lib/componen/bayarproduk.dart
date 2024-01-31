import 'package:flutter/material.dart';

class bayarproduk extends StatelessWidget {
  const bayarproduk({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 24,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: SizedBox(
        height: 100.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 80.0,
                width: 80.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12.0),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://images.unsplash.com/photo-1494438639946-1ebd1d20bf85?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGxhbXB8ZW58MHx8MHx8fDA%3D",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 10.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Text(
                    "Neo Dacer Kursi Kafe - Putih",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[600],
                    ),
                  ),
                  Text(
                    "SKU: 10219049",
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Rp659.000",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.grey[300],
                          decoration: TextDecoration.lineThrough,
                          decorationColor: Colors.red,
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "(56%)",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Rp285.000",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.blue,
                    ),
                  ),
                  Spacer(),
                ],
              ),
              Spacer(),
              Text(
                "Jumlah: ",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey,
                ),
              ),
              Text(
                "1",
                style: TextStyle(
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
