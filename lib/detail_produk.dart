import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'keranjang.dart';
import 'pembayaran.dart';
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
      child: Image.asset(
        "assets/img5.jpg",
        fit: BoxFit.contain,
      ),
    ),
    Container(
      child: Image.asset(
        "assets/img6.jpg",
        fit: BoxFit.contain,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.width * 1.2,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          CarouselSlider(
                            items: imgUrls,
                            carouselController: _controller,
                            options: CarouselOptions(
                              autoPlay: true,
                              viewportFraction: 1,
                              aspectRatio: 5 / 7,
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
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: EdgeInsetsDirectional.symmetric(
                          vertical: MediaQuery.of(context).size.width * 0.012,
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
                                    MediaQuery.of(context).size.width * 0.04,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "/ ${imgUrls.length}",
                              style: TextStyle(
                                fontSize:
                                    MediaQuery.of(context).size.width * 0.04,
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
                      MaterialPageRoute(builder: (context) => pembayaran()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(
                        150.0, 35), // Set minimum button size, adjust as needed
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    primary: Colors.orange, // Warna tombol
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
