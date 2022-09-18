// ignore_for_file: camel_case_types

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:flutter/material.dart';

class ketimpanganContent extends StatefulWidget {
  const ketimpanganContent({Key? key}) : super(key: key);

  @override
  State<ketimpanganContent> createState() => _ketimpanganContentState();
}

class _ketimpanganContentState extends State<ketimpanganContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KETIMPANGAN'),
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
