// ignore_for_file: file_names

import 'package:bps_cilacap/restAPI/repository_penduduk_umur.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:pie_chart/pie_chart.dart';

class IsiAkUmurB extends StatefulWidget {
  const IsiAkUmurB({super.key});

  @override
  State<IsiAkUmurB> createState() => _IsiAkUmurBState();
}

enum LegendShape { circle, rectangle }

RepositoryPendudukUmur repositoryPendudukUmur = RepositoryPendudukUmur();

class _IsiAkUmurBState extends State<IsiAkUmurB> {
  int key = 0;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositoryPendudukUmur.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          // ignore: unused_local_variable
          List isitenagakerja = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              double bocahLk = double.parse(isitenagakerja[index = 3].a);
              double mudaLk = double.parse(isitenagakerja[index = 3].b);
              double tuaLk = double.parse(isitenagakerja[index = 3].c);

              double bocahPr = double.parse(isitenagakerja[index = 8].a);
              double mudaPr = double.parse(isitenagakerja[index = 8].b);
              double tuaPr = double.parse(isitenagakerja[index = 8].c);
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
                                    "Kelompok Umur",
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
                                    "15 - 24",
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
                                  child: Text(bocahLk.toStringAsFixed(2)),
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
                                    bocahPr.toStringAsFixed(2),
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
                                    ((bocahLk + bocahPr) / 2)
                                        .toStringAsFixed(2),
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
                                    "25 - 54",
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
                                    mudaLk.toStringAsFixed(2),
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
                                    mudaPr.toStringAsFixed(2),
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
                                    ((mudaPr + mudaLk) / 2).toStringAsFixed(2),
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
                                    "55 +",
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
                                    tuaLk.toStringAsFixed(2),
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
                                    tuaPr.toStringAsFixed(2),
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
                                    ((tuaLk + tuaPr) / 2).toStringAsFixed(2),
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
                                    (bocahLk + mudaLk + tuaLk)
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
                                    (bocahPr + mudaPr + tuaPr)
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
                                    ((bocahPr +
                                                mudaPr +
                                                tuaPr +
                                                bocahLk +
                                                mudaLk +
                                                tuaLk) /
                                            2)
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
                        "55 +": (tuaLk + tuaPr),
                        "25-54": (mudaLk + mudaPr),
                        "15-24": (bocahLk + bocahPr),
                      },
                      animationDuration: const Duration(milliseconds: 800),
                      chartLegendSpacing: 50,
                      chartRadius: math.min(
                          MediaQuery.of(context).size.width / 2.5, 300),
                      colorList: const <Color>[
                        Colors.orange,
                        Colors.cyan,
                        Colors.grey,
                      ],
                      initialAngleInDegree: 90,
                      chartType: ChartType.ring,
                      legendLabels: const <String, String>{
                        "55 +": "Umur 55+",
                        "25-54": "Umur 25-54",
                        "15-24": "Umur 15-24",
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
