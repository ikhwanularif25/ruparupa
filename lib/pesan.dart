// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class pesan extends StatefulWidget {
const pesan({Key? key}) : super(key: key);

@override
State<pesan> createState() => _pesanState();
}

class _pesanState extends State<pesan> {
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
