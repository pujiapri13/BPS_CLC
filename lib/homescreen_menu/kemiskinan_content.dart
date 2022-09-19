// ignore_for_file: camel_case_types

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:flutter/material.dart';

class kemiskinanContent extends StatefulWidget {
  const kemiskinanContent({Key? key}) : super(key: key);


  @override
  State<kemiskinanContent> createState() => _kemiskinanContentState();
}

class _kemiskinanContentState extends State<kemiskinanContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('KEMISKINAN'),
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
