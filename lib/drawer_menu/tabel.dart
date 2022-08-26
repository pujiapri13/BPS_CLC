import 'package:flutter/material.dart';

class Tabel extends StatefulWidget {
  const Tabel({Key? key}) : super(key: key);

  @override
  State<Tabel> createState() => _TabelState();
}

class _TabelState extends State<Tabel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabel'),
      ),
    );
  }
}
