// ignore_for_file: library_private_types_in_public_api

import 'package:bps_cilacap/sensus_tab/sensus_a.dart';
import 'package:bps_cilacap/sensus_tab/sensus_b.dart';
import 'package:bps_cilacap/sensus_tab/sensus_c.dart';
import 'package:flutter/material.dart';

class Sensus extends StatefulWidget {
  const Sensus({Key? key}) : super(key: key);

  @override
  _SensusState createState() => _SensusState();
}
class _SensusState extends State<Sensus> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWeight = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: const Center(
            child: Text('Sensus Penduduk'),
          ),
          toolbarHeight: screenHeight * 0.05,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                text: "Kabupaten",
              ),
              Tab(
                text: "Provinsi",
              ),
              Tab(
                text: "Nasional",
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
          SensusA(),
          SensusB(),
          SensusC(),
        ]),
      ),
    );
  }
}