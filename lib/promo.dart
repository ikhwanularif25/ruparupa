// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

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
                Text("Pakai Kode Promo",
                style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
                ),
                ),
              ],
              ),
              Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
              color: Colors.blue,
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
