import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Mobile Programming Lanjut'),
          backgroundColor: Color.fromARGB(255, 114, 114, 111),
        ),
        body: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TeksUtama(
              teks1: 'REVALDO NOVANDHIKA', 
              teks2: 'NIM: STI202102353'),
            TeksUtama(
              teks1: 'WAHYU TRIYONO', 
              teks2: 'NIM: STI202102355'),
            TeksUtama(
              teks1: 'JULIA KURNIA MUBAROKAH',
              teks2: 'NIM: STI202102363',
              backgroundColor: Color.fromARGB(255, 231, 238, 44),
            ),
            TeksUtama(
              teks1: 'AMIN SURATUN KHASANAH', 
              teks2: 'NIM: STI202102368'),
            TeksUtama(
              teks1: 'ALIFAMI SHOLIHATUN', 
              teks2: 'NIM: STI202102373'),
          ],
        ),
      ),
    );
  }
}

class TeksUtama extends StatelessWidget {
  final String teks1;
  final String teks2;
  final Color? backgroundColor;

  const TeksUtama({super.key, 
    required this.teks1,
    required this.teks2,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            teks1,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 9, 9, 9),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0), // Atur padding di bagian bawah
            child: Text(
              teks2,
              style: const TextStyle(
                color: Color.fromARGB(255, 9, 9, 9),
              ),
            ),
          ),
        ],
      ),
    );
  }
}