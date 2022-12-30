// ignore_for_file: file_names

import 'package:bps_cilacap/restAPI/repository_penduduk_pendidikan.dart';
import 'package:bps_cilacap/restAPI/repository_tenaga_kerja.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:pie_chart/pie_chart.dart';

class IsiAkPendidikanE extends StatefulWidget {
  const IsiAkPendidikanE({super.key});

  @override
  State<IsiAkPendidikanE> createState() => _IsiAkPendidikanEState();
}

enum LegendShape { circle, rectangle }

RepositoryPendudukPendidikan repositoryPendudukPendidikan =
    RepositoryPendudukPendidikan();

class _IsiAkPendidikanEState extends State<IsiAkPendidikanE> {
  int key = 0;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositoryPendudukPendidikan.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          // ignore: unused_local_variable
          List isipddkpend = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              double sdLK = double.parse(isipddkpend[index = 0].sd);
              double smpLK = double.parse(isipddkpend[index = 0].smp);
              double smaLK = double.parse(isipddkpend[index = 0].sma);
              double ptLK =
                  double.parse(isipddkpend[index = 0].perguruan_tinggi);

              double sdPR = double.parse(isipddkpend[index = 5].sd);
              double smpPR = double.parse(isipddkpend[index = 5].smp);
              double smaPR = double.parse(isipddkpend[index = 5].sma);
              double ptPR =
                  double.parse(isipddkpend[index = 5].perguruan_tinggi);

              return Column(
                children: [
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Flexible(
                              flex: 3,
                              fit: FlexFit.tight,
                              child: Container(
                                height: screenHeight * 0.05,
                                color: Colors.cyan,
                                child: const Center(
                                  child: Text(
                                    "Tingkat Pendidikan",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Container(
                                color: Colors.cyan,
                                height: screenHeight * 0.05,
                                child: const Center(
                                  child: Text(
                                    "Laki-laki",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Container(
                                color: Colors.cyan,
                                height: screenHeight * 0.05,
                                child: const Center(
                                  child: Text(
                                    "Perempuan",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Container(
                                color: Colors.cyan,
                                height: screenHeight * 0.05,
                                child: const Center(
                                  child: Text(
                                    "Jumlah",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Flexible(
                              flex: 3,
                              fit: FlexFit.tight,
                              child: Container(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 5, right: 5),
                                height: screenHeight * 0.05,
                                child: const Center(
                                  child: Text(
                                    "SD ke Bawah",
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: screenHeight * 0.05,
                                child: Center(
                                  child: Text(sdLK.toStringAsFixed(2)),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: screenHeight * 0.05,
                                child: Center(
                                  child: Text(
                                    sdPR.toStringAsFixed(2),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: screenHeight * 0.05,
                                child: Center(
                                  child: Text(
                                    ((sdLK + sdPR) / 2).toStringAsFixed(2),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Flexible(
                              flex: 3,
                              fit: FlexFit.tight,
                              child: Container(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 5, right: 5),
                                height: screenHeight * 0.05,
                                child: const Center(
                                  child: Text(
                                    "SMP",
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: screenHeight * 0.05,
                                child: Center(
                                  child: Text(
                                    smpLK.toStringAsFixed(2),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: screenHeight * 0.05,
                                child: Center(
                                  child: Text(
                                    smpPR.toStringAsFixed(2),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: screenHeight * 0.05,
                                child: Center(
                                  child: Text(
                                    ((smpLK + smpPR) / 2).toStringAsFixed(2),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Flexible(
                              flex: 3,
                              fit: FlexFit.tight,
                              child: Container(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 5, right: 5),
                                height: screenHeight * 0.05,
                                child: const Center(
                                  child: Text(
                                    "SMA / SMK",
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: screenHeight * 0.05,
                                child: Center(
                                  child: Text(
                                    smaLK.toStringAsFixed(2),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: screenHeight * 0.05,
                                child: Center(
                                  child: Text(
                                    smaPR.toStringAsFixed(2),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: screenHeight * 0.05,
                                child: Center(
                                  child: Text(
                                    ((smaLK + smaPR) / 2).toStringAsFixed(2),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Flexible(
                              flex: 3,
                              fit: FlexFit.tight,
                              child: Container(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 5, right: 5),
                                height: screenHeight * 0.05,
                                child: const Center(
                                  child: Text(
                                    "Perguruan Tinggi",
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: screenHeight * 0.05,
                                child: Center(
                                  child: Text(
                                    ptLK.toStringAsFixed(2),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: screenHeight * 0.05,
                                child: Center(
                                  child: Text(
                                    ptPR.toStringAsFixed(2),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: screenHeight * 0.05,
                                child: Center(
                                  child: Text(
                                    ((ptLK + ptPR) / 2).toStringAsFixed(2),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Flexible(
                              flex: 3,
                              fit: FlexFit.tight,
                              child: Container(
                                color: Colors.cyan,
                                padding: const EdgeInsets.only(
                                    top: 10, left: 5, right: 5),
                                height: screenHeight * 0.05,
                                child: const Center(
                                  child: Text(
                                    "Total Penduduk",
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Container(
                                color: Colors.cyan,
                                height: screenHeight * 0.05,
                                child: Center(
                                  child: Text(
                                    (sdLK + smpLK + smaLK + ptLK)
                                        .toStringAsFixed(2),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Container(
                                color: Colors.cyan,
                                height: screenHeight * 0.05,
                                child: Center(
                                  child: Text(
                                    (sdPR + smpPR + smaPR + ptPR)
                                        .toStringAsFixed(2),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Container(
                                color: Colors.cyan,
                                height: screenHeight * 0.05,
                                child: Center(
                                  child: Text(
                                    (((sdLK + smpLK + smaLK + ptLK) +
                                                (sdPR + smpPR + smaPR + ptPR)) /
                                            2)
                                        .toStringAsFixed(2),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.tight,
                    child: PieChart(
                      key: ValueKey(key),
                      dataMap: <String, double>{
                        "SD ke bawah": (sdLK + sdPR) / 2,
                        "SMP": (smpLK + smpPR) / 2,
                        "SMA/SMK": (smaLK + smaPR) / 2,
                        "Perguruan Tinggi": (ptLK + ptPR) / 2,
                      },
                      animationDuration: const Duration(milliseconds: 800),
                      chartLegendSpacing: 50,
                      chartRadius: math.min(screenWidth / 2.5, screenWidth),
                      colorList: const <Color>[
                        Colors.green,
                        Color(0xff0984e3),
                        Color(0xff6c5ce7),
                        Colors.pink
                      ],
                      initialAngleInDegree: 90,
                      chartType: ChartType.ring,
                      legendLabels: const <String, String>{
                        "SD ke bawah": "SD ke bawah",
                        "SMP": "SMP",
                        "SMA/SMK": "SMA/SMK",
                        "Perguruan Tinggi": "Perguruan Tinggi",
                      },
                      legendOptions: const LegendOptions(
                        legendPosition: LegendPosition.bottom,
                        showLegends: true,
                        legendShape: BoxShape.rectangle,
                        legendTextStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      chartValuesOptions: const ChartValuesOptions(
                        showChartValueBackground: true,
                        showChartValues: true,
                        showChartValuesInPercentage: true,
                        showChartValuesOutside: true,
                      ),
                      ringStrokeWidth: 50,
                      emptyColor: Colors.cyan,
                      emptyColorGradient: const [
                        Color(0xff6c5ce7),
                        Colors.blue,
                      ],
                      baseChartColor: Colors.transparent,
                    ),
                  ),
                ],
              );
            },
          );
        }
        if (snapshot.hasError) {
          return const Center(child: Text("Data Belum Tersedia"));
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
