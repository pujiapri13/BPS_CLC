// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class IpmContent extends StatefulWidget {
  const IpmContent({Key? key}) : super(key: key);

  @override
  _IpmContentState createState() => _IpmContentState();
}

class _IpmContentState extends State<IpmContent> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    var screenWeight = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Center(
            child: Text('Perkembangan IPM'),
          ),
        ),
        body: Container(
          margin: const EdgeInsets.all(2),
          child: Column(
            children: <Widget>[
              Container(
                height: screenHeight * 0.1,
                margin: const EdgeInsets.only(bottom: 2),
                color: Colors.black,
                child: const Center(
                  child: Text(
                    'Perkembangan IPM beserta Komponennya Kabupaten Cilacap, 2017 - 2021',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  color: Colors.blue[300],
                  height: screenHeight * 0.7,
                  child: Column(
                    children: <Widget>[
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: Container(
                          width: screenWeight,
                          color: Colors.cyan,
                          child: const Center(child: Text('Tabel')),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                          width: screenWeight,
                          color: Colors.cyan[100],
                          child: const Center(child: Text('Grafik')),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
