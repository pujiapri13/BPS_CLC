import 'package:flutter/material.dart';
import 'package:bps_cilacap/Icons/back_icons_icons.dart';

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
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Center(
            child: Icon(
              BackIcons.circle_arrow,
              size: 40,
            ),
          ),
        ),
      ),
    );
  }
}
