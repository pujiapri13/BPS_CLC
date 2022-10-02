// ignore_for_file: file_names

import 'package:bps_cilacap/restAPI/repository_tenaga_kerja.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:pie_chart/pie_chart.dart';

class IsiAkUmurC extends StatefulWidget {
  const IsiAkUmurC({super.key});

  @override
  State<IsiAkUmurC> createState() => _IsiAkUmurCState();
}

enum LegendShape { circle, rectangle }

RepositoryTenagaKerja repositorytenagakerja = RepositoryTenagaKerja();

class _IsiAkUmurCState extends State<IsiAkUmurC> {
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
                                color: Colors.grey,
                                child: const Center(
                                  child: Text(
                                    "Kelompok Umur",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Container(
                                color: Colors.grey,
                                height: screenHeight * 0.05,
                                child: const Center(
                                  child: Text(
                                    "Laki-laki",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Container(
                                color: Colors.grey,
                                height: screenHeight * 0.05,
                                child: const Center(
                                  child: Text(
                                    "Perempuan",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Container(
                                color: Colors.grey,
                                height: screenHeight * 0.05,
                                child: const Center(
                                  child: Text(
                                    "Jumlah",
                                    style: TextStyle(
                                        color: Colors.black,
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
                                padding:
                                    const EdgeInsets.only(top: 10, left: 5, right: 5),
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
                                child: const Center(
                                  child: Text("8.48"),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: screenHeight * 0.05,
                                child: const Center(
                                  child: Text(
                                    "9.27",
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: screenHeight * 0.05,
                                child: const Center(
                                  child: Text(
                                    "8.78",
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
                                padding:
                                    const EdgeInsets.only(top: 10, left: 5, right: 5),
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
                                child: const Center(
                                  child: Text(
                                    "65.93",
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: screenHeight * 0.05,
                                child: const Center(
                                  child: Text(
                                    "63.89",
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: screenHeight * 0.05,
                                child: const Center(
                                  child: Text(
                                    "65.14",
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
                                padding:
                                    const EdgeInsets.only(top: 10, left: 5, right: 5),
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
                                child: const Center(
                                  child: Text(
                                    "25.59",
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: screenHeight * 0.05,
                                child: const Center(
                                  child: Text(
                                    "26.84",
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: screenHeight * 0.05,
                                child: const Center(
                                  child: Text(
                                    "26.08",
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
                                color: Colors.grey,
                                padding:
                                    const EdgeInsets.only(top: 10, left: 5, right: 5),
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
                                color: Colors.grey,
                                height: screenHeight * 0.05,
                                child: const Center(
                                  child: Text(
                                    "100.00",
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Container(
                                color: Colors.grey,
                                height: screenHeight * 0.05,
                                child: const Center(
                                  child: Text(
                                    "100.00",
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Container(
                                color: Colors.grey,
                                height: screenHeight * 0.05,
                                child: const Center(
                                  child: Text(
                                    "100.00",
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
                      dataMap: const <String, double>{
                        "55 +": 26.08,
                        "25-54": 65.14,
                        "15-24": 8.78,
                      },
                      animationDuration: const Duration(milliseconds: 800),
                      chartLegendSpacing: 50,
                      chartRadius: math.min(
                          MediaQuery.of(context).size.width / 2.5, 300),
                      colorList: const <Color>[
                        Color(0xfffdcb6e),
                        Color(0xff0984e3),
                        Color(0xff6c5ce7),
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
                      emptyColor: Colors.grey,
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
