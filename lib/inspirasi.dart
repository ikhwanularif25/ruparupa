// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class inspirasiscreen extends StatefulWidget {
  const inspirasiscreen({Key? key}) : super(key: key);

  @override
  State<inspirasiscreen> createState() => _inspirasiscreenState();
}

class _inspirasiscreenState extends State<inspirasiscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.developer_board,
                  size: 24.0,
                ),
                Container(
                  height: 50,
                  width: 280,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.developer_board,
                        size: 24.0,
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.developer_board,
                  size: 24.0,
                ),
                Icon(
                  Icons.developer_board,
                  size: 24.0,
                ),
                Icon(
                  Icons.developer_board,
                  size: 24.0,
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                "Ide & Inspirasi",
                style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                "Temukan ragam inspirasi untuk hadirkan rumah yang nyaman sekaligus menawan",
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15)),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 190,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      Container(
                        height: 190,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Shop the Room",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 160,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      Container(
                        height: 160,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 160,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      Container(
                        height: 160,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 160,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      Container(
                        height: 160,
                        width: 180,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15)),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Shop in Shop",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10),
                      height: 180,
                      width: 145,
                      decoration: BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment
                            .start, // Set the alignment to start
                        crossAxisAlignment: CrossAxisAlignment
                            .start, // Align children to the start
                        children: [
                          Text(
                            "Storage Solutions",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Temukan solusi penyimpanan untuk semua ruangan agar rumah tetap rapi setiap saat",
                            style: TextStyle(
                                fontSize: 10.5, fontWeight: FontWeight.bold),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(100, 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0.0),
                                side: BorderSide(
                                  color: Colors.grey,
                                  width: 0,
                                ),
                              ),
                              padding: EdgeInsets.zero,
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: const Text(
                              "Lihat Selengkapnya",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 10),
                            ),
                          )
                        ],
                      ),
                    ),
                    Spacer(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset('assets/images/living.jpg',
                          fit: BoxFit.cover, height: 180, width: 205),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Shop the LOOK",
                style: TextStyle(
                  fontSize: 10.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
