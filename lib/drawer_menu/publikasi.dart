import 'package:flutter/material.dart';

class Publikasi extends StatefulWidget {
  const Publikasi({Key? key}) : super(key: key);

  @override
  State<Publikasi> createState() => _PublikasiState();
}

class _PublikasiState extends State<Publikasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Publikasi'),
      ),
    );
  }
}
