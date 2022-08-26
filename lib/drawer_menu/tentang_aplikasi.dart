import 'package:flutter/material.dart';

class TentangAplikasi extends StatefulWidget {
  const TentangAplikasi({Key? key}) : super(key: key);

  @override
  State<TentangAplikasi> createState() => _TentangAplikasiState();
}

class _TentangAplikasiState extends State<TentangAplikasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tentang Aplikasi'),
      ),
    );
  }
}
