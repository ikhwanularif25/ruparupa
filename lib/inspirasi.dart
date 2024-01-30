// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_constructors, prefer_const_literals_to_create_immutables

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
              borderRadius: BorderRadius.circular(15)
              ),
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
              Text("Temukan ragam inspirasi untuk hadirkan rumah yang nyaman sekaligus menawan",
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
              borderRadius: BorderRadius.circular(15)
              ),
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
                  borderRadius: BorderRadius.circular(15)
                  ),
                  ),
                  Container(
                  height: 190,
                  width: 180,
                  decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15)
                  ),
                  ),
                ],
                ),
              ],
              ),
              const SizedBox(
              height: 20.0,
              ),
              Text("Shop the Room",
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
                  borderRadius: BorderRadius.circular(15)
                  ),
                  ),
                  Container(
                  height: 160,
                  width: 180,
                  decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15)
                  ),
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
                  borderRadius: BorderRadius.circular(15)
                  ),
                  ),
                  Container(
                  height: 160,
                  width: 180,
                  decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15)
                  ),
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
                  borderRadius: BorderRadius.circular(15)
                  ),
                  ),
                  Container(
                  height: 160,
                  width: 180,
                  decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15)
                  ),
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
              borderRadius: BorderRadius.circular(15)
              ),
              ),
              Text("Shop in Shop",
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
              color: Colors.grey,
              borderRadius: BorderRadius.circular(15)
              ),
              child: Row(
              children: [
                Container(
                height: 180,
                width: 160,
                decoration: BoxDecoration(
                color: Colors.white,
                ),
                child: Column(
                children: [
                  Text("text",
                  style: TextStyle(
                  fontSize: 20.0,
                  ),
                  ),
                  Text("text",
                  style: TextStyle(
                  fontSize: 15.0,
                  ),
                  ),
                  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity,30),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                    side: BorderSide(
                      color: Colors.grey,
                      width: 0,
                    )
                  ),
                  padding: EdgeInsets.zero,
                  backgroundColor: Colors.blueGrey,
                  ),
                  onPressed: () {},
                  child: const Text("Save"),
                  ),
                ],
                ),
                ),
                Spacer(),
                Container(
                height: 180,
                width: 180,
                decoration: BoxDecoration(
                color: Colors.white,
                ),
                ),
              ],
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
