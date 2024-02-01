// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class Refer extends StatefulWidget {
  const Refer({Key? key}) : super(key: key);

  @override
  State<Refer> createState() => _ReferState();
}

class _ReferState extends State<Refer> {
  final TextEditingController controller =
      TextEditingController(); // Tambahkan controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Refer & Earn",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 83, 83, 83),
          ),
        ),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Image.asset(
                "assets/images/akun3.png",
                width: MediaQuery.of(context).size.width,
                height: 250.0,
                fit: BoxFit.fill,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Ajak temanmu belanja dan dapatkan \nvoucher hingga 250.000. Buruan cuma \nsampai 31 Desember 2022 !",
                style: TextStyle(
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "*Lihat Syarat & Ketentuan",
                    style: TextStyle(
                      fontSize: 12.0,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  const Icon(
                    Icons.help_rounded,
                    size: 18.0,
                    color: Color.fromARGB(255, 113, 113, 113),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              // Tambahkan bagian TextField dan IconButton di bawah
              Container(
                width: 250,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors
                        .grey, // Sesuaikan warna border dengan kebutuhan Anda
                    width: 1, // Sesuaikan lebar border dengan kebutuhan Anda
                  ),
                  borderRadius: BorderRadius.circular(
                      10), // Sesuaikan radius border dengan kebutuhan Anda
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: controller,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Masukkan kode',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        // Implementasi untuk menyalin kode
                        // Anda dapat menggunakan Clipboard atau implementasi kustom
                      },
                      child: Text(
                        'Salin',
                        style: TextStyle(
                          color: Color.fromARGB(255, 209, 90,
                              10), // Sesuaikan warna teks dengan kebutuhan Anda
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Kode expierd: 01 Maret 2003",
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Bagikan :",
                style: TextStyle(
                  fontSize: 17.0,
                  color: Color.fromARGB(255, 209, 90, 10),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 35.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Image.asset(
                          "assets/images/twitter.png",
                          width: 20.0,
                          height: 20.0,
                        ),
                      ),
                    ),
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset(
                          "assets/images/fb.png",
                          width: 20.0,
                          height: 20.0,
                        ),
                      ),
                    ),
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Image.asset(
                          "assets/images/ig.png",
                          width: 20.0,
                          height: 20.0,
                        ),
                      ),
                    ),
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(13.0),
                        child: Image.asset(
                          "assets/images/wa.png",
                          width: 20.0,
                          height: 20.0,
                        ),
                      ),
                    ),
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: IconButton(
                        icon: Icon(Icons.more_horiz),
                        onPressed: () {
                          // Tindakan yang akan diambil saat tombol ditekan
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Text(
                "Cara Mengajak Teman",
                style: TextStyle(
                  fontSize: 20.0,
                  color: const Color.fromARGB(255, 201, 189, 189),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Image.asset(
                "assets/images/refer1.png",
                width: MediaQuery.of(context).size.width,
                height: 320.0,
                fit: BoxFit.fill,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 75,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 209, 90, 10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text(
                        "Total Perolehanmu: Rp0",
                        style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Lihat Voucher Saya",
                        style: TextStyle(
                          fontSize: 10.0,
                          color: Color.fromARGB(255, 223, 212, 212),
                          decoration: TextDecoration.underline,
                          decorationColor: Color.fromARGB(255, 223, 212, 212),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Sudah Daftar",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color.fromARGB(255, 209, 90, 10),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Sudah Belanja",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Divider(
                color: Color.fromARGB(255, 209, 90, 10),
              ),
              const SizedBox(
                height: 100.0,
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/images/refer2.png",
                    width: 200.0,
                    height: 100.0,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Column(
                    children: [
                      Text(
                        "Belum ada teman yang kamu ajak nih",
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 209, 90, 10),
                        ),
                      ),
                      Text(
                        "   Salin kode referensi kamu dan\najak teman kamu untuk belanja yuk!",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Color.fromARGB(255, 209, 90, 10),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 120.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 209, 90, 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          5), // Sesuaikan nilai radius sesuai keinginan
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Lihat History Perolehan",
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
