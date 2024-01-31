// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:ruparupa/componen/inspiraasi.dart';

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
            padding: const EdgeInsets.all(8.0),
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
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: Colors.grey, // Lebar border
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
                          size: 17,
                        ),
                        SizedBox(width: 5),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Cari akhir tahun hemat hingga 50%',
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 14),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(vertical: 9),
                            ),
                            style: TextStyle(color: Colors.black),
                            textAlignVertical: TextAlignVertical.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Image.asset(
                  "assets/images/like.png",
                  width: 20.0,
                  height: 20.0,
                  fit: BoxFit.fill,
                ),
                Image.asset(
                  "assets/images/notif.png",
                  width: 22.0,
                  height: 22.0,
                  fit: BoxFit.fill,
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
                    Container(
                      height: 120,
                      width: 197,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(196, 125, 125, 125),
                        borderRadius: BorderRadius.only(
                          topLeft:
                              Radius.circular(20), // Radius untuk kiri atas
                          bottomLeft:
                              Radius.circular(20), // Radius untuk kiri bawah
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            height: 25,
                            width: 140,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(204, 191, 93, 1),
                                borderRadius: BorderRadius.circular(15)),
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
                                    vertical: 0, horizontal: 12.0),
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
                    Image.asset(
                      "assets/images/inspirasi1.png",
                      width: 197.0,
                      height: 120.0,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    ide1(
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
                      icon2: '',
                      ket2: '',
                    ),
                    Spacer(),
                    ide1(
                      gambar: 'assets/images/inp1.png',
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
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
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
                height: 20.0,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 160,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      Container(
                        height: 160,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 160,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      Container(
                        height: 160,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 160,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      Container(
                        height: 160,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15)),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Shop in Shop",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 180,
                      width: 145,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment
                            .start, // Set the alignment to start
                        crossAxisAlignment: CrossAxisAlignment
                            .start, // Align children to the start
                        children: [
                          Text(
                            "Storage Solutions",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Temukan solusi penyimpanan untuk semua ruangan agar rumah tetap rapi setiap saat",
                            style: TextStyle(
                                fontSize: 9.5, fontWeight: FontWeight.bold),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(100, 20),
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
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10),
                            ),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('assets/images/living.jpg',
                          fit: BoxFit.cover, height: 180, width: 205),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Shop the Look",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 35,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      height: 35,
                      width: 140,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 209, 90, 10),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text(
                        "Festive Feast at Home",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      height: 30,
                      width: 140,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 209, 90, 10),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text(
                        "Gift for loved Ones",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      height: 100,
                      width: 140,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 209, 90, 10),
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text(
                        "Gift Ideas for Month",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child:
                    Image.asset('assets/images/kitchen.png', fit: BoxFit.cover),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Lengkapi hidangan untukjamuan spesial bersama keluarga di rumah dengan rekomendasi perlengkapan meja makan dari ruparupa.com!",
                style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w300),
              ),
              const SizedBox(
                height: 25.0,
              ),
              Container(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    // First Container with Text
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 105,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 209, 90, 10),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Image.asset(
                            "assets/images/peralatanmakan.jpg",
                            width: 30.0,
                            height: 30.0,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(
                          height:
                              15.0, // Adjust the spacing between container and text
                        ),
                        Text(
                          "Peralatan Makan",
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ],
                    ),

                    const SizedBox(width: 20.0),

                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 209, 90, 10),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          "Stoples",
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),

                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 209, 90, 10),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          "Wadah Saji",
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ],
                    ),

                    const SizedBox(width: 15.0),

                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 209, 90, 10),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          "Sumpit",
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ],
                    ),

                    const SizedBox(width: 15.0),
                  ],
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
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Tips & Recommendation",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Container(
                height: 280,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 280,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(7),
                            child: Image.asset(
                              'assets/images/living.jpg',
                              fit: BoxFit.cover,
                              height: 90,
                              width: double.infinity,
                            ),
                          ),
                          SizedBox(height: 10), // Adjust spacing as needed
                          Container(
                            padding: EdgeInsets.only(left: 0),
                            height:
                                100, // Adjust the height based on your content
                            width: 205,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Storage Solutions",
                                  style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Temukan solusi penyimpanan untuk semua ruangan agar rumah tetap rapi setiap saat",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Lihat Selengkapnya",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 10),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20.0),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 280,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(7),
                            child: Image.asset(
                              'assets/images/living.jpg',
                              fit: BoxFit.cover,
                              height: 90,
                              width: double.infinity,
                            ),
                          ),
                          SizedBox(height: 10), // Adjust spacing as needed
                          Container(
                            padding: EdgeInsets.only(left: 0),
                            height:
                                100, // Adjust the height based on your content
                            width: 205,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Storage Solutions",
                                  style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Temukan solusi penyimpanan untuk semua ruangan agar rumah tetap rapi setiap saat",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Lihat Selengkapnya",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 10),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    const SizedBox(width: 15.0),
                    Container(
                      padding: EdgeInsets.all(10),
                      height: 280,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(7),
                            child: Image.asset(
                              'assets/images/living.jpg',
                              fit: BoxFit.cover,
                              height: 90,
                              width: double.infinity,
                            ),
                          ),
                          SizedBox(height: 10), // Adjust spacing as needed
                          Container(
                            padding: EdgeInsets.only(left: 0),
                            height:
                                100, // Adjust the height based on your content
                            width: 205,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Storage Solutions",
                                  style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Temukan solusi penyimpanan untuk semua ruangan agar rumah tetap rapi setiap saat",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Lihat Selengkapna",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 10),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 15.0),
                  ],
                ),
              ),
              const SizedBox(
                height: 13.0,
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 180,
                      width: 153,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment
                            .start, // Set the alignment to start
                        crossAxisAlignment: CrossAxisAlignment
                            .start, // Align children to the start
                        children: [
                          Text(
                            "Cari Inspirasi Rumah, Kini Lebih Mudah",
                            style: TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Temukan ide & solusi untuk semua kebutuhan rumahmu disini",
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.bold),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(100, 20),
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
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10),
                            ),
                          )
                        ],
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('assets/images/living.jpg',
                          fit: BoxFit.cover, height: 150, width: 190),
                    )
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
