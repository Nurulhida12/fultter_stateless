import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Align(
          alignment: Alignment.centerLeft, // Atur posisi ke kiri
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Atur alignment untuk children
            children: [
              TeksUtama(
                teks1: 'YUSIA MARTA',
                teks2: 'Nim: STI202102160 ',
              ),
              TeksUtama(
                teks1: 'RICKY AGUNG VERNANDA',
                teks2: ' Nim: STI202102168',
              ),
              Container( 
                color: Colors.green, 
                child: TeksUtama(
                  teks1: 'EKI NURUL HIDAYAH ',
                  teks2: 'Nim: STI202102173 ',
                ),
              ),
              TeksUtama(
                teks1: 'WAHYU TRI SUKO YUWONO',
                teks2: 'Nim : STI202102175',
              ),
              TeksUtama(
                teks1: 'ESTA PURWANTI',
                teks2: 'Nim: STI202102181',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;

  TeksUtama({required this.teks1, required this.teks2});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Atur alignment untuk children
      children: [
        Text(
          teks1,
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          teks2,
          textDirection: TextDirection.ltr,
        ),
      ],
    );
  }
}