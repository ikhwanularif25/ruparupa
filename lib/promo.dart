// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:ruparupa/componen/voucher.dart';
import 'package:ruparupa/pembayaran.dart';

class promo extends StatefulWidget {
  const promo({Key? key}) : super(key: key);

  @override
  State<promo> createState() => _promoState();
}

class _promoState extends State<promo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pembayaran",
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: const Icon(
              Icons.replay_sharp,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.arrow_back,
                    size: 20.0,
                  ),
                  Text(
                    "Pakai Kode Promo",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5),
                height: 50,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey, // Lebar border
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 5),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Ketik Kode promo',
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(vertical: 9),
                            ),
                            style: TextStyle(color: Colors.black),
                            textAlignVertical: TextAlignVertical.center,
                          ),
                        ),
                      ),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(
                                10.0), // Border radius di atas kiri
                            topRight: Radius.circular(
                                10.0), // Border radius di atas kanan
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(30.0, 15.0, 0, 0),
                          child: Text(
                            "Pakai",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pilih Voucher",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  Text(
                    "Voucher yang belum bisa digunakan",
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  Spacer(),
                  const Icon(
                    Icons.keyboard_arrow_down,
                    size: 24.0,
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              voucher(
                produk: 'ACE Gratis Ongkir Rp 25.000',
                rincian:
                    'Gratis Ongkir Seluruh Indonesia Rp 25.000 dengan min\nbelanja Rp300.000 untuk semua produk ACE',
                kodepromo: 'A123C',
                jam: '21 jam',
              ),
              const SizedBox(
                height: 10.0,
              ),
              voucher(
                produk: 'Voucher payday Ataru',
                rincian:
                    'Potongan Rp 20.000 minimal belanja Rp300.000\nkhusus belanja produk Ataru',
                kodepromo: '2345',
                jam: '5 jam',
              ),
              const SizedBox(
                height: 10.0,
              ),
              voucher(
                produk: 'Voucher Diskon Payday MEGA',
                rincian:
                    'Diskon Rp225.000 min.belanja Rp2.000.000 dengan\n Kartu Kredit MEGA Khusus Full Payment',
                kodepromo: 'A123C',
                jam: '20 jam',
              ),
              const SizedBox(
                height: 10.0,
              ),
              voucher(
                produk: 'Voucher Diskon Payday UOB',
                rincian:
                    'Gratis Ongkir Seluruh Indonesia Rp 25.000 dengan min\nbelanja Rp300.000 untuk semua produk ACE',
                kodepromo: 'A123C',
                jam: '18 jam',
              ),
              const SizedBox(
                height: 10.0,
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
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => pembayaran()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(140, 30), // Set ukuran tombol
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            padding: EdgeInsets.zero,
                            primary: Colors.orange, // Warna tombol
                          ),
                          child: Text(
                            'Pakai Voucher',
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
