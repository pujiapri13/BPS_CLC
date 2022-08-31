// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class Sensus extends StatefulWidget {
  const Sensus({Key? key}) : super(key: key);

  @override
  _SensusState createState() => _SensusState();
}

class _SensusState extends State<Sensus> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Center(child: Text('SENSUS')),
        ),
      ),
    );
  }
}
