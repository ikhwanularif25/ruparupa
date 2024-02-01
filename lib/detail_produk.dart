import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'keranjang.dart';

import 'pencarian.dart';
import 'widgets/detail_produk/produkdetail.dart';

class detailproduk extends StatefulWidget {
  const detailproduk({Key? key}) : super(key: key);

  @override
  State<detailproduk> createState() => _CarouselWithIndicatorState();
}

class _CarouselWithIndicatorState extends State<detailproduk> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final TextEditingController _textFieldController = TextEditingController();
  final List<Widget> imgUrls = [
    Container(
      child: Image.network(
        "https://images.unsplash.com/photo-1581539250439-c96689b516dd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2hhaXJ8ZW58MHx8MHx8fDA%3D",
        fit: BoxFit.contain,
      ),
    ),
    Container(
      child: Image.network(
        "https://images.unsplash.com/photo-1632935187086-49a9d8027292?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTB8fGZ1cm5pdHVyZXN8ZW58MHx8MHx8fDA%3D",
        fit: BoxFit.contain,
      ),
    ),
    Container(
      child: Image.network(
        "https://images.unsplash.com/photo-1554295405-abb8fd54f153?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGZ1cm5pdHVyZXN8ZW58MHx8MHx8fDA%3D",
        fit: BoxFit.contain,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.63,
                height: 42.0,
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
                          MaterialPageRoute(builder: (context) => pencarian()),
                        );
                      },
                      child: Icon(
                        Icons.search,
                        color: Colors.orange,
                      ),
                    ),
                    hintText: 'Cari Barang Apa?',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Colors.grey,
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
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.share),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => keranjang()),
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.shopping_cart),
                    color: Colors.black,
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width * 1.2,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: Column(
                            children: [
                              CarouselSlider(
                                items: imgUrls,
                                carouselController: _controller,
                                options: CarouselOptions(
                                  autoPlay: true,
                                  viewportFraction: 1,
                                  aspectRatio: 5 / 6,
                                  onPageChanged: (index, reason) {
                                    Future.delayed(Duration.zero, () {
                                      setState(() {
                                        _current = index;
                                      });
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              padding: EdgeInsetsDirectional.symmetric(
                                vertical:
                                    MediaQuery.of(context).size.width * 0.012,
                              ),
                              width: MediaQuery.of(context).size.width * 0.15,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "${_current + 1} ",
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "/ ${imgUrls.length}",
                                    style: TextStyle(
                                      fontSize:
                                          MediaQuery.of(context).size.width *
                                              0.04,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  produkdetail(),
                ],
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.01,
                      ),
                      child: Text(
                        "Produk ini tersedia di toko",
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.015,
                        ),
                      ),
                    ),
                    Image.asset(
                      "assets/img2.jpg",
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.1,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.01,
                      ),
                      child: RichText(
                        text: TextSpan(
                          text: ' ',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Paylater & Cicilan 0% ',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.017,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: 'mulai dari Rp33.852/bulan',
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.015,
                                color: Colors.black,
                                fontWeight: FontWeight.w300,
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
            const SizedBox(
              height: 5.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.store,
                          size: 30.0,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Cek Ketersediaan di Toko",
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "Produk dapat diambil atau dikirim dari",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                                Text(
                                  " 49 Toko",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.place,
                          size: 30.0,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Lokasi Pengiriman",
                              style: TextStyle(
                                fontSize: 14.0,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  "cek pilihan pengiriman ke ",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                  ),
                                ),
                                Text(
                                  "alamatmu ",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Container(
            //   width: MediaQuery.of(context).size.width,
            //   decoration: const BoxDecoration(
            //     color: Colors.white,
            //   ),
            //   child: DefaultTabController(
            //     length: 2,
            //     child: Column(
            //       children: [
            //         PreferredSize(
            //           preferredSize: Size.fromHeight(50),
            //           child: TabBar(
            //             controller: _tabController,
            //             tabs: [
            //               Tab(
            //                 text: 'Tab 1',
            //               ),
            //               Tab(
            //                 text: 'Tab 2',
            //               ),
            //             ],
            //           ),
            //         ),
            //         Expanded(
            //           child: TabBarView(
            //             controller: _tabController,
            //             children: [
            //               Container(
            //                 height: 100,
            //                 width: 100,
            //                 decoration: const BoxDecoration(
            //                   color: Colors.blue,
            //                 ),
            //               ),
            //               Container(
            //                 height: 100,
            //                 width: 100,
            //                 decoration: const BoxDecoration(
            //                   color: Colors.blue,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 60.0, // Adjust the height as needed
        child: BottomAppBar(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    border: Border.all(
                      color: Colors.orange, // Set the outline color
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.message,
                      size: 24.0,
                      color: Colors.orange, // Set the icon color
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => keranjang()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromWidth(
                      MediaQuery.of(context).size.width * 0.7,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    backgroundColor: Colors.orange, // Warna tombol
                  ),
                  child: Text(
                    'Tambah Ke Keranjang',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
