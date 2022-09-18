// ignore_for_file: camel_case_types

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:flutter/material.dart';

class tenagaKerja extends StatefulWidget {
  const tenagaKerja({Key? key}) : super(key: key);

  @override
  State<tenagaKerja> createState() => _tenagaKerjaState();
}

class _tenagaKerjaState extends State<tenagaKerja> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TENAGA KERJA'),
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
