// ignore_for_file: camel_case_types

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:flutter/material.dart';

class jumlahPenduduk extends StatefulWidget {
  const jumlahPenduduk({Key? key}) : super(key: key);

  @override
  State<jumlahPenduduk> createState() => _jumlahPendudukState();
}

class _jumlahPendudukState extends State<jumlahPenduduk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JUMLAH PENDUDUK'),
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
