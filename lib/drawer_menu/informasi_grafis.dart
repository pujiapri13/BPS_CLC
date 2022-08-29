// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class informasiGrafis extends StatefulWidget {
  const informasiGrafis({Key? key}) : super(key: key);

  @override
  State<informasiGrafis> createState() => _informasiGrafisState();
}

class _informasiGrafisState extends State<informasiGrafis> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: PreferredSize(
          preferredSize: Size.fromHeight(screenHeight),
          child: Column(
            children: <Widget>[
              Container(
                width: screenWidth,
                height: screenHeight * 0.1,
                color: Colors.purple,
                child: Scaffold(
                  appBar: AppBar(
                    title: const Text('Coba'),
                  ),
                ),
              ),
              Container(
                width: screenWidth,
                height: screenHeight * 0.20,
                color: Colors.red,
              ),
              Container(
                width: screenWidth,
                height: screenHeight * 0.15,
                color: Colors.pink,
              ),
              Container(
                width: screenWidth,
                height: screenHeight * 0.15,
                color: Colors.blue,
              ),
              Container(
                width: screenWidth,
                height: screenHeight * 0.15,
                color: Colors.green,
              ),
              Container(
                width: screenWidth,
                height: screenHeight * 0.15,
                color: Colors.white,
              ),
              Container(
                width: screenWidth,
                height: screenHeight * 0.1,
                color: Colors.cyan,
              ),
            ],
          )),
    );
  }
}
