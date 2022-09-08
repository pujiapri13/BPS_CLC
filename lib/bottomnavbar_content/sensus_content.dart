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
    var screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    var screenWeight = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Center(
            child: Text('Sensus Penduduk'),
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
                    'Sensus Penduduk 2021 (SP2021) mencatat jumlah penduduk Kabupaten Cilacap',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Flexible(
                child: SizedBox(
                  height: screenHeight * 0.7,
                  child: Column(
                    children: <Widget>[
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 1,
                        child: SizedBox(
                          width: screenWeight,
                          child: Center(
                              child: Text(
                            'Jumlah Penduduk',
                            style: TextStyle(color: Colors.blue[300]),
                          )),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                          width: screenWeight,
                          color: Colors.white,
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
