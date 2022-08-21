// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PdrbContent extends StatefulWidget {
  const PdrbContent({Key? key}) : super(key: key);

  @override
  _PdrbContentState createState() => _PdrbContentState();
}

class _PdrbContentState extends State<PdrbContent> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Konten PDRB'),
    );
  }
}
