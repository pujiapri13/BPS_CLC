// ignore_for_file: non_constant_identifier_names

import 'package:bps_cilacap/restAPI/repository_bkn_angkatan_kerja.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:pie_chart/pie_chart.dart';

class IsiBakC extends StatefulWidget {
  const IsiBakC({super.key});

  @override
  State<IsiBakC> createState() => _IsiBakCState();
}

RepositoryBknAngkatanKerja repositoryBknAngkatanKerja =
    RepositoryBknAngkatanKerja();

class _IsiBakCState extends State<IsiBakC> {
  int key = 0;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositoryBknAngkatanKerja.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          // ignore: unused_local_variable
          List isitenagakerja = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              // isi data

              double LkSekolah =
                  double.parse((isitenagakerja[index = 2].sekolah));
              double PrSekolah =
                  double.parse((isitenagakerja[index = 7].sekolah));
              double JmlSekolah = LkSekolah + PrSekolah;

              double LkRuta =
                  double.parse((isitenagakerja[index = 2].urus_ruta));
              double PrRuta =
                  double.parse((isitenagakerja[index = 7].urus_ruta));
              double JmlRuta = LkRuta + PrRuta;

              double LkLainnya =
                  double.parse((isitenagakerja[index = 2].lainnya));
              double PrLainnya =
                  double.parse((isitenagakerja[index = 7].lainnya));
              double JmlLainnya = LkLainnya + PrLainnya;

              double LkJumlah =
                  double.parse((isitenagakerja[index = 2].jumlah));
              double PrJumlah =
                  double.parse((isitenagakerja[index = 7].jumlah));
              double JmlJumlah = LkJumlah + PrJumlah;

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
                              flex: 4,
                              fit: FlexFit.tight,
                              child: Container(
                                color: Colors.cyan,
                                padding: const EdgeInsets.only(
                                    top: 10, left: 5, right: 5),
                                height: screenHeight * 0.05,
                                child: const Text(
                                  "Bukan Angkatan Kerja",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Container(
                                height: screenHeight * 0.05,
                                color: Colors.cyan,
                                child: const Center(
                                  child: Text(
                                    "Lk",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Container(
                                color: Colors.cyan,
                                height: screenHeight * 0.05,
                                child: const Center(
                                  child: Text(
                                    "Pr",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Container(
                                color: Colors.cyan,
                                height: screenHeight * 0.05,
                                child: const Center(
                                  child: Text(
                                    "Jml",
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
                              flex: 4,
                              fit: FlexFit.tight,
                              child: Container(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 5, right: 5),
                                height: screenHeight * 0.05,
                                child: const Text(
                                  "   - Sekolah",
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: screenHeight * 0.05,
                                child: Center(
                                  child: Text(LkSekolah.toString()),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: screenHeight * 0.05,
                                child: Center(
                                  child: Text(
                                    PrSekolah.toString(),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: screenHeight * 0.05,
                                child: Center(
                                  child: Text(
                                    JmlSekolah.toString(),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Flexible(
                              flex: 4,
                              fit: FlexFit.tight,
                              child: Container(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 5, right: 5),
                                height: screenHeight * 0.05,
                                child: const Text(
                                  "   - Mengurus Rumah Tangga",
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: screenHeight * 0.05,
                                child: Center(
                                  child: Text(
                                    LkRuta.toString(),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: screenHeight * 0.05,
                                child: Center(
                                  child: Text(
                                    PrRuta.toString(),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: screenHeight * 0.05,
                                child: Center(
                                  child: Text(
                                    JmlRuta.toString(),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Flexible(
                              flex: 4,
                              fit: FlexFit.tight,
                              child: Container(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 5, right: 5),
                                height: screenHeight * 0.05,
                                child: const Text(
                                  "   - Lainnya",
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: screenHeight * 0.05,
                                child: Center(
                                  child: Text(
                                    LkLainnya.toString(),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: screenHeight * 0.05,
                                child: Center(
                                  child: Text(
                                    PrLainnya.toString(),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: SizedBox(
                                height: screenHeight * 0.05,
                                child: Center(
                                  child: Text(
                                    JmlLainnya.toString(),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Flexible(
                              flex: 4,
                              fit: FlexFit.tight,
                              child: Container(
                                color: Colors.cyan,
                                padding: const EdgeInsets.only(
                                    top: 10, left: 5, right: 5),
                                height: screenHeight * 0.05,
                                child: const Text(
                                  "Jumlah",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Container(
                                height: screenHeight * 0.05,
                                color: Colors.cyan,
                                child: Center(
                                  child: Text(
                                    LkJumlah.toString(),
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Container(
                                color: Colors.cyan,
                                height: screenHeight * 0.05,
                                child: Center(
                                  child: Text(
                                    PrJumlah.toString(),
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Container(
                                color: Colors.cyan,
                                height: screenHeight * 0.05,
                                child: Center(
                                  child: Text(
                                    JmlJumlah.toString(),
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
                    flex: 2,
                    fit: FlexFit.tight,
                    child: PieChart(
                      key: ValueKey(key),
                      dataMap: <String, double>{
                        "Sekolah": JmlSekolah,
                        "Mengurus Rumah Tangga": JmlRuta,
                        "Lainnya": JmlLainnya,
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
                        "Sekolah": "Sekolah",
                        "Mengurus Rumah Tangga": "Mengurus Rumah Tangga",
                        "Lainnya": "Lainnya",
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
          return const Center(
              child: CircularProgressIndicator(
            strokeWidth: 2,
          ));
        }
      },
    );
  }
}
