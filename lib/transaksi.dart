// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_const

import 'package:flutter/material.dart';

class transaksiscreen extends StatefulWidget {
  const transaksiscreen({Key? key}) : super(key: key);

  @override
  State<transaksiscreen> createState() => _transaksiscreenState();
}

class _transaksiscreenState extends State<transaksiscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pesanan Saya",
          style: TextStyle(
              color: const Color.fromARGB(255, 103, 100, 100),
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(
                height: 100.0,
              ),
              Container(
                height: 250,
                width: 360,
                decoration: const BoxDecoration(),
                child: Image.asset(
                  "assets/images/1.png",
                  width: 50.0,
                  height: 100.0,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.info,
                      size: 24.0,
                      color: const Color.fromARGB(255, 103, 100, 100),
                    ),
                    const SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      "Maaf Anda belum memiliki transaksi",
                      style: TextStyle(
                        fontSize: 17.0,
                        color: const Color.fromARGB(255, 103, 100, 100),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize:
                      Size(double.infinity, 30), // Set minimum button size
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                    side: BorderSide(
                      color: Colors.grey,
                      width: 0,
                    ),
                  ),
                  padding: EdgeInsets.zero,
                ),
                onPressed: () {},
                child: SizedBox(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets//images/icon.png",
                        width: 16.0,
                        height: 16.0,
                        fit: BoxFit.fill,
                        color: const Color.fromARGB(255, 103, 100, 100),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        "Refresh",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: const Color.fromARGB(255, 103, 100, 100),
                          fontWeight: FontWeight.bold,
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
