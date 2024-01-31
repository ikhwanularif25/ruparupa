import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ruparupa/keranjang.dart';
import 'package:ruparupa/pencarian.dart';

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
                      Column(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.grey, // Warna border
                                width: 0.5,
                              ),
                            ),
                            child: Icon(Icons.content_cut),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text("Gunting")
                        ],
                      ),
                      SizedBox(width: 25.0),
                      Column(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.grey, // Warna border
                                width: 0.5,
                              ),
                            ),
                            child: Icon(Icons.home),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text("Rumah Tangga")
                        ],
                      ),
                      SizedBox(width: 25.0),
                      Column(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.grey, // Warna border
                                width: 0.5,
                              ),
                            ),
                            child: Icon(Icons.phone),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text("Telepon Rumah")
                        ],
                      ),
                      SizedBox(width: 25.0),
                      Column(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.grey, // Warna border
                                width: 0.5,
                              ),
                            ),
                            child: Icon(Icons.content_cut),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text("Gunting")
                        ],
                      ),
                      SizedBox(width: 25.0),
                      Column(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.grey, // Warna border
                                width: 0.5,
                              ),
                            ),
                            child: Icon(Icons.home),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text("Rumah Tangga")
                        ],
                      ),
                      SizedBox(width: 25.0),
                      Column(
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.grey, // Warna border
                                width: 0.5,
                              ),
                            ),
                            child: Icon(Icons.phone),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text("Telepon Rumah")
                        ],
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 3),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/img7.jpg",
                          width: 300.0,
                          height: 120.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 25.0),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/img8.jpg",
                          width: 300.0,
                          height: 120.0,
                          fit: BoxFit.cover,
                        ),
                      ),
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
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                          ),
                          child: Text(
                            "Weekend Deals",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          )),
                      SizedBox(width: 7.0),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          child: Text(
                            "Gopay Payday",
                            style: TextStyle(
                              color: Colors.orange,
                            ),
                          )),
                      SizedBox(width: 7.0),
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                          ),
                          child: Text(
                            "Spesial Online",
                            style: TextStyle(
                              color: Colors.orange,
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              top: 35,
              left: 10,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.7,
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
    );
  }
}
