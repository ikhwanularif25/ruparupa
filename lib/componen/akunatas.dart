import 'package:flutter/material.dart';

class akunatas extends StatelessWidget {
  const akunatas({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 120,
              color: Colors.blue,
              child: Image.network(
                "https://static.vecteezy.com/system/resources/previews/008/302/458/original/eps10-orange-user-solid-icon-or-logo-in-simple-flat-trendy-modern-style-isolated-on-white-background-free-vector.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "Good to see you Kukyo",
              style: TextStyle(
                  color: Color.fromARGB(255, 108, 97, 97),
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Informasi Kontak",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Email",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      SizedBox(
                          width:
                              10), // Jarak antara teks "Email" dan teks "VERIFIED"
                      Container(
                        padding: EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(
                              255, 27, 78, 62), // Warna latar belakang hijau
                          borderRadius: BorderRadius.circular(
                              0.0), // Bentuk kotak dengan sudut melengkung
                        ),
                        child: Text(
                          "VERIFIED",
                          style: TextStyle(
                            color: Colors
                                .white, // Warna teks putih agar kontras dengan latar belakang hijau
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      Spacer(), // Jarak antara teks "VERIFIED" dan teks tambahan
                      Text(
                        "kukyogaming@gmail.com",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Aksi ketika tombol ditekan
                      // Misalnya, tampilkan dialog atau lakukan sesuatu yang relevan
                    },
                    style: ElevatedButton.styleFrom(
                      primary:
                          Colors.white, // Warna latar belakang tombol (putih)
                      onPrimary: Colors.black, // Warna teks pada tombol (hitam)
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            8.0), // Jari-jari sudut border (sesuaikan dengan kebutuhan)
                      ),
                    ),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(
                          vertical: 12.0), // Sesuaikan dengan kebutuhan
                      child: Text("Ubah Email"),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "No Handphone",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                      SizedBox(
                          width:
                              10), // Jarak antara teks "Email" dan teks "VERIFIED"
                      Container(
                        padding: EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(
                              255, 27, 78, 62), // Warna latar belakang hijau
                          borderRadius: BorderRadius.circular(
                              0.0), // Bentuk kotak dengan sudut melengkung
                        ),
                        child: Text(
                          "VERIFIED",
                          style: TextStyle(
                            color: Colors
                                .white, // Warna teks putih agar kontras dengan latar belakang hijau
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                      Spacer(), // Jarak antara teks "VERIFIED" dan teks tambahan
                      Text(
                        "081234567890",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Aksi ketika tombol ditekan
                      // Misalnya, tampilkan dialog atau lakukan sesuatu yang relevan
                    },
                    style: ElevatedButton.styleFrom(
                      primary:
                          Colors.white, // Warna latar belakang tombol (putih)
                      onPrimary: Colors.black, // Warna teks pada tombol (hitam)
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            8.0), // Jari-jari sudut border (sesuaikan dengan kebutuhan)
                      ),
                    ),
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(
                          vertical: 12.0), // Sesuaikan dengan kebutuhan
                      child: Text("Ubah No Handphone"),
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  Divider(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
