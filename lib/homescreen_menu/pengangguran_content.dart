// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/restAPI/repository_tenaga_kerja.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class pengangguranContent extends StatefulWidget {
  const pengangguranContent({super.key});

  @override
  State<pengangguranContent> createState() => _pengangguranContentState();
}

class _pengangguranContentState extends State<pengangguranContent> {
  final double width = 7;

  RepositoryTenagaKerja repositorytenagakerja = RepositoryTenagaKerja();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWeight = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PENGANGGURAN',
          style: TextStyle(fontSize: 17),
        ),
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Center(
            child: Icon(
              BackIcons.circle_arrow,
              size: 40,
            ),
          ),
        ),
      ),
      body: Container(
          padding: const EdgeInsets.all(2),
          child: FutureBuilder(
              future: repositorytenagakerja.getData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List isitenagakerja = snapshot.data as List;

                  return PageView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      String thA = "2017";
                      String thB = "2018";
                      String thC = "2019";
                      String thD = "2020";
                      String thE = isitenagakerja[index = 0].tanggal[0] +
                          isitenagakerja[index = 0].tanggal[1] +
                          isitenagakerja[index = 0].tanggal[2] +
                          isitenagakerja[index = 0].tanggal[3];

                      String AkA = "-";
                      String AkB = "-";
                      String AkC = "-";
                      String AkD = "-";
                      double AkE = 830.043;

                      double TpakA = 66.22;
                      double TpakB = 62.37;
                      double TpakC = 65.11;
                      double TpakD = 67.79;
                      double TpakE = 66.91;

                      double TptA = 6.30;
                      double TptB = 7.48;
                      double TptC = 7.31;
                      double TptD = 9.10;
                      double TptE = 9.97;

                      BarChartGroupData makeGroupData(
                          int x, double tpak, double tpt) {
                        return BarChartGroupData(barsSpace: 4, x: x, barRods: [
                          BarChartRodData(
                            toY: tpak.toDouble(),
                            color: Colors.amber,
                            width: 10,
                          ),
                          BarChartRodData(
                            toY: tpt.toDouble(),
                            color: Colors.purple,
                            width: 10,
                          ),
                        ]);
                      }

                      final barGroup1 = makeGroupData(1, TpakA, TptA);
                      final barGroup2 = makeGroupData(1, TpakB, TptB);
                      final barGroup3 = makeGroupData(1, TpakC, TptC);
                      final barGroup4 = makeGroupData(1, TpakD, TptD);
                      final barGroup5 = makeGroupData(1, TpakE, TptE);

                      final items = [
                        barGroup1,
                        barGroup2,
                        barGroup3,
                        barGroup4,
                        barGroup5,
                      ];
                      late List<BarChartGroupData> rawBarGroups;
                      late List<BarChartGroupData> showingBarGroups;


                      rawBarGroups = items;
                      showingBarGroups = rawBarGroups;

                      return Container(
                        height: screenHeight,
                        color: Colors.transparent,
                        child: Column(children: [
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Column(children: [
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child: Container(
                                            height: screenHeight * 0.05,
                                            color: Colors.grey,
                                            child: const Center(
                                              child: Text(
                                                "Tahun",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child: Container(
                                            height: screenHeight * 0.05,
                                            color: Colors.grey,
                                            child: const Center(
                                              child: Text(
                                                "Angkatan Kerja",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child: Container(
                                            height: screenHeight * 0.05,
                                            color: Colors.grey,
                                            child: const Center(
                                              child: Text(
                                                "TPAK",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child: Container(
                                            height: screenHeight * 0.05,
                                            color: Colors.grey,
                                            child: const Center(
                                              child: Text(
                                                "TPT",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 5, right: 5),
                                            height: screenHeight * 0.05,
                                            child: Center(
                                              child: Text(
                                                thA.toString(),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 5, right: 5),
                                            height: screenHeight * 0.05,
                                            child: Center(
                                              child: Text(
                                                AkA.toString(),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 5, right: 5),
                                            height: screenHeight * 0.05,
                                            child: Center(
                                              child: Text(
                                                TpakA.toString(),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 5, right: 5),
                                            height: screenHeight * 0.05,
                                            child: Center(
                                              child: Text(
                                                TptA.toString(),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 5, right: 5),
                                            height: screenHeight * 0.05,
                                            child: Center(
                                              child: Text(
                                                thB.toString(),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 5, right: 5),
                                            height: screenHeight * 0.05,
                                            child: Center(
                                              child: Text(
                                                AkB.toString(),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 5, right: 5),
                                            height: screenHeight * 0.05,
                                            child: Center(
                                              child: Text(
                                                TpakB.toString(),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 5, right: 5),
                                            height: screenHeight * 0.05,
                                            child: Center(
                                              child: Text(
                                                TptB.toString(),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 5, right: 5),
                                            height: screenHeight * 0.05,
                                            child: Center(
                                              child: Text(
                                                thC.toString(),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 5, right: 5),
                                            height: screenHeight * 0.05,
                                            child: Center(
                                              child: Text(
                                                AkC.toString(),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 5, right: 5),
                                            height: screenHeight * 0.05,
                                            child: Center(
                                              child: Text(
                                                TpakC.toString(),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 5, right: 5),
                                            height: screenHeight * 0.05,
                                            child: Center(
                                              child: Text(
                                                TptC.toString(),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 5, right: 5),
                                            height: screenHeight * 0.05,
                                            child: Center(
                                              child: Text(
                                                thD.toString(),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 5, right: 5),
                                            height: screenHeight * 0.05,
                                            child: Center(
                                              child: Text(
                                                AkD.toString(),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 5, right: 5),
                                            height: screenHeight * 0.05,
                                            child: Center(
                                              child: Text(
                                                TpakD.toString(),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 5, right: 5),
                                            height: screenHeight * 0.05,
                                            child: Center(
                                              child: Text(
                                                TptD.toString(),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 5, right: 5),
                                            height: screenHeight * 0.05,
                                            child: Center(
                                              child: Text(
                                                thE.toString(),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 5, right: 5),
                                            height: screenHeight * 0.05,
                                            child: Center(
                                              child: Text(
                                                AkE.toString(),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 5, right: 5),
                                            height: screenHeight * 0.05,
                                            child: Center(
                                              child: Text(
                                                TpakE.toString(),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 1,
                                          fit: FlexFit.tight,
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 5, right: 5),
                                            height: screenHeight * 0.05,
                                            child: Center(
                                              child: Text(
                                                TptE.toString(),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      flex: 8,
                                      child: Card(
                                        elevation: 0,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        color: const Color(0xff2c4260),
                                        child: Padding(
                                          padding: const EdgeInsets.all(5),
                                          child: BarChart(
                                            BarChartData(
                                              maxY: 110,
                                              titlesData: FlTitlesData(
                                                show: true,
                                                rightTitles: AxisTitles(
                                                  sideTitles: SideTitles(
                                                      showTitles: false),
                                                ),
                                                topTitles: AxisTitles(
                                                  sideTitles: SideTitles(
                                                    showTitles: false,
                                                  ),
                                                ),
                                                bottomTitles: AxisTitles(
                                                  sideTitles: SideTitles(
                                                    showTitles: true,
                                                    getTitlesWidget:
                                                        (double value,
                                                            TitleMeta meta) {
                                                      List<String> titles = [
                                                        "",
                                                        thA.toString(),
                                                        thB.toString(),
                                                        thC.toString(),
                                                        thD.toString(),
                                                        thE.toString(),
                                                      ];

                                                      Widget text = Text(
                                                        titles[value.toInt()],
                                                        style: const TextStyle(
                                                          color:
                                                              Color(0xff7589a2),
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 14,
                                                        ),
                                                      );

                                                      return SideTitleWidget(
                                                          axisSide:
                                                              meta.axisSide,
                                                          space: 5, //margin top
                                                          child: text);
                                                    },
                                                    reservedSize: 28,
                                                  ),
                                                ),
                                                leftTitles: AxisTitles(
                                                  sideTitles: SideTitles(
                                                    showTitles: true,
                                                    reservedSize: 28,
                                                    interval: 1,
                                                    getTitlesWidget:
                                                        (double value,
                                                            TitleMeta meta) {
                                                      const style = TextStyle(
                                                        color:
                                                            Color(0xff7589a2),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 14,
                                                      );
                                                      String text;
                                                      if (value == 25) {
                                                        text = '25';
                                                      } else if (value == 50) {
                                                        text = '50';
                                                      } else if (value == 75) {
                                                        text = '75';
                                                      } else if (value == 100) {
                                                        text = '100';
                                                      } else if (value == 125) {
                                                        text = '125';
                                                      } else if (value == 150) {
                                                        text = '150';
                                                      } else if (value == 175) {
                                                        text = '175';
                                                      } else if (value == 200) {
                                                        text = '200';
                                                      } else {
                                                        return Container();
                                                      }
                                                      return SideTitleWidget(
                                                        axisSide: meta.axisSide,
                                                        space: 0,
                                                        child: Text(text,
                                                            style: style),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                              borderData: FlBorderData(
                                                show: false,
                                              ),
                                              barGroups: showingBarGroups,
                                              gridData: FlGridData(show: false),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 1,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Container(
                                                  width: 10,
                                                  height: 10,
                                                  color: Colors.amberAccent,
                                                ),
                                                const Text(
                                                  " TPAK",
                                                  style:
                                                      TextStyle(fontSize: 10),
                                                ),
                                              ],
                                            ),
                                          ),
                                          const Divider(
                                            indent: 20,
                                            color: Colors.transparent,
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: 10,
                                                  height: 10,
                                                  color: Colors.purpleAccent,
                                                ),
                                                const Text(
                                                  " TPT",
                                                  style:
                                                      TextStyle(fontSize: 10),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ]),
                          ),
                        ]),
                      );
                    },
                  );
                }
                if (snapshot.hasError) {
                  return const Text('Database Error');
                }
                return const Center(
                    child: CircularProgressIndicator(strokeWidth: 3));
              })),
    );
  }
}
