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
                        fontSize: 16.0,
                        color: Colors.grey,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "text | text",
                      style: TextStyle(
                        fontSize: 16.0,
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
                      "text",
                      style: TextStyle(
                        fontSize: 20.0,
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
                      children: [
                        Text(
                          "text",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        Text(
                          "text",
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
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
                    "text",
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
