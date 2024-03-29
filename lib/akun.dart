// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ruparupa/alamat.dart';
import 'package:ruparupa/componen/akunatas.dart';
import 'package:ruparupa/componen/refer.dart';
import 'package:ruparupa/profil.dart';
import 'package:ruparupa/voucher.dart';

class akunscreen extends StatefulWidget {
  const akunscreen({Key? key}) : super(key: key);

  @override
  State<akunscreen> createState() => _akunscreenState();
}

class _akunscreenState extends State<akunscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            hintText: "Cari di ruparupa",
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.call),
          onPressed: () {
            // Aksi ketika tombol panggilan ditekan
            // Misalnya, tampilkan layar panggilan atau lakukan sesuatu yang relevan
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Aksi ketika tombol keranjang belanja ditekan
              // Misalnya, navigasi ke layar keranjang belanja atau lakukan sesuatu yang relevan
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              akunatas(),
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ), // Menambahkan border dengan warna hitam
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Profil Diri",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      children: [
                        Text(
                          "Nama Lengkap",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Spacer(),
                        Text(
                          "Kukyo Ritaka",
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Tanggal Lahir",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Jenis Kelamin",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Password",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            // Aksi ketika teks diklik
                            // Misalnya, tampilkan dialog atau lakukan sesuatu yang relevan
                          },
                          child: Text(
                            "Ubah Password",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              color:
                                  Colors.black, // Warna teks yang dapat diklik
                              decoration: TextDecoration
                                  .underline, // Garis bawah pada teks
                            ),
                          ),
                        )
                      ],
                    ),
                    Text(
                      "Data Member",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Member ID Ace",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            // Aksi ketika teks diklik
                            // Misalnya, tampilkan dialog atau lakukan sesuatu yang relevan
                          },
                          child: Text(
                            "Masukkan Data",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              color:
                                  Colors.black, // Warna teks yang dapat diklik
                              decoration: TextDecoration
                                  .underline, // Garis bawah pada teks
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Member ID Informa",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            // Aksi ketika teks diklik
                            // Misalnya, tampilkan dialog atau lakukan sesuatu yang relevan
                          },
                          child: Text(
                            "Masukkan Data",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              color:
                                  Colors.black, // Warna teks yang dapat diklik
                              decoration: TextDecoration
                                  .underline, // Garis bawah pada teks
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Toys Kingdom Smile Club",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            // Aksi ketika teks diklik
                            // Misalnya, tampilkan dialog atau lakukan sesuatu yang relevan
                          },
                          child: Text(
                            "Masukkan Data",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              color:
                                  Colors.black, // Warna teks yang dapat diklik
                              decoration: TextDecoration
                                  .underline, // Garis bawah pada teks
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Member ID Selma",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            // Aksi ketika teks diklik
                            // Misalnya, tampilkan dialog atau lakukan sesuatu yang relevan
                          },
                          child: Text(
                            "Masukkan Data",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              color:
                                  Colors.black, // Warna teks yang dapat diklik
                              decoration: TextDecoration
                                  .underline, // Garis bawah pada teks
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Member ID Pet Kingdom",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            // Aksi ketika teks diklik
                            // Misalnya, tampilkan dialog atau lakukan sesuatu yang relevan
                          },
                          child: Text(
                            "Masukkan Data",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              color:
                                  Colors.black, // Warna teks yang dapat diklik
                              decoration: TextDecoration
                                  .underline, // Garis bawah pada teks
                            ),
                          ),
                        )
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Profil()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary:
                            Colors.white, // Warna latar belakang tombol (putih)
                        onPrimary:
                            Colors.blue, // Warna teks pada tombol (hitam)
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          side: BorderSide(
                            color: Colors.grey,
                          ), // Menambahkan border pada tombol
                        ),
                      ),
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 100.0,
                            ),
                            const Icon(
                              Icons.mode_edit,
                              size: 15.0,
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Text("Edit Profil"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ), // Menambahkan border dengan warna hitam
                ),
                child: Center(
                  child: Container(
                    height: 200,
                    width: 300,
                    decoration: const BoxDecoration(),
                    child: Image.asset(
                      "assets/images/akun.png",
                      width: 120.0,
                      height: 120.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Alamat()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Warna latar belakang tombol (putih)
                  onPrimary: Colors.blue, // Warna teks pada tombol (hitam)
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                    side: BorderSide(
                      color: Colors.grey,
                    ), // Menambahkan border pada tombol
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Text("Masukkan Alamat Pengiriman"),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                  ), // Menambahkan border dengan warna hitam
                ),
                child: Center(
                  child: Container(
                    height: 200,
                    width: 300,
                    decoration: const BoxDecoration(),
                    child: Image.asset(
                      "assets/images/akun2.png",
                      width: 120.0,
                      height: 120.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Refer()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Warna latar belakang tombol (putih)
                  onPrimary: Colors.blue, // Warna teks pada tombol (hitam)
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                    side: BorderSide(
                      color: Colors.grey,
                    ), // Menambahkan border pada tombol
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Text("Refer & Earn"),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 110,
                    height: 80,
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your action for the first button
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        minimumSize: Size(80.0, 80.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              0.0), // Set border radius to 0 for a square button
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10.0,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Voucher()));
                            },
                            child: Image.asset(
                              "assets/images/voucher.png",
                              width: 45.0,
                              height: 38.0,
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            height: 2.0,
                          ),
                          Text(
                            "Voucher Saya",
                            style: TextStyle(
                                fontSize: 9,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  // Adjust spacing between buttons
                  Container(
                    width: 110,
                    height: 80,
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your action for the second button
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        minimumSize: Size(80.0, 80.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              0.0), // Set border radius to 0 for a square button
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15.0,
                          ),
                          Image.asset(
                            "assets/images/tukar.png",
                            width: 45.0,
                            height: 35.0,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(
                            height: 2.0,
                          ),
                          Text(
                            "Tukar Poin",
                            style: TextStyle(
                              fontSize: 9.5,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Spacer(),

                  Container(
                    width: 110,
                    height: 80,
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your action for the third button
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        minimumSize: Size(80.0, 80.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              0.0), // Set border radius to 0 for a square button
                        ),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 13.0,
                          ),
                          const Icon(
                            Icons.star_border_outlined,
                            size: 35.0,
                            color: Color.fromARGB(255, 77, 77, 77),
                          ),
                          const SizedBox(
                            height: 2.0,
                          ),
                          Text(
                            "Ulasan & Nilai",
                            style: TextStyle(
                              fontSize: 9,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  // Aksi ketika tombol ditekan
                  // Misalnya, tampilkan dialog atau lakukan sesuatu yang relevan
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Warna latar belakang tombol (putih)
                  onPrimary: Colors.black, // Warna teks pada tombol (hitam)
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                    side: BorderSide(
                      color: Colors.grey,
                    ), // Menambahkan border pada tombol
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.credit_card,
                        size: 24.0,
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Text("Kartu Debit/Kredit Saya"),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  // Aksi ketika tombol ditekan
                  // Misalnya, tampilkan dialog atau lakukan sesuatu yang relevan
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Warna latar belakang tombol (putih)
                  onPrimary: Colors.black, // Warna teks pada tombol (hitam)
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                    side: BorderSide(
                      color: Colors.grey,
                    ), // Menambahkan border pada tombol
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/location.png",
                        width: 25.0,
                        height: 25.0,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Text("Toko Dekat Saya"),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  // Aksi ketika tombol ditekan
                  // Misalnya, tampilkan dialog atau lakukan sesuatu yang relevan
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Warna latar belakang tombol (putih)
                  onPrimary: Colors.black, // Warna teks pada tombol (hitam)
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                    side: BorderSide(
                      color: Colors.grey,
                    ), // Menambahkan border pada tombol
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.info_outline,
                        size: 24.0,
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Text("Pusat Bantuan"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 100.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // Aksi ketika tombol ditekan
                        // Misalnya, tampilkan dialog atau lakukan sesuatu yang relevan
                      },
                      style: ElevatedButton.styleFrom(
                        primary:
                            Colors.white, // Warna latar belakang tombol (putih)
                        onPrimary:
                            Colors.black, // Warna teks pada tombol (hitam)
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          side: BorderSide(
                            color: Colors.grey,
                          ), // Menambahkan border pada tombol
                        ),
                      ),
                      child: Container(
                        width: 115,
                        height: 50,
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        child: Text(
                          "Syarat & Ketentuan",
                          style: TextStyle(
                            fontSize: 13.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Aksi ketika tombol ditekan
                        // Misalnya, tampilkan dialog atau lakukan sesuatu yang relevan
                      },
                      style: ElevatedButton.styleFrom(
                        primary:
                            Colors.white, // Warna latar belakang tombol (putih)
                        onPrimary:
                            Colors.black, // Warna teks pada tombol (hitam)
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0),
                          side: BorderSide(
                            color: Colors.grey,
                          ), // Menambahkan border pada tombol
                        ),
                      ),
                      child: Container(
                        width: 115,
                        height: 50,
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: 12.0),
                        child: Text(
                          "Kebijakan Privasi",
                          style: TextStyle(
                            fontSize: 13.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Aksi ketika tombol ditekan
                  // Misalnya, tampilkan dialog atau lakukan sesuatu yang relevan
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Warna latar belakang tombol (putih)
                  // Warna teks pada tombol (hitam)
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                    side: BorderSide(
                      color: Colors.grey,
                    ), // Menambahkan border pada tombol
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    "E-catalogue",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  // Aksi ketika tombol ditekan
                  // Misalnya, tampilkan dialog atau lakukan sesuatu yang relevan
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Warna latar belakang tombol (putih)
                  // Warna teks pada tombol (hitam)
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                    side: BorderSide(
                      color: Colors.grey,
                    ), // Menambahkan border pada tombol
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    "Blog Ruparupa",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () {
                  // Aksi ketika tombol ditekan
                  // Misalnya, tampilkan dialog atau lakukan sesuatu yang relevan
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.white, // Warna latar belakang tombol (putih)
                  // Warna teks pada tombol (hitam)
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                    side: BorderSide(
                      color: Colors.grey,
                    ), // Menambahkan border pada tombol
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/keluar.png",
                        width: 23.0,
                        height: 23.0,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(
                        width: 4.0,
                      ),
                      Text(
                        "Keluar",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Center(
                child: Text(
                  "Versi 3.5.3v147",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
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
