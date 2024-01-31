import 'package:flutter/material.dart';

class rincianpembayaran extends StatelessWidget {
  const rincianpembayaran({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Detail Rincian Pembayaran",
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Subtotal (1 Produk)",
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Perbedaan Harga Zona",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        const Icon(
                          Icons.help,
                          size: 14.0,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Total Biaya Kirim",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        const Icon(
                          Icons.help,
                          size: 14.0,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Rp285.000",
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    Text(
                      "Rp0",
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Rp25.000",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Colors.red,
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "Rp5.000",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1.0,
                  color: Colors.grey[900]!,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ImageIcon(
                      AssetImage(
                        "assets/icons/discount-percent-badge.png",
                      ),
                      size: 20.0,
                      color: Colors.orange,
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      "Pakai promo untuk lebih hemat",
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[600],
                      ),
                    ),
                    Spacer(),
                    const Icon(
                      Icons.arrow_forward_ios,
                      size: 14.0,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                const Icon(
                  Icons.info,
                  size: 14.0,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Butuh faktur pajak? Klik di sini",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                const Icon(
                  Icons.info,
                  size: 14.0,
                  color: Colors.grey,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Salin URL? Klik di sini",
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
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
