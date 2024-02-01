// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:ruparupa/componen/inbox.dart';
import 'package:ruparupa/main.dart';

class pesan extends StatefulWidget {
  const pesan({Key? key}) : super(key: key);

  @override
  State<pesan> createState() => _pesanState();
}

class _pesanState extends State<pesan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Inbox",
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Promo",
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                  Text(
                    "Info",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              inbox(
                awal: 'Serbu DISKON di Year End Sale',
                keterangan:
                    'DISKON sd 50% hingga produk GRATIS dengan harga spesial',
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              inbox(
                awal: 'Mainan Mulai Rp5 Ribuan',
                keterangan: 'Disney, Keepley Pokemon, sd BTS TinyTan semuanya',
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              inbox(
                awal: 'Akhir Tahun Dapat Bonus',
                keterangan:
                    'Bonus Cashback sd Rp1,2 juta+ Ekstra Potongan Rp700 ribu',
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              inbox(
                awal: 'Cepat dan Hemat pakai Gopay',
                keterangan: 'Plus dapat CASHBACK sd Rp100 ribu! Yakin gak mau?',
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              inbox(
                awal: 'Tips Aman Hadapi Badai',
                keterangan:
                    'Miliki lampu daruta, payung, sd pel lantai otomatis',
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              inbox(
                awal: 'Serbu DISKON di Year End Sale',
                keterangan:
                    'DISKON sd 50% hingga produk GRATIS dengan harga spesial',
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              inbox(
                awal: 'Mainan Mulai Rp5 Ribuan',
                keterangan: 'Disney, Keepley Pokemon, sd BTS TinyTan semuanya',
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              inbox(
                awal: 'Akhir Tahun Dapat Bonus',
                keterangan:
                    'Bonus Cashback sd Rp1,2 juta+ Ekstra Potongan Rp700 ribu',
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              inbox(
                awal: 'Cepat dan Hemat pakai Gopay',
                keterangan: 'Plus dapat CASHBACK sd Rp100 ribu! Yakin gak mau?',
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
              inbox(
                awal: 'Tips Aman Hadapi Badai',
                keterangan:
                    'Miliki lampu daruta, payung, sd pel lantai otomatis',
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: ListView(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                        ),
                        Spacer(), // Jarak antara teks dan tombol
                        ElevatedButton(
                          onPressed: () {
                            // Navigasi ke halaman berikutnya
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyHomePage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(350, 50), // Set ukuran tombol
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            padding: EdgeInsets.zero,
                            primary: Colors.orange, // Warna tombol
                          ),
                          child: Text(
                            'Tandai semua dibaca',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  14.0, // Ubah ukuran teks sesuai kebutuhan
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
