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
    final screenWidth = MediaQuery.of(context).size.width;
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
        actions: [
          IconButton(
              onPressed: () {
                showModalBottomSheet(
                  backgroundColor: Colors.white,
                  constraints: BoxConstraints.tight(
                    Size(screenWidth, screenHeight),
                  ),
                  context: context,
                  builder: (context) {
                    return ListView(children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.all(5),
                        child: const Text(
                          "Tingkat Partisipasi Angkatan Kerja (TPAK)",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "   Tingkat partisipasi angkatan kerja (TPAK) mengindikasikan besarnya penduduk usia kerja yang aktif secara ekonomi."
                          "TPAP diukur sebagai presentase jumlah angkatan kerja (bekerja dan belum bekerja) terhadap jumlah penduduk usia kerja.",
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Tingkat Pengangguran Terbuka (TPT)",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "   Tingkat pengangguran terbuka (TPT) memberikan indikasi tentang penduduk usia kerja yang termasuk dalam pengangguran."
                          "TPT dihitung berdasarkan perbandingan antara jumlah pengangguran (mencari kerja) dengan jumlah angkatan kerja"
                          "dan dinyatakan dalam presentase.",
                        ),
                      ),
                    ]);
                  },
                );
              },
              icon: const Icon(Icons.info_outlined))
        ],
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
                      String thA = isitenagakerja[index = 0].created_at[0] +
                          isitenagakerja[index = 0].created_at[1] +
                          isitenagakerja[index = 0].created_at[2] +
                          isitenagakerja[index = 0].created_at[3];
                      String thB = isitenagakerja[index = 1].created_at[0] +
                          isitenagakerja[index = 1].created_at[1] +
                          isitenagakerja[index = 1].created_at[2] +
                          isitenagakerja[index = 1].created_at[3];
                      String thC = isitenagakerja[index = 2].created_at[0] +
                          isitenagakerja[index = 2].created_at[1] +
                          isitenagakerja[index = 2].created_at[2] +
                          isitenagakerja[index = 2].created_at[3];
                      String thD = isitenagakerja[index = 3].created_at[0] +
                          isitenagakerja[index = 3].created_at[1] +
                          isitenagakerja[index = 3].created_at[2] +
                          isitenagakerja[index = 3].created_at[3];
                      String thE = isitenagakerja[index = 4].created_at[0] +
                          isitenagakerja[index = 4].created_at[1] +
                          isitenagakerja[index = 4].created_at[2] +
                          isitenagakerja[index = 4].created_at[3];

                      double TpakA = (double.parse(
                                  isitenagakerja[index = 0].tpak) +
                              double.parse(isitenagakerja[index = 5].tpak)) /
                          2;
                      double TpakB = (double.parse(
                                  isitenagakerja[index = 1].tpak) +
                              double.parse(isitenagakerja[index = 6].tpak)) /
                          2;
                      double TpakC = (double.parse(
                                  isitenagakerja[index = 2].tpak) +
                              double.parse(isitenagakerja[index = 7].tpak)) /
                          2;
                      double TpakD = (double.parse(
                                  isitenagakerja[index = 3].tpak) +
                              double.parse(isitenagakerja[index = 8].tpak)) /
                          2;
                      double TpakE = (double.parse(
                                  isitenagakerja[index = 4].tpak) +
                              double.parse(isitenagakerja[index = 9].tpak)) /
                          2;

                      double TptA =
                          (double.parse(isitenagakerja[index = 0].tpt) +
                                  double.parse(isitenagakerja[index = 5].tpt)) /
                              2;
                      double TptB =
                          (double.parse(isitenagakerja[index = 1].tpt) +
                                  double.parse(isitenagakerja[index = 6].tpt)) /
                              2;
                      double TptC =
                          (double.parse(isitenagakerja[index = 2].tpt) +
                                  double.parse(isitenagakerja[index = 7].tpt)) /
                              2;
                      double TptD =
                          (double.parse(isitenagakerja[index = 3].tpt) +
                                  double.parse(isitenagakerja[index = 8].tpt)) /
                              2;
                      double TptE =
                          (double.parse(isitenagakerja[index = 4].tpt) +
                                  double.parse(isitenagakerja[index = 9].tpt)) /
                              2;

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

                      final barGroup1 = makeGroupData(
                          1,
                          double.parse(TpakA.toStringAsFixed(2)),
                          double.parse(TptA.toStringAsFixed(2)));
                      final barGroup2 = makeGroupData(
                          2,
                          double.parse(TpakB.toStringAsFixed(2)),
                          double.parse(TptB.toStringAsFixed(2)));
                      final barGroup3 = makeGroupData(
                          3,
                          double.parse(TpakC.toStringAsFixed(2)),
                          double.parse(TptC.toStringAsFixed(2)));
                      final barGroup4 = makeGroupData(
                          4,
                          double.parse(TpakD.toStringAsFixed(2)),
                          double.parse(TptD.toStringAsFixed(2)));
                      final barGroup5 = makeGroupData(
                          5,
                          double.parse(TpakE.toStringAsFixed(2)),
                          double.parse(TptE.toStringAsFixed(2)));

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
                                            color: Colors.cyan,
                                            child: const Center(
                                              child: Text(
                                                "Tahun",
                                                style: TextStyle(
                                                    color: Colors.white,
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
                                            color: Colors.cyan,
                                            child: const Center(
                                              child: Text(
                                                "TPAK",
                                                style: TextStyle(
                                                    color: Colors.white,
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
                                            color: Colors.cyan,
                                            child: const Center(
                                              child: Text(
                                                "TPT",
                                                style: TextStyle(
                                                    color: Colors.white,
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
                                                TpakA.toStringAsFixed(2),
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
                                                TptA.toStringAsFixed(2),
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
                                                thB,
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
                                                TpakB.toStringAsFixed(2),
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
                                                TptB.toStringAsFixed(2),
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
                                                thC,
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
                                                TpakC.toStringAsFixed(2),
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
                                                TptC.toStringAsFixed(2),
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
                                                TpakD.toStringAsFixed(2),
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
                                                TptD.toStringAsFixed(2),
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
                                                TpakE.toStringAsFixed(2),
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
                                                TptE.toStringAsFixed(2),
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
                                                          fontSize: 15,
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
                                              barTouchData: BarTouchData(
                                                enabled: true,
                                                touchTooltipData:
                                                    BarTouchTooltipData(
                                                        tooltipBgColor:
                                                            Colors.white),
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
