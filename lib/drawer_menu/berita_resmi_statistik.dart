import 'package:flutter/material.dart';

class BeritaResmiStatistik extends StatefulWidget {
  const BeritaResmiStatistik({Key? key}) : super(key: key);

  @override
  State<BeritaResmiStatistik> createState() => _BeritaResmiStatistikState();
}

class _BeritaResmiStatistikState extends State<BeritaResmiStatistik> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Berita Resmi Statistik'),
      ),
    );
  }
}
