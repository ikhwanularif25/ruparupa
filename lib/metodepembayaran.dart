import 'package:flutter/material.dart';

class metodepembayaran extends StatefulWidget {
  const metodepembayaran({Key? key}) : super(key: key);

  @override
  State<metodepembayaran> createState() => _metodepembayaranState();
}

class _metodepembayaranState extends State<metodepembayaran> {
  bool isChecked = false;
  bool isCheckedUangElektronik = false;
  bool isCheckedKartuKredit = false;
  bool isCheckedCicil = false;
  bool isCheckedInstant = false;
  String selectedDropdownValue = "Pilih Metode Cicilan";
  String selectedBankValue = "Pilih Bank";
  bool isCheckedBank1 = false;
  bool isCheckedBank2 = false;
  bool isCheckedBank3 = false;
  String selectedPaymentMethod = "";

  bool isMetodePembayaranSelected() {
    return isCheckedUangElektronik || isCheckedKartuKredit || isCheckedCicil;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pembayaran",
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: const Icon(
              Icons.replay_sharp,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
            color: Colors.white,
          ),
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
                child: Center(
                  child: Text(
                    "Pilih Metode Pembayaran",
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.06,
                    ),
                  ),
                ),
              ),
              Divider(),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Seluruh metode pembayaran menggunakan nama rekening/merchant: RUPARUPA",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              // Uang Elektronik
              Container(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          isCheckedUangElektronik = !isCheckedUangElektronik;
                          isCheckedKartuKredit = false;
                          isCheckedCicil = false;
                          isCheckedInstant = false;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.06,
                        height: MediaQuery.of(context).size.width * 0.04,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: isCheckedUangElektronik
                                ? Colors.amber
                                : Colors.grey,
                            width: 2.0,
                          ),
                          color: isCheckedUangElektronik
                              ? Colors.amber
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Uang Elektronik",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.035,
                      ),
                    ),
                    Spacer(),
                    Image.network(
                      "https://www.kindpng.com/picc/m/755-7556747_logo-ovo-transparent-hd-png-download.png",
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.width * 0.1,
                    ),
                    const SizedBox(
                      width: 30.0,
                    ),
                    Image.network(
                      "https://environment-indonesia.com/wp-content/uploads/2021/05/Gopay-Logo-400x400.png",
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.width * 0.1,
                    ),
                  ],
                ),
              ),
              Divider(),
              const SizedBox(
                height: 10.0,
              ),
              // Kartu Kredit / Cicilan
              Container(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          isCheckedKartuKredit = !isCheckedKartuKredit;
                          isCheckedUangElektronik = false;
                          isCheckedCicil = false;
                          isCheckedInstant = false;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.06,
                        height: MediaQuery.of(context).size.width * 0.04,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: isCheckedKartuKredit
                                ? Colors.amber
                                : Colors.grey,
                            width: 2.0,
                          ),
                          color: isCheckedKartuKredit
                              ? Colors.amber
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Kartu Kredit / Cicilan 0% \n / Debit  Online",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.035,
                      ),
                    ),
                    Spacer(),
                    Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCH3xGXdwvobMXjI08dAMsp9Ift8SlHnr1QTkphHJCCZqDjXNlmlZtltzWNvs3-sqs8Cg&usqp=CAU",
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.width * 0.1,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Image.network(
                      "https://www.pngitem.com/pimgs/m/257-2572411_logo-visa-hd-png-download.png",
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.width * 0.1,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/JCB_logo.svg/1200px-JCB_logo.svg.png",
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.width * 0.1,
                    ),
                  ],
                ),
              ),
              Divider(),
              const SizedBox(
                height: 30.0,
              ),
              // Cicilan tanpa kartu

              Container(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          isCheckedCicil = !isCheckedCicil;
                          isCheckedUangElektronik = false;
                          isCheckedKartuKredit = false;
                          isCheckedInstant = false;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.06,
                        height: MediaQuery.of(context).size.width * 0.04,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: isCheckedCicil ? Colors.amber : Colors.grey,
                            width: 2.0,
                          ),
                          color: isCheckedCicil
                              ? Colors.amber
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Cicilan tanpa kartu",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.035,
                      ),
                    ),
                    Spacer(),
                    Image.network(
                      "https://cdn.antaranews.com/cache/1200x800/2021/06/23/kredivo.jpg",
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.width * 0.1,
                    ),
                    const SizedBox(
                      width: 30.0,
                    ),
                    Image.network(
                      "https://fintech.id/storage/files/shares/logo/logofi2/Danakini-Logo.jpeg",
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.width * 0.1,
                    ),
                  ],
                ),
              ),
              Divider(),
              const SizedBox(
                height: 30.0,
              ),
              // Bank
              Container(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              isChecked = !isChecked;
                            });
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.06,
                            height: MediaQuery.of(context).size.width * 0.04,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: isChecked ? Colors.amber : Colors.grey,
                                width: 2.0,
                              ),
                              color:
                                  isChecked ? Colors.amber : Colors.transparent,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          "Bank Transfer",
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.035,
                          ),
                        ),
                      ],
                    ),
                    if (isChecked)
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.width * 0.02,
                        ),
                        child: Column(
                          children: [
                            buildBankCheckbox(
                              "Bank 1",
                              "https://alumni.mercubuana.ac.id/wp-content/uploads/2020/06/BCA-598x330.png",
                            ),
                            const SizedBox(height: 20.0),
                            buildBankCheckbox(
                              "Bank 2",
                              "http://seputarsemarang.com/images/2016/09/logo-maybank-baru-501x141.png",
                            ),
                            const SizedBox(height: 20.0),
                            buildBankCheckbox(
                              "Bank 3",
                              "https://upload.wikimedia.org/wikipedia/id/thumb/5/55/BNI_logo.svg/2560px-BNI_logo.svg.png",
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Divider(),
              Container(
                padding:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          isCheckedInstant = !isCheckedInstant;
                          isCheckedUangElektronik = false;
                          isCheckedKartuKredit = false;
                          isCheckedCicil = false;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.06,
                        height: MediaQuery.of(context).size.width * 0.04,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color:
                                isCheckedInstant ? Colors.amber : Colors.grey,
                            width: 2.0,
                          ),
                          color: isCheckedInstant
                              ? Colors.amber
                              : Colors.transparent,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      "Pembayaran Instant QRIS",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * 0.035,
                      ),
                    ),
                    Spacer(),
                    Image.network(
                      "https://seeklogo.com/images/Q/quick-response-code-indonesia-standard-qris-logo-F300D5EB32-seeklogo.com.png",
                      width: MediaQuery.of(context).size.width * 0.1,
                      height: MediaQuery.of(context).size.width * 0.1,
                    ),
                  ],
                ),
              ),
              Divider(),
              const SizedBox(
                height: 10.0,
              ),
              Column(
                children: [
                  Text(
                    "Dengan mengklik tombol 'Bayar Sekarang'. Anda \n telah menyetujui syarat dan ketentuan dari \n Ruparupa",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60.0,
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: ElevatedButton(
            onPressed: () {
              // Pemeriksaan apakah salah satu metode pembayaran telah dipilih
              if (isMetodePembayaranSelected() || isCheckedInstant) {
                // Tambahkan logika yang sesuai untuk aksi "Bayar Sekarang"
                // Misalnya, tampilkan snackbar atau pindahkan pengguna ke halaman berikutnya
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                        'Metode pembayaran telah dipilih. Lakukan aksi "Bayar Sekarang" di sini.'),
                  ),
                );
              } else {
                // Jika tidak ada metode pembayaran yang dipilih, berikan peringatan
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Pilih metode pembayaran terlebih dahulu.'),
                  ),
                );
              }
            },
            style: ElevatedButton.styleFrom(
              primary: (isMetodePembayaranSelected() || isCheckedInstant)
                  ? Colors.orange
                  : Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
              elevation: 4.0,
            ),
            child: Text(
              (isMetodePembayaranSelected() || isCheckedInstant)
                  ? "Bayar Sekarang"
                  : "Pilih Metode Pembayaran",
              style: TextStyle(
                color: (isMetodePembayaranSelected() || isCheckedInstant)
                    ? Colors.white
                    : Colors.black,
                fontSize: 16.0,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildBankCheckbox(String bankName, String imageUrl) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedBankValue = bankName;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: selectedBankValue == bankName ? Colors.amber : Colors.grey,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: CheckboxListTile(
          contentPadding: EdgeInsets.all(0),
          title: Row(
            children: [
              Image.network(
                imageUrl,
                width: MediaQuery.of(context).size.width * 0.2,
                height: MediaQuery.of(context).size.width * 0.1,
              ),
              SizedBox(width: 10.0),
              Text(""), // Hapus teks untuk memberi ruang hanya pada gambar
            ],
          ),
          value: selectedBankValue == bankName,
          onChanged: (bool? value) {
            setState(() {
              selectedBankValue = value! ? bankName : "";
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
          activeColor: Colors.amber,
        ),
      ),
    );
  }
}
