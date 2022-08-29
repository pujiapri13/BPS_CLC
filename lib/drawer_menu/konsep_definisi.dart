import 'package:flutter/material.dart';

class KonsepDefinisi extends StatefulWidget {
  const KonsepDefinisi({Key? key}) : super(key: key);

  @override
  State<KonsepDefinisi> createState() => _KonsepDefinisiState();
}

class _KonsepDefinisiState extends State<KonsepDefinisi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Konsep & Definisi'),
        backgroundColor: Colors.black,
      ),
    );
  }
}
