// ignore_for_file: camel_case_types

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:flutter/material.dart';

class pertumbuhanEkonomi extends StatefulWidget {
  const pertumbuhanEkonomi({Key? key}) : super(key: key);

  @override
  State<pertumbuhanEkonomi> createState() => _pertumbuhanEkonomiState();
}

class _pertumbuhanEkonomiState extends State<pertumbuhanEkonomi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PERTUMBUHAN EKONOMI'),
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
