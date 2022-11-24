import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Wrap(
            children: [
              buatKotak(Colors.greenAccent, 100),
              buatKotak(Color(0xFFFF9100), 70),
              buatKotak(Colors.greenAccent, 50),
              buatKotak(Color(0xFFFF9100), 90),
              buatKotak(Color(0xFFE57373), 110),
              buatKotak(Color(0xFF64B5F6), 30),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buatKotak(Color warna, double ukuran) {
  return Container(
    decoration: BoxDecoration(color: warna),
    height: ukuran,
    width: ukuran,
    margin: EdgeInsets.all(10),
  );
}
