// ignore_for_file: file_names

import 'package:bps_cilacap/restAPI/repository_tenaga_kerja.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:pie_chart/pie_chart.dart';

class IsiAkLpuB extends StatefulWidget {
  const IsiAkLpuB({super.key});

  @override
  State<IsiAkLpuB> createState() => _IsiAkLpuBState();
}

enum LegendShape { circle, rectangle }

RepositoryTenagaKerja repositorytenagakerja = RepositoryTenagaKerja();

class _IsiAkLpuBState extends State<IsiAkLpuB> {
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
                                    "Lapangan Pekerjaan Utama",
                                    style: TextStyle(
                                        color: Colors.black,
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
                                child: const Center(
                                  child: Text("27.75"),
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
                                    "21.60",
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
                                    "25.36",
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
                                child: const Center(
                                  child: Text(
                                    "35.35",
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
                                    "23.44",
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
                                    "30.72",
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
                                child: const Center(
                                  child: Text(
                                    "36.90",
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
                                    "54.96",
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
                                    "43.92",
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
                        "Pertanian": 25.36,
                        "Industri": 30.72,
                        "Jasa/Lainnya": 43.92,
                      },
                      animationDuration: const Duration(milliseconds: 800),
                      chartLegendSpacing: 50,
                      chartRadius: math.min(
                          MediaQuery.of(context).size.width / 2.5, 300),
                      colorList: const <Color>[
                        Colors.green,
                        Color(0xff0984e3),
                        Color(0xff6c5ce7),
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
