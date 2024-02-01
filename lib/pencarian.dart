// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ruparupa/scan.dart';

import 'componen/pilihanproduct.dart';

class pencarian extends StatefulWidget {
  const pencarian({Key? key}) : super(key: key);

  @override
  State<pencarian> createState() => _pencarianState();
}

class _pencarianState extends State<pencarian> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
            decoration: InputDecoration(
          hintText: "Kursi",
          prefixIcon: Icon(Icons.search),
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Scan()),
                );
              },
              child: Image.network(
                "https://cdn4.iconfinder.com/data/icons/doodle-4/158/scan-256.png",
                width: 20.0,
                height: 20.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Produk Pilihan",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "Lihat Semua",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 2.0,
              ),
              Row(
                children: [
                  Text(
                    "1711 Produk dalam kategori Semua Kategori dengan kata \nkunci kursi",
                    style: TextStyle(
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                ],
              ),
              pilihanproduct(
                judul:
                    'Sunon Aveza li Kursi Kantor Sandaran Rendah\n-Hitam/Putih',
                diskon: 'Rp.4.499.000',
                harga: 'Rp.3.149.300',
                sale: 'Clearence Sale',
                ulasan: '5 | 5 Ulasan',
                gambar:
                    'https://images.unsplash.com/photo-1581539250439-c96689b516dd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2hhaXJ8ZW58MHx8MHx8fDA%3D',
              ),
              const SizedBox(
                height: 10.0,
              ),
              pilihanproduct(
                judul: 'Yard Kursi Sekolah - Abu-Abu Tua',
                diskon: 'Rp.2.499.000',
                harga: 'Rp.1.149.300',
                sale: 'Clearence Sale',
                ulasan: '5 | 1 Ulasan',
                gambar:
                    'https://images.unsplash.com/photo-1580480055273-228ff5388ef8?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8Y2hhaXJ8ZW58MHx8MHx8fDA%3D',
              ),
              const SizedBox(
                height: 10.0,
              ),
              pilihanproduct(
                judul: 'Yvette Kursi Sekolah - Merah',
                diskon: 'Rp.799.000',
                harga: 'Rp.599.300',
                sale: 'Clearence Sale',
                ulasan: '5 | 1 Ulasan',
                gambar:
                    'https://images.unsplash.com/photo-1592078615290-033ee584e267?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGNoYWlyfGVufDB8fDB8fHww',
              ),
              const SizedBox(
                height: 10.0,
              ),
              pilihanproduct(
                judul: 'Sauber Kursi Tamu Kantor',
                diskon: 'Rp.2.499.000',
                harga: 'Rp.1.149.300',
                sale: 'Clearence Sale',
                ulasan: '4.7 | 3 Ulasan',
                gambar:
                    'https://images.unsplash.com/photo-1506439773649-6e0eb8cfb237?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGNoYWlyfGVufDB8fDB8fHww',
              ),
              const SizedBox(
                height: 10.0,
              ),
              pilihanproduct(
                judul: 'Sunon Aveza li Kursi Kantor Sandaran Tinggi',
                diskon: 'Rp.4.799.000',
                harga: 'Rp.3.359.300',
                sale: 'Clearence Sale',
                ulasan: '5 | 5 Ulasan',
                gambar:
                    'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fGNoYWlyfGVufDB8fDB8fHww',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
