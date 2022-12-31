// ignore_for_file: library_private_types_in_public_api

import 'package:bps_cilacap/restAPI/repository_sensus.dart';
import 'package:bps_cilacap/sensus_tab/sensus_a.dart';
import 'package:bps_cilacap/sensus_tab/sensus_b.dart';
import 'package:bps_cilacap/sensus_tab/sensus_c.dart';
import 'package:flutter/material.dart';

class Sensus extends StatefulWidget {
  const Sensus({Key? key}) : super(key: key);

  @override
  _SensusState createState() => _SensusState();
}

RepositorySensus repositorySensus = RepositorySensus();

class _SensusState extends State<Sensus> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWeight = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositorySensus.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isikategori = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String kab = isikategori[index = 0].kategori;
              String prov = isikategori[index = 1].kategori;
              String nasional = isikategori[index = 2].kategori;
              return DefaultTabController(
                length: 3,
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.black87,
                    title: const Center(
                      child: Text('Sensus Penduduk'),
                    ),
                    toolbarHeight: screenHeight * 0.05,
                    bottom: TabBar(
                      indicatorColor: Colors.white,
                      tabs: [
                        Tab(
                          text: kab,
                        ),
                        Tab(
                          text: prov,
                        ),
                        Tab(
                          text: nasional,
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
            },
          );
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
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
                      text: " ",
                    ),
                    Tab(
                      text: " ",
                    ),
                    Tab(
                      text: " ",
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
        if (snapshot.connectionState == ConnectionState.none) {
          return Center(
              child: Column(
            children: const [
              Icon(Icons.error_outline),
              Text("Data Kosong"),
            ],
          ));
        } else {
          return const Text("Gagal Memuat Data");
        }
      },
    );
    //
  }
}
