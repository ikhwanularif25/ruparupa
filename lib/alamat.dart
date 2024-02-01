// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Alamat extends StatefulWidget {
  const Alamat({Key? key}) : super(key: key);

  @override
  State<Alamat> createState() => _AlamatState();
}

class _AlamatState extends State<Alamat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Alamat Saya",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 83, 83, 83),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 15,
            ),
            child: IconButton(
              icon: Icon(
                Icons.close,
                size: 24.0,
                color: Color.fromARGB(255, 83, 83, 83),
              ),
              onPressed: () {
                Navigator.pop(context); // Kembali ke halaman sebelumnya
              },
            ),
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(
                height: 1,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nama Penerima",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Anonym',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                  border: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 9),
                                ),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize:
                                      17, // Atur ukuran font sesuai keinginan
                                ),
                                textAlignVertical: TextAlignVertical.top,
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Alamat Pengirim",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 100,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 9,
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Jalan \nRt \nRw \nKota',
                                    hintStyle: TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                    border: InputBorder.none,
                                    contentPadding:
                                        EdgeInsets.symmetric(vertical: 9),
                                  ),
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        17, // Atur ukuran font sesuai keinginan
                                  ),
                                  textAlignVertical: TextAlignVertical.top,
                                  maxLines: null,
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Nama Penerima",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                        textAlign: TextAlign.left,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Anonym',
                                  hintStyle: TextStyle(
                                      color: Colors.grey, fontSize: 14),
                                  border: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 9),
                                ),
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize:
                                      17, // Atur ukuran font sesuai keinginan
                                ),
                                textAlignVertical: TextAlignVertical.top,
                                maxLines: 1,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.blue),
                        // Ses
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Jadikan Alamat Utama",
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 80,
                  right: 80,
                ),
                child: Row(
                  children: [
                    Container(
                      height: 20,
                      width: 80,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.edit,
                            size: 18.0,
                          ),
                          Text(
                            "Ubah",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Container(
                      height: 20,
                      width: 80,
                      child: Row(
                        children: [
                          const Icon(
                            Icons.delete,
                            size: 18.0,
                          ),
                          Text(
                            "Hapus",
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              const SizedBox(
                height: 300.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 209, 90, 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          0), // Sesuaikan nilai radius sesuai keinginan
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Tambahkan Alamat Baru",
                    style: TextStyle(
                      color: Colors.white,
                    ),
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
