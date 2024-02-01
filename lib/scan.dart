// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Scan extends StatefulWidget {
  const Scan({Key? key}) : super(key: key);

  @override
  State<Scan> createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: "Cari akhir tahun hemat hingga 50%",
            hintStyle:
                TextStyle(fontSize: 12.0), // Atur ukuran font hint text di sini
            prefixIcon: Icon(
              Icons.search,
              color: const Color.fromARGB(255, 231, 87, 76),
              size: 20.0, // Atur ukuran ikon di sini
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Row(
              children: [
                Image.asset(
                  "assets/images/berbagi.png",
                  width: 20.0,
                  height: 20.0,
                  fit: BoxFit.fill,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 4.0,
                ),
                Image.asset(
                  "assets/images/cart.png",
                  width: 20.0,
                  height: 20.0,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/kursi.jpg",
                      width: 330.0,
                      height: 330.0,
                      fit: BoxFit.fill,
                    ),
                    Container(
                      width: 200,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                8.0), // Sesuaikan dengan nilai yang diinginkan
                          ),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            const Icon(
                              Icons.camera_enhance_outlined,
                              size: 20.0, // Ukuran ikon
                              color: Colors.black,
                            ),
                            const SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              "Coba Diruangan Anda/3D",
                              style: TextStyle(
                                fontSize: 11.0, // Ukuran teks
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Neo Dacey Kursi Kafe - Putih",
                      style: TextStyle(
                        fontSize: 15.0,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Rp.659.000",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.0,
                            decoration: TextDecoration.lineThrough,
                            decorationColor: Colors.red,
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Container(
                          width: 28.0,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              "56%",
                              style: TextStyle(
                                fontSize: 10.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Rp285.000",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.info_outline,
                          size: 15.0,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 2.0,
                        ),
                        Text(
                          "S&K Berlaku",
                          style: TextStyle(
                            fontSize: 11.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 18.0,
                          color: Color.fromARGB(255, 215, 184, 44),
                        ),
                        Text(
                          "4.9   |   316 Ulasan   |   Brand: INFORMA",
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 3,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 224, 218, 218),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Produk ini tersedia di toko:",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Image.asset(
                      "assets/images/informa.png",
                      width: 30.0,
                      height: 20.0,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Row(
                      children: [
                        Text(
                          "PayLater & Cicilan 0%",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "mulai dari Rp33.582/bulan",
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                        const SizedBox(
                          width: 40.0,
                        ),
                        const Icon(
                          Icons.arrow_right_outlined,
                          size: 17.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 3,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 224, 218, 218),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      padding: EdgeInsets.all(
                          5.0), // Sesuaikan dengan nilai jarak yang diinginkan
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.0,
                          color: Colors.red,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Image.asset(
                        "assets/images/conversation.png",
                        width: 25.0,
                        height: 25.0,
                        color: Colors.red,
                      ),
                    ),
                    const SizedBox(
                      width: 9.0,
                    ),
                    Container(
                      height: 100,
                      width: 265,
                      decoration: BoxDecoration(),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Tambah ke Keranjang",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
