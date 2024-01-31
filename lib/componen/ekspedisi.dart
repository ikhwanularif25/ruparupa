import 'package:flutter/material.dart';

class ekspedisi extends StatelessWidget {
  const ekspedisi({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20.0), // Border radius di atas kiri
          bottomRight: Radius.circular(20.0), // Border radius di atas kanan
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 24,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Pilih metode pemesanan",
              style: TextStyle(
                fontSize: 14.0,
              ),
            ),
            SizedBox(
              height: 50.0,
              child: Row(
                children: [
                  Container(
                    height: 30.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Dikirim ke Alamat",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 30.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                      border: Border.all(
                        width: 1.0,
                        color: Colors.grey,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Diambil di Store",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.0,
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: SizedBox(
                height: 100.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Regular",
                        style: TextStyle(
                          fontSize: 14.0,
                        ),
                      ),
                      Spacer(),
                      const Icon(
                        Icons.keyboard_arrow_down,
                        size: 24.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.0,
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: SizedBox(
                height: 100.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.network(
                        "https://down-id.img.susercontent.com/file/159f49b608548b0d4b03e56a885c9313",
                        width: 35.0,
                        height: 35.0,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacer(),
                          Text(
                            "JNE JTR",
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            "Estimasi: 3 - 4 Hari",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey,
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Spacer(),
                          Text(
                            "Rp25.0000",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey,
                              decoration: TextDecoration.lineThrough,
                            ),
                          ),
                          Text(
                            "Rp5.000",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      const Icon(
                        Icons.keyboard_arrow_down,
                        size: 24.0,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
