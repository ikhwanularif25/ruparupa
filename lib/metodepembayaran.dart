// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class metodepembayaran extends StatefulWidget {
  const metodepembayaran({Key? key}) : super(key: key);

  @override
  State<metodepembayaran> createState() => _metodepembayaranState();
}

class _metodepembayaranState extends State<metodepembayaran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}