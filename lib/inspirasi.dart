// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ruparupa/componen/ShopTheRoom.dart';
import 'package:ruparupa/componen/inspiraasi.dart';
import 'package:ruparupa/componen/shopinshop.dart';
import 'package:ruparupa/componen/shopthelook.dart';
import 'package:ruparupa/componen/shopthelook2.dart';
import 'package:ruparupa/componen/tips.dart';

class inspirasiscreen extends StatefulWidget {
  const inspirasiscreen({Key? key}) : super(key: key);

  @override
  State<inspirasiscreen> createState() => _inspirasiscreenState();
}

class _inspirasiscreenState extends State<inspirasiscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 22),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_back,
                  size: 24.0,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  height: 33,
                  width: 240,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey, // Border color
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.orange,
                          size: 20,
                        ),
                        SizedBox(width: 7),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Cari akhir tahun hemat hingga 50%',
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 13),
                              border: InputBorder.none,
                            ),
                            style: TextStyle(color: Colors.black),
                            textAlignVertical: TextAlignVertical.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Image.asset(
                  "assets/images/like.png",
                  width: 20.0,
                  height: 20.0,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  width: 3.0,
                ),
                Image.asset(
                  "assets/images/notif.png",
                  width: 22.0,
                  height: 22.0,
                  fit: BoxFit.fill,
                ),
                const SizedBox(
                  width: 3.0,
                ),
                Image.asset(
                  "assets/images/cart.png",
                  width: 19.0,
                  height: 19.0,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.center,
                    colors: [
                      Color.fromRGBO(226, 186, 152, 1), // Warna atas (coklat)
                      Color.fromARGB(255, 255, 255, 255), // Warna bawah (putih)
                    ],
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Ide & Inspirasi",
                      style: TextStyle(
                        fontSize: 47.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              Text(
                "Temukan ragam inspirasi untuk hadirkan rumah \n yang nyaman sekaligus menawan",
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 120,
                        margin: const EdgeInsets.only(right: 0.0),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(196, 125, 125, 125),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment
                              .center, // Center content horizontally
                          children: [
                            Container(
                              height: 25,
                              width: 140,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(204, 191, 93, 1),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text(
                                  "New article this week",
                                  style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8.0,
                            ),
                            Text(
                              "10 Alat BBQ Wajib Ada \nSaat Pesta Tahun Baru",
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                height: 1.2,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              height: 30,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                    vertical: 0,
                                    horizontal: 12.0,
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Lihat Selengkapnya",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Color.fromARGB(204, 191, 93, 1),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Image.asset(
                        "assets/images/inspirasi1.png",
                        height: 120.0,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: ide1(
                        gambar: 'assets/images/inp1.png',
                        nama: 'Celcio & Co Pemanggang \nArang Bbq Square',
                        hargadiskon: '',
                        diskon: '',
                        harga: 'Rp1.499.000',
                        icon: "assets/images/info.png",
                        ket: "Voucher Diskon",
                        ketColor1: Colors.red,
                        ketColor2: Colors.red,
                        discolor: Colors.white,
                        icon2: 'assets/images/white.png',
                        ket2: '',
                      ),
                    ),
                    const SizedBox(
                        width: 10), // Add spacing between widgets if needed
                    Expanded(
                      child: ide1(
                        gambar: 'assets/images/spatula.png',
                        nama: 'Celcio & Co Set Peralatan \nBbq 3 Pcs - Hitam',
                        hargadiskon: '249.100',
                        diskon: '10%',
                        harga: 'Rp224.100',
                        icon: "assets/images/star.png",
                        ket: "5 | 1 Ulasan",
                        icon2: 'assets/images/car.png',
                        ket2: 'Sameday & Instant',
                        ketColor2: const Color.fromARGB(255, 101, 101, 101),
                        discolor: const Color.fromARGB(255, 159, 42, 33),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 5,
                    width: 90,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(130, 121, 85, 72),
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Shop the Room",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    height: 5,
                    width: 90,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(130, 121, 85, 72),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        shoptheroom(
                          nama: 'Living Room',
                          gambar: 'assets/images/livingroom.jpg',
                          color: Color.fromARGB(130, 155, 124, 112),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        shoptheroom(
                          nama: 'Kitchen',
                          gambar: 'assets/images/kitchen.jpg',
                          color: Color.fromARGB(255, 255, 229, 144),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Row(
                      children: [
                        shoptheroom(
                          nama: 'Dining Room',
                          gambar: 'assets/images/diningroom.jpg',
                          color: Color.fromARGB(255, 201, 217, 226),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        shoptheroom(
                          nama: 'Bedroom',
                          gambar: 'assets/images/bedroom.jpg',
                          color: Color.fromARGB(255, 161, 200, 250),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
                    child: Row(
                      children: [
                        shoptheroom(
                          nama: 'Workspace',
                          gambar: 'assets/images/workspace.jpg',
                          color: Color.fromARGB(255, 170, 198, 175),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        shoptheroom(
                          nama: 'Bathroom & Laundry',
                          gambar: 'assets/images/bathroom.jpg',
                          color: Color.fromARGB(255, 245, 213, 228),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                      width: 100,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(130, 121, 85, 72),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Shop in Shop",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      height: 5,
                      width: 100,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(130, 121, 85, 72),
                      ),
                    ),
                  ],
                ),
              ),
              shopinshop(
                judul: "Home \nDecoration",
                ket:
                    "Tampilan rumah lebih \ncantik dan menawan \ndengan ragam \npilihan dekorasi",
                gambar: 'assets/images/homedecor.jpg',
                color: Color.fromARGB(208, 239, 227, 214),
              ),
              const SizedBox(
                height: 10.0,
              ),
              shopinshop(
                judul: "Storage \nSolutions",
                ket:
                    "Temukan solusi \npenyimpanan untuk \nsemua ruangan agar \nrumah tetap rapi \nsetiap saat",
                gambar: 'assets/images/homestorage.jpg',
                color: Color.fromARGB(221, 217, 228, 234),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                      width: 100,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(130, 121, 85, 72),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Shop the Look",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      height: 5,
                      width: 100,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(130, 121, 85, 72),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 35,
                  width: double.infinity,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      shopthelook1(
                        nama: "Festive Feast at Home",
                        color: Colors.white,
                        colorNama: Color.fromARGB(255, 209, 90, 10),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      shopthelook1(
                        nama: "Gift for Loved Ones",
                        color: Color.fromARGB(255, 209, 90, 10),
                        colorNama: Colors.white,
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      shopthelook1(
                        nama: "Gift Ideas for Mother",
                        color: Color.fromARGB(255, 209, 90, 10),
                        colorNama: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    'assets/images/kitchen.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Lengkapi hidangan untukjamuan spesial bersama keluarga di rumah dengan rekomendasi perlengkapan meja makan dari ruparupa.com!",
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(255, 122, 122, 122),
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 140,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      const SizedBox(
                        width: 10.0,
                      ),
                      shopthelook2(
                        gambar: "assets/images/peralatanmakan.jpg",
                        nama: 'Peralatan makan',
                      ),
                      const SizedBox(width: 20.0),
                      shopthelook2(
                        gambar: "assets/images/stoples.png",
                        nama: 'Stoples',
                      ),
                      const SizedBox(width: 20.0),
                      shopthelook2(
                        gambar: "assets/images/wadahsaji.jpg",
                        nama: 'Wadah Saji',
                      ),
                      const SizedBox(width: 20.0),
                      shopthelook2(
                        gambar: "assets/images/wadahsaji.jpg",
                        nama: 'Wadah Saji',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 13.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(350, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                    side: BorderSide(
                      color: Color.fromARGB(255, 255, 151, 82),
                      width: 0,
                    ),
                  ),
                  padding: EdgeInsets.zero,
                  backgroundColor: Color.fromARGB(255, 238, 143, 80),
                ),
                onPressed: () {},
                child: const Text(
                  "Lihat Selengkapnya",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                      width: 55,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(130, 121, 85, 72),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Tips & Recommendation",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      height: 5,
                      width: 55,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(130, 121, 85, 72),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 290,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    tips(
                      gambar: 'assets/images/bedroompastel.jpg',
                      judul: "Perabot Kamar Tidur \nSerba Pastel Wajib Punya",
                      ket:
                          "Warna pastel mampu ciptakan kesan \nartistik terutama di dalam kamar tidur. \nTemukan perabot terbaik untuk kamar tidur serba pastel di sini!",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    tips(
                      gambar: 'assets/images/mejakerja.jpg',
                      judul:
                          "8 Perlengkapan Kantor Yang \nBikin Kerja Makin Produktif",
                      ket:
                          "Butuh konsentrasi tinggi saat bekerja? \nTambahan beberapa perlengkapan \nberikut agar tetap produktif dan \nsemangat saat bekerja",
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 15.0,
                  ),
                  const Icon(
                    Icons.circle,
                    size: 15.0,
                    color: Color.fromARGB(255, 209, 90, 10),
                  ),
                  const Icon(
                    Icons.circle,
                    size: 15.0,
                    color: Colors.grey,
                  ),
                  const Icon(
                    Icons.circle,
                    size: 15.0,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 160,
                width: 400,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 224, 210, 193),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 2),
                        height: 160,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Cari Inspirasi Rumah, \nKini Lebih Mudah",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                height: 1.2,
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              "Temukan ide & solusi \nuntuk semua kebutuhan \n rumahmu disini",
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                height: 1.2,
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(110, 2),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0.0),
                                  side: BorderSide(
                                    color: Colors.grey,
                                    width: 0,
                                  ),
                                ),
                                padding: EdgeInsets.zero,
                                backgroundColor: Colors.white,
                              ),
                              onPressed: () {},
                              child: const Text(
                                "Lihat Selengkapnya",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 11),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          'assets/images/living.jpg',
                          fit: BoxFit.cover,
                          height: 140,
                          width: double.infinity,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
