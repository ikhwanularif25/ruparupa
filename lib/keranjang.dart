// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ruparupa/componen/produk.dart';
import 'package:ruparupa/componen/total.dart';

class keranjang extends StatefulWidget {
  const keranjang({Key? key}) : super(key: key);

  @override
  _keranjangState createState() => _keranjangState();
}

class _keranjangState extends State<keranjang> {
  bool _isChecked = false;

  int _itemCount = 1;

  void _incrementItemCount() {
    setState(() {
      _itemCount++;
    });
  }

  void _decrementItemCount() {
    if (_itemCount > 1) {
      setState(() {
        _itemCount--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Keranjang Belanja",
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Row(
                  children: [
                    Checkbox(
                      value: _isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked = value!;
                        });
                      },
                      activeColor: Colors.orange, // Warna ketika checkbox aktif
                    ),
                    Text(
                      "Pilih Semua",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "Pindahkan ke Wishlist | List",
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: Row(
                  children: [
                    Checkbox(
                      value: _isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked = value!;
                        });
                      },
                      activeColor: Colors.orange, // Warna ketika checkbox aktif
                    ),
                    Text(
                      "Diproses dari Toko Terdekat",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100.0,
                child: Row(
                  children: [
                    Checkbox(
                      value: _isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          _isChecked = value!;
                        });
                      },
                      activeColor: Colors.orange, // Warna ketika checkbox aktif
                    ),
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
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
                        Text(
                          "Neo Dacey Kursi Kafe - Putih",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        Text(
                          "Rp 285.000",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        const Icon(
                          Icons.favorite_border,
                          size: 24.0,
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        const Icon(
                          Icons.delete_outline,
                          size: 24.0,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Spacer(),
                  IconButton(
                    onPressed: _decrementItemCount,
                    icon: Icon(Icons.remove),
                  ),
                  Text(
                    '$_itemCount',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  IconButton(
                    onPressed: _incrementItemCount,
                    icon: Icon(Icons.add),
                  ),
                ],
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 50.0,
                  ),
                  Text(
                    "Tambah catatan",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Produk yang Mungkin Anda Suka",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Produk(
                      gproduk:
                          'https://images.unsplash.com/photo-1581539250439-c96689b516dd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2hhaXJ8ZW58MHx8MHx8fDA%3D',
                      namaproduk: 'Topaz Meja Tamu Dengan Penyimpanan - Gold',
                      harga: 'Rp119.00',
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Produk(
                      gproduk:
                          'https://images.unsplash.com/photo-1565814329452-e1efa11c5b89?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bGFtcHxlbnwwfHwwfHx8MA%3D%3D',
                      namaproduk: 'Eglo Up-li Lampu Lantai - Putih',
                      harga: '250.000',
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 104.0,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: ListView(
                    children: [
                      total(
                        totalproduk: 'Total Pesanan',
                        totalharga: '1',
                      ),
                      total(
                        totalproduk: 'Total Harga',
                        totalharga: 'Rp285.000',
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Aksi saat tombol ditekan
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(
                              double.infinity, 30), // Set minimum button size
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          padding: EdgeInsets.zero,
                          primary: Colors.orange, // Warna tombol
                        ),
                        child: Text(
                          'Lanjut ke Pembayaran',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
