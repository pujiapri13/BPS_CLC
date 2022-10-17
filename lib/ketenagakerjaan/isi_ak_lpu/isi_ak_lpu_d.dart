// ignore_for_file: file_names

import 'package:bps_cilacap/restAPI/repository_tenaga_kerja.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:pie_chart/pie_chart.dart';

class IsiAkLpuD extends StatefulWidget {
  const IsiAkLpuD({super.key});

  @override
  State<IsiAkLpuD> createState() => _IsiAkLpuDState();
}

enum LegendShape { circle, rectangle }

RepositoryTenagaKerja repositorytenagakerja = RepositoryTenagaKerja();

class _IsiAkLpuDState extends State<IsiAkLpuD> {
  int key = 0;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositorytenagakerja.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          // ignore: unused_local_variable
          List isitenagakerja = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              double taniLk = 27.75;
              double industriLk = 35.35;
              double jaslainLk = 36.90;

              double taniPr = 21.60;
              double industriPr = 23.44;
              double jaslainPr = 54.96;
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
                                    "Lapangan Pekerjaan Utama",
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
                                    "Pertanian",
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
                                  child: Text(taniLk.toStringAsFixed(2)),
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
                                    taniPr.toStringAsFixed(2),
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
                                    "Industri",
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
                                    industriLk.toStringAsFixed(2),
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
                                    industriPr.toStringAsFixed(2),
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
                                    "Jasa/Lainnya",
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
                                    jaslainLk.toStringAsFixed(2),
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
                                    jaslainPr.toStringAsFixed(2),
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
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
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
                                    (taniLk + industriLk + jaslainLk)
                                        .toStringAsFixed(2),
                                    style: const TextStyle(
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
                                child: Center(
                                  child: Text(
                                    (taniPr + industriPr + jaslainPr)
                                        .toStringAsFixed(2),
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
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
                        "Pertanian": ((taniLk + taniPr) / 2),
                        "Industri": ((industriLk + industriPr) / 2),
                        "Jasa/Lainnya": ((jaslainLk + jaslainPr) / 2),
                      },
                      animationDuration: const Duration(milliseconds: 800),
                      chartLegendSpacing: 50,
                      chartRadius: math.min(
                          MediaQuery.of(context).size.width / 2.5, 300),
                      colorList: const <Color>[
                        Colors.grey,
                        Colors.orange,
                        Colors.cyan,
                      ],
                      initialAngleInDegree: 90,
                      chartType: ChartType.ring,
                      legendLabels: const <String, String>{
                        "Pertanian": "Pertanian",
                        "Industri": "Industri",
                        "Jasa/Lainnya": "Jasa/Lainnya",
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
