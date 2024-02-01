// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:ruparupa/componen/voucher2.dart';

class Voucher extends StatefulWidget {
  const Voucher({Key? key}) : super(key: key);

  @override
  State<Voucher> createState() => _VoucherState();
}

class _VoucherState extends State<Voucher> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Voucher",
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 129, 125, 125),
          ),
        ),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 225, 239, 251),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.info_outline,
                        size: 22.0,
                        color: Color.fromARGB(255, 140, 138, 138),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        "Gunakan voucher pada halaman checkout",
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Color.fromARGB(255, 140, 138, 138),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Semua Voucher",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 209, 90, 10),
                    ),
                  ),
                  Text(
                    "Voucher Saya",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 140, 138, 138),
                    ),
                  ),
                  Text(
                    "Voucher Promo",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 140, 138, 138),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 4.0,
              ),
              Divider(
                color: Color.fromARGB(255, 209, 90, 10),
              ),
              voucher2(
                ket1: "ACE Gratis Ongkir Rp 25.000",
                ket2:
                    "Gratis Ongkir Seluruh Indonesia Rp25.000 dengan\nmin belanja Rp 300.000 untuk semua produk ACE",
                ket3: "21 Jam",
              ),
              voucher2(
                ket1: "Voucher payday Ataru",
                ket2:
                    "Potongan Rp20.000 minimal belanja Rp300.000 \nkhusus belanja produk Ataru",
                ket3: "22 Jam",
              ),
              voucher2(
                ket1: "Voucher Diskon Payday MEGA",
                ket2:
                    "Diskon Rp225.000 min. belanja Rp2.000.000 \ndengan kartu kredit MEGA khusus full payment",
                ket3: "22 Jam",
              ),
              voucher2(
                ket1: "Voucher Diskon Payday UOB",
                ket2:
                    "Potongan Rp150.000 dengan min. belanja \n1.500.000 menggunakan kartu kredit UOB",
                ket3: "22 Jam",
              ),
              voucher2(
                ket1: "Voucher Registrasi",
                ket2: "Potongan Rp25.000, min belanja Rp300.000",
                ket3: "31 Maret 2024",
              ),
              voucher2(
                ket1: "Voucher Registrasi",
                ket2: "Potongan ongkos kirim Rp25.000, min belanja Rp200.000",
                ket3: "31 Maret 2024",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
