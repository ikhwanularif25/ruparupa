// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class berandascreen extends StatefulWidget {
  const berandascreen({Key? key}) : super(key: key);

  @override
  State<berandascreen> createState() => _berandascreenState();
}

class _berandascreenState extends State<berandascreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: SizedBox(
                    child: Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            fixedSize: Size(250, 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10.0), // Sesuaikan nilai sesuai keinginan Anda
                              // Warna outline
                            ),
                            padding: EdgeInsets
                                .zero, // Menghapus padding bawaan tombol
                          ),
                          onPressed: () {},
                          child: SizedBox(
                            child: Row(
                              children: [
                                const SizedBox(
                                  width: 10.0,
                                ),
                                const Icon(
                                  Icons.search,
                                  size: 20.0,
                                  color: Colors.orange,
                                ),
                                const SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "text",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Spacer(),
                        const Icon(
                          Icons.developer_board,
                          size: 24.0,
                        ),
                        const Icon(
                          Icons.developer_board,
                          size: 24.0,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 180,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://images.unsplash.com/photo-1533050487297-09b450131914?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 100.0,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.more_horiz,
                          size: 24.0,
                        ),
                        Spacer(),
                        Text(
                          "text",
                          style: TextStyle(
                            fontSize: 12.0,
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
      ),
    );
  }
}
