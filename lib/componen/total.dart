import 'package:flutter/material.dart';

class total extends StatelessWidget {
  const total({
    super.key,
    this.totalproduk,
    this.totalharga,
  });

  final String? totalproduk;
  final String? totalharga;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          Text(
            totalproduk.toString(),
            style: TextStyle(
              color: Colors.grey,
              fontSize: 16.0,
            ),
          ),
          Spacer(),
          Text(
            totalharga.toString(),
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}
