// ignore_for_file: camel_case_types

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:flutter/material.dart';

class pengangguranContent extends StatefulWidget {
  const pengangguranContent({Key? key}) : super(key: key);

  @override
  State<pengangguranContent> createState() => _pengangguranContentState();
}

class _pengangguranContentState extends State<pengangguranContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PENGANGGURAN'),
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
