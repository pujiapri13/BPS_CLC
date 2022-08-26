import 'package:flutter/material.dart';

class informasiGrafis extends StatefulWidget {
  const informasiGrafis({Key? key}) : super(key: key);

  @override
  State<informasiGrafis> createState() => _informasiGrafisState();
}

class _informasiGrafisState extends State<informasiGrafis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informasi Grafis'),
      ),
    );
  }
}
