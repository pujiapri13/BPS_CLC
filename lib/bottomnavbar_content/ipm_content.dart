// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IpmContent extends StatefulWidget {
  const IpmContent({Key? key}) : super(key: key);

  @override
  _IpmContentState createState() => _IpmContentState();
}

class _IpmContentState extends State<IpmContent> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Konten IPM'),
    );
  }
}
