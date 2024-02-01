// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ruparupa/componen/inspiraasi.dart';
import 'package:ruparupa/keranjang.dart';
import 'package:ruparupa/pencarian.dart';

import 'package:ruparupa/pesan.dart';
import 'package:ruparupa/widgets/beranda/banner_iklan.dart';
import 'package:ruparupa/widgets/beranda/column_beranda.dart';
import 'package:ruparupa/widgets/beranda/partners.dart';
import 'package:ruparupa/widgets/beranda/pilihan.dart';
import 'package:ruparupa/widgets/beranda/shopinshop.dart';
import 'package:ruparupa/widgets/beranda/tombol_offers.dart';

class berandascreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<berandascreen> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final TextEditingController _textFieldController = TextEditingController();

  final List<Widget> imgUrls = [
    Container(
      child: Image.asset(
        "assets/img4.jpg",
        fit: BoxFit.cover,
      ),
    ),
    Container(
      child: Image.asset(
        "assets/img5.jpg",
        fit: BoxFit.cover,
      ),
    ),
    Container(
      child: Image.asset(
        "assets/img6.jpg",
        fit: BoxFit.cover,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                CarouselSlider(
                  items: imgUrls,
                  carouselController: _controller,
                  options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: 1,
                    aspectRatio: 3 / 2,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _current = index;
                      });
                    },
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 2,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: imgUrls.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () => _controller.animateToPage(entry.key),
                            child: Container(
                              width: 9.0,
                              height: 9.0,
                              margin: EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 4.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: (Theme.of(context).brightness ==
                                            Brightness.dark
                                        ? Colors.white
                                        : Colors.black)
                                    .withOpacity(
                                        _current == entry.key ? 0.9 : 0.4),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Lihat Semua Promo",
                          style: TextStyle(
                            color: Color.fromRGBO(219, 118, 63, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CustomIconColumn(iconData: Icons.person, text: "Hello"),
                      SizedBox(width: 15.0),
                      CustomIconColumn(iconData: Icons.home, text: "Rumah"),
                      SizedBox(width: 15.0),
                      CustomIconColumn(iconData: Icons.phone, text: "Telpon"),
                      SizedBox(width: 15.0),
                      CustomIconColumn(
                          iconData: Icons.beach_access, text: "Pantai"),
                      SizedBox(width: 15.0),
                      CustomIconColumn(
                          iconData: Icons.science_sharp, text: "Kimia"),
                      SizedBox(width: 15.0),
                      CustomIconColumn(
                          iconData: Icons.bookmark, text: "Favorit"),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      BannerIklan(img: "assets/img7.jpg"),
                      SizedBox(width: 25.0),
                      BannerIklan(img: "assets/img8.jpg"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  alignment: AlignmentDirectional.centerStart,
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "Penawaran Spesial Hari Ini",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      TombolOffers(
                          colorBg: Colors.orange,
                          colorText: Colors.white,
                          text: "Weekend Deals"),
                      SizedBox(width: 10.0),
                      TombolOffers(
                          colorBg: Colors.white,
                          colorText: Colors.orange,
                          text: "Gopay Payday"),
                      SizedBox(width: 10.0),
                      TombolOffers(
                          colorBg: Colors.white,
                          colorText: Colors.orange,
                          text: "Special Online"),
                      SizedBox(width: 10.0),
                      TombolOffers(
                          colorBg: Colors.white,
                          colorText: Colors.orange,
                          text: "Penawaran Lainnya"),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    ClipRect(
                      child: Image.asset(
                        'assets/img9.jpg',
                      ),
                    ),
                    Container(
                      height: 320,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        margin: EdgeInsets.only(left: 50, top: 50),
                        child: Row(
                          children: [
                            ide1(
                              gambar: 'assets/images/spatula.png',
                              nama:
                                  'Celcio & Co Set Peralatan \nBbq 3 Pcs - Hitam',
                              hargadiskon: '249.100',
                              diskon: '10%',
                              harga: 'Rp224.100',
                              icon: "assets/images/star.png",
                              ket: "5 | 1 Ulasan",
                              icon2: 'assets/images/car.png',
                              ket2: 'Sameday & Instant',
                              ketColor2:
                                  const Color.fromARGB(255, 101, 101, 101),
                              discolor: const Color.fromARGB(255, 159, 42, 33),
                            ),
                            SizedBox(width: 30.0),
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
                              icon2: 'assets/images/white.png',
                              ket2: '',
                            ),
                            SizedBox(width: 30.0),
                            ide1(
                              gambar: 'assets/images/spatula.png',
                              nama:
                                  'Celcio & Co Set Peralatan \nBbq 3 Pcs - Hitam',
                              hargadiskon: '249.100',
                              diskon: '10%',
                              harga: 'Rp224.100',
                              icon: "assets/images/star.png",
                              ket: "5 | 1 Ulasan",
                              icon2: 'assets/images/car.png',
                              ket2: 'Sameday & Instant',
                              ketColor2:
                                  const Color.fromARGB(255, 101, 101, 101),
                              discolor: const Color.fromARGB(255, 159, 42, 33),
                            ),
                            SizedBox(width: 30.0),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all<double>(0),
                    fixedSize:
                        MaterialStateProperty.all<Size>(Size.fromWidth(330)),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.orange),
                      ),
                    ),
                  ),
                  child: Text(
                    "Lihat semua weekend deals",
                    style: TextStyle(
                      color: Colors.orange,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 2,
                  color: Colors.grey[300],
                ),
                Column(
                  children: [
                    Container(
                      alignment: AlignmentDirectional.centerStart,
                      margin: EdgeInsets.only(left: 20, top: 40),
                      child: Text(
                        "Official Partner",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                        child: Row(
                          children: [
                            Partner(
                                img: 'assets/logo/informa.png',
                                partner: 'Informa'),
                            SizedBox(
                              width: 20.0,
                            ),
                            Partner(
                                img: 'assets/logo/logoAce.jpg',
                                partner: 'ACE Online'),
                            SizedBox(
                              width: 20.0,
                            ),
                            Partner(
                                img: 'assets/logo/logoToysKingdom.png',
                                partner: 'Toys Kingdom'),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      alignment: AlignmentDirectional.centerStart,
                      margin: EdgeInsets.only(left: 20, top: 40),
                      child: Text(
                        "Kategori Pilihan Untuk Kamu",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Pilihan(
                              img: 'assets/kategori/alatPel.jpg',
                              text: "Tonggak Pel"),
                          Pilihan(
                              img: 'assets/kategori/perlengkapanMakan.jpeg',
                              text: "Sendok Garpu"),
                          Pilihan(
                              img: 'assets/kategori/alatPel.jpg',
                              text: "Tonggak Pel"),
                          Pilihan(
                              img: 'assets/kategori/alatPel.jpg',
                              text: "Tonggak Pel")
                        ],
                      ),
                    ),
                    Container(
                      alignment: AlignmentDirectional.centerStart,
                      margin: EdgeInsets.only(left: 20, top: 10),
                      child: Text(
                        "Shop In Shop",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ShopInShop(
                              img: 'assets/kategori/shop1.png',
                              text: 'Storage Most Wanted'),
                          ShopInShop(
                              img: 'assets/kategori/shop1.png',
                              text: 'Storage Most Wanted'),
                          ShopInShop(
                              img: 'assets/kategori/shop1.png',
                              text: 'Storage Most Wanted')
                        ],
                      ),
                    ),
                    Container(
                      alignment: AlignmentDirectional.centerStart,
                      margin: EdgeInsets.only(left: 20, top: 20),
                      child: Text(
                        "Promo Official Partner",
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      padding: EdgeInsets.all(20),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          TombolOffers(
                              colorBg: Colors.orange,
                              colorText: Colors.white,
                              text: "Informa"),
                          const SizedBox(
                            width: 10.0,
                          ),
                          TombolOffers(
                              colorBg: Colors.white,
                              colorText: Colors.orange,
                              text: "ACE"),
                          const SizedBox(
                            width: 10.0,
                          ),
                          TombolOffers(
                              colorBg: Colors.white,
                              colorText: Colors.orange,
                              text: "Toys Kingdom"),
                          const SizedBox(
                            width: 10.0,
                          ),
                          TombolOffers(
                              colorBg: Colors.white,
                              colorText: Colors.orange,
                              text: "Selma"),
                          const SizedBox(
                            width: 10.0,
                          ),
                          TombolOffers(
                              colorBg: Colors.white,
                              colorText: Colors.orange,
                              text: "Krisbow"),
                          const SizedBox(
                            width: 10.0,
                          ),
                          TombolOffers(
                              colorBg: Colors.white,
                              colorText: Colors.orange,
                              text: "Ataru"),
                        ],
                      ),
                    )
                  ],
                ),
                Stack(
                  children: [
                    ClipRect(
                      child: Image.asset(
                        'assets/kategori/offerinforma.jpg',
                      ),
                    ),
                    Container(
                      height: 320,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        margin: EdgeInsets.only(left: 50, top: 50),
                        child: Row(
                          children: [
                            ide1(
                              gambar: 'assets/images/spatula.png',
                              nama:
                                  'Celcio & Co Set Peralatan \nBbq 3 Pcs - Hitam',
                              hargadiskon: '249.100',
                              diskon: '10%',
                              harga: 'Rp224.100',
                              icon: "assets/images/star.png",
                              ket: "5 | 1 Ulasan",
                              icon2: 'assets/images/car.png',
                              ket2: 'Sameday & Instant',
                              ketColor2:
                                  const Color.fromARGB(255, 101, 101, 101),
                              discolor: const Color.fromARGB(255, 159, 42, 33),
                            ),
                            SizedBox(width: 30.0),
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
                              icon2: 'assets/images/white.png',
                              ket2: '',
                            ),
                            SizedBox(width: 30.0),
                            ide1(
                              gambar: 'assets/images/spatula.png',
                              nama:
                                  'Celcio & Co Set Peralatan \nBbq 3 Pcs - Hitam',
                              hargadiskon: '249.100',
                              diskon: '10%',
                              harga: 'Rp224.100',
                              icon: "assets/images/star.png",
                              ket: "5 | 1 Ulasan",
                              icon2: 'assets/images/car.png',
                              ket2: 'Sameday & Instant',
                              ketColor2:
                                  const Color.fromARGB(255, 101, 101, 101),
                              discolor: const Color.fromARGB(255, 159, 42, 33),
                            ),
                            SizedBox(width: 30.0),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all<double>(0),
                    fixedSize:
                        MaterialStateProperty.all<Size>(Size.fromWidth(330)),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    shape: MaterialStateProperty.all<OutlinedBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                        side: BorderSide(color: Colors.orange),
                      ),
                    ),
                  ),
                  child: Text(
                    "Lihat semua produk",
                    style: TextStyle(
                      color: Colors.orange,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 2,
                  color: Colors.grey[300],
                ),
                Container(
                  alignment: AlignmentDirectional.centerStart,
                  margin: EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    "Penawaran Saat Ini",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: ClipRRect(
                    child: Image.asset('assets/kategori/final.jpg'),
                  ),
                )
              ],
            ),
            Positioned(
              top: 35,
              left: 20,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.65,
                child: TextField(
                  controller: _textFieldController,
                  autocorrect: false,
                  showCursor: true,
                  cursorColor: Colors.amber[700],
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => pencarian()));
                        },
                        child: Icon(Icons.search)),
                    hintText: 'Cari Barang Apa?',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors
                            .white, // Warna border saat tidak fokus di sini
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.white, // Warna border saat fokus di sini
                      ),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 35,
              right: 10,
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.shopping_cart),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => keranjang()));
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.notifications),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 110.0,
        height: 40.0,
        child: FloatingActionButton(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                20.0), // Ubah nilai untuk membuat sudut lebih bulat
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const ImageIcon(
                  AssetImage(
                    "assets/icons/chat-bubble-typing-oval.png",
                  ),
                  size: 18.0,
                ),
                Spacer(),
                Text(
                  "Rupa Cere",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => pesan()),
            );
          },
        ),
      ),
    );
  }
}
