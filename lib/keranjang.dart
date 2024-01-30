// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
                            "https://images.unsplash.com/photo-1533050487297-09b450131914?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
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
              Text(
                "text",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                child: Row(
                  children: [
                    Container(
                      height: 250,
                      width: 160,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 160,
                            width: 160,
                            decoration: const BoxDecoration(
                              color: Colors.purple,
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://images.unsplash.com/photo-1533050487297-09b450131914?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Text(
                            "text",
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          Text(
                            "text",
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(150, 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                side: BorderSide(
                                  color: Colors.orange,
                                  width: 0,
                                ),
                              ),
                              padding: EdgeInsets
                                  .zero, // Menghapus padding bawaan tombol
                            ),
                            onPressed: () {},
                            child: Text(
                              "text",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.orange,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      height: 250,
                      width: 160,
                      decoration: const BoxDecoration(
                        color: Colors.red,
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
