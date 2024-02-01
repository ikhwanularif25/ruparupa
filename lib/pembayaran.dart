// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:ruparupa/componen/bayarproduk.dart';
import 'package:ruparupa/componen/dikirim.dart';
import 'package:ruparupa/componen/ekspedisi.dart';
import 'package:ruparupa/componen/rincianpembayaran.dart';
import 'package:ruparupa/metodepembayaran.dart';

class pembayaran extends StatefulWidget {
  const pembayaran({Key? key}) : super(key: key);

  @override
  State<pembayaran> createState() => _pembayaranState();
}

class _pembayaranState extends State<pembayaran> {
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
              dikirim(),
              const SizedBox(
                height: 2.0,
              ),
              bayarproduk(),
              const SizedBox(
                height: 2.0,
              ),
              ekspedisi(),
              const SizedBox(
                height: 10.0,
              ),
              rincianpembayaran(),
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
                          children: [
                            Text(
                              "Grand Total",
                              style: TextStyle(
                                fontSize: 12.0,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              "Rp290.00",
                              style: TextStyle(
                                fontSize: 20.0,
                              ),
                            ),
                          ],
                        ),
                        Spacer(), // Jarak antara teks dan tombol
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => metodepembayaran()),
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
                            'Pilih Metode Pembayaran',
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
