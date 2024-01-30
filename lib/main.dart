// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ruparupa/akun.dart';
import 'package:ruparupa/beranda.dart';
import 'package:ruparupa/inspirasi.dart';
import 'package:ruparupa/transaksi.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage(),
    theme: ThemeData(),
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    berandascreen(),
    inspirasiscreen(),
    transaksiscreen(),
    akunscreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image_search_outlined),
            label: 'inspirasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.source_rounded),
            label: 'transaksi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'akun',
          ),
        ],
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
