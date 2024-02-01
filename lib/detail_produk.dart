// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'keranjang.dart';
import 'pencarian.dart';

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
      appBar: AppBar(actions: [
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
                            MaterialPageRoute(
                                builder: (context) => pencarian()));
                      },
                      child: Icon(
                        Icons.search,
                        color: Colors.orange,
                      )),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => keranjang()));
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
      ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              items: imgUrls,
              carouselController: _controller,
              options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 1,
                aspectRatio: 3 / 4,
                onPageChanged: (index, reason) {
                  Future.delayed(Duration.zero, () {
                    setState(() {
                      _current = index;
                    });
                  });
                },
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
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
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "/ ${imgUrls.length}",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                        color: Colors.white,
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
    );
  }
}
