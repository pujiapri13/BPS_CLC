// ignore_for_file: library_private_types_in_public_api

import 'package:bps_cilacap/homescreen_menu/jumlah_penduduk.dart';
import 'package:bps_cilacap/restAPI/repository_sensus_penduduk.dart';
import 'package:flutter/material.dart';

class Sensus extends StatefulWidget {
  const Sensus({Key? key}) : super(key: key);

  @override
  _SensusState createState() => _SensusState();
}

RepositorySensusPenduduk repositorysensus = RepositorySensusPenduduk();

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
                child: FutureBuilder(
                  future: repositorysensus.getData(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      List isisensus = snapshot.data as List;
                      return PageView.builder(
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return Container(
                            child: Center(
                              child: Text(
                                'Sensus Penduduk ' +
                                    isisensus[index = 0].tanggal[0] +
                                    isisensus[index = 0].tanggal[1] +
                                    isisensus[index = 0].tanggal[2] +
                                    isisensus[index = 0].tanggal[3] +
                                    '(SP' +
                                    isisensus[index = 0].tanggal[0] +
                                    isisensus[index = 0].tanggal[1] +
                                    isisensus[index = 0].tanggal[2] +
                                    isisensus[index = 0].tanggal[3] +
                                    ') mencatat jumlah penduduk Kabupaten Cilacap',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          );
                        },
                      );
                    }
                    if (snapshot.hasError) {
                      return const Text("Database Error");
                    }
                    return const Center(
                        child: CircularProgressIndicator(
                      strokeWidth: 1,
                    ));
                  },
                ),
              ),
              Flexible(
                child: SizedBox(
                  height: screenHeight * 0.7,
                  child: Column(
                    children: <Widget>[
                      Flexible(
                        fit: FlexFit.tight,
                        flex: 2,
                        child: SizedBox(
                            width: screenWeight,
                            child: FutureBuilder(
                              future: repositorysensus.getData(),
                              builder: (context, snapshot) {
                                if (snapshot.hasData) {
                                  List isisensus = snapshot.data as List;
                                  return PageView.builder(
                                    itemCount: 1,
                                    itemBuilder: (context, index) {
                                      int totalpenduduk =
                                          isisensus[index = 0].total +
                                              isisensus[index = 1].total;
                                      double rasiopenduduk =
                                          isisensus[index = 0].total /
                                              isisensus[index = 1].total *
                                              100;
                                      return Container(
                                        color: Colors.transparent,
                                        child: Column(
                                          children: [
                                            Flexible(
                                              fit: FlexFit.tight,
                                              flex: 2,
                                              child: Container(
                                                color: Colors.transparent,
                                                child: Center(
                                                    child: Text(
                                                  totalpenduduk.toString(),
                                                  style: TextStyle(
                                                    fontSize: 32,
                                                    fontWeight: FontWeight.w800,
                                                    color: Color.fromRGBO(
                                                        47, 182, 224, 1),
                                                  ),
                                                )),
                                              ),
                                            ),
                                            Flexible(
                                              fit: FlexFit.tight,
                                              flex: 4,
                                              child: Row(
                                                children: [
                                                  Flexible(
                                                    flex: 1,
                                                    fit: FlexFit.tight,
                                                    child: Container(
                                                      color: Colors.transparent,
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            child: Text(
                                                              isisensus[index =
                                                                      0]
                                                                  .total
                                                                  .toString(),
                                                              style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                                color: Color
                                                                    .fromRGBO(
                                                                        47,
                                                                        182,
                                                                        224,
                                                                        1),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            child: Text(
                                                                "LAKI-LAKI"),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    children: [
                                                      Container(
                                                        color:
                                                            Colors.transparent,
                                                        child: Image.asset(
                                                          './assets/images/sensus/sensus.png',
                                                          width: 80,
                                                          height: 80,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Text(
                                                          "Rasio " +
                                                              rasiopenduduk
                                                                  .toStringAsFixed(
                                                                      2),
                                                          style: TextStyle(
                                                              fontSize: 16),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Flexible(
                                                    flex: 1,
                                                    fit: FlexFit.tight,
                                                    child: Container(
                                                      color: Colors.transparent,
                                                      child: Column(
                                                        children: [
                                                          Container(
                                                            child: Text(
                                                              isisensus[index =
                                                                      1]
                                                                  .total
                                                                  .toString(),
                                                              style: TextStyle(
                                                                fontSize: 20,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w800,
                                                                color: Color
                                                                    .fromRGBO(
                                                                        47,
                                                                        182,
                                                                        224,
                                                                        1),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            child: Text(
                                                                "PEREMPUAN"),
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                }
                                if (snapshot.hasError) {
                                  return const Text("Database Error");
                                }
                                return const Center(
                                    child: CircularProgressIndicator(
                                  strokeWidth: 1,
                                ));
                              },
                            )),
                      ),
                      Flexible(
                        flex: 3,
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
