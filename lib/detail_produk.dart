// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class detailproduk extends StatefulWidget {
  const detailproduk({Key? key}) : super(key: key);

  @override
  State<detailproduk> createState() => _CarouselWithIndicatorState();
}

class _CarouselWithIndicatorState extends State<detailproduk> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
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
                      Future.delayed(Duration.zero, () {
                        setState(() {
                          _current = index;
                        });
                      });
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imgUrls.map((url) {
                    int index = imgUrls.indexOf(url);
                    return Container(
                      width: 8.0,
                      height: 8.0,
                      margin: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 2.0,
                      ),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _current == index
                            ? Colors.blue
                            : Colors.grey.shade400,
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
