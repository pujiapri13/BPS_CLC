// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/restAPI/repository_pdrb.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class pertumbuhanEkonomi extends StatefulWidget {
  const pertumbuhanEkonomi({super.key});

  @override
  State<pertumbuhanEkonomi> createState() => _pertumbuhanEkonomiState();
}

class _pertumbuhanEkonomiState extends State<pertumbuhanEkonomi> {
  final double width = 7;

  RepositoryPdrb repositorypdrb = RepositoryPdrb();

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
          'PERTUMBUHAN EKONOMI',
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
                  context: context,
                  builder: (context) {
                    return ListView(children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "PDRB",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                            "   PDRB (Produk Domestik Regional Bruto) adalah nilai tambah produksi yang diciptakan oleh sektor-sektor ekonomi.",
                            textAlign: TextAlign.justify),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "PDRB ADHB = Produk Domestik Regional Bruto Atas Dasar Harga Berlaku",
                          style: TextStyle(fontWeight: FontWeight.bold),
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
              future: repositorypdrb.getData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List isipdrb = snapshot.data as List;

                  return PageView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      String thA = isipdrb[index = 4].tanggal[0] +
                          isipdrb[index = 4].tanggal[1] +
                          isipdrb[index = 4].tanggal[2] +
                          isipdrb[index = 4].tanggal[3];
                      String thB = isipdrb[index = 3].tanggal[0] +
                          isipdrb[index = 3].tanggal[1] +
                          isipdrb[index = 3].tanggal[2] +
                          isipdrb[index = 3].tanggal[3];
                      String thC = isipdrb[index = 2].tanggal[0] +
                          isipdrb[index = 2].tanggal[1] +
                          isipdrb[index = 2].tanggal[2] +
                          isipdrb[index = 2].tanggal[3];
                      String thD = isipdrb[index = 1].tanggal[0] +
                          isipdrb[index = 1].tanggal[1] +
                          isipdrb[index = 1].tanggal[2] +
                          isipdrb[index = 1].tanggal[3];
                      String thE = isipdrb[index = 0].tanggal[0] +
                          isipdrb[index = 0].tanggal[1] +
                          isipdrb[index = 0].tanggal[2] +
                          isipdrb[index = 0].tanggal[3];

                      double PdrbA = isipdrb[index = 4].total_pdrb;
                      double PdrbB = isipdrb[index = 3].total_pdrb;
                      double PdrbC = isipdrb[index = 2].total_pdrb;
                      double PdrbD = isipdrb[index = 1].total_pdrb;
                      double PdrbE = isipdrb[index = 0].total_pdrb;

                      double PeA = isipdrb[index = 3].total_pdrb -
                          isipdrb[index = 4].total_pdrb;
                      double PeB = isipdrb[index = 2].total_pdrb -
                          isipdrb[index = 3].total_pdrb;
                      double PeC = isipdrb[index = 1].total_pdrb -
                          isipdrb[index = 2].total_pdrb;
                      double PeD = isipdrb[index = 0].total_pdrb -
                          isipdrb[index = 1].total_pdrb;

                      BarChartGroupData makeGroupData(int x, double y1) {
                        return BarChartGroupData(barsSpace: 4, x: x, barRods: [
                          BarChartRodData(
                            toY: y1.toDouble(),
                            color: Colors.green,
                            width: 10,
                          ),
                        ]);
                      }

                      final barGroup1 = makeGroupData(1, PdrbA);
                      final barGroup2 = makeGroupData(2, PdrbB);
                      final barGroup3 = makeGroupData(3, PdrbC);
                      final barGroup4 = makeGroupData(4, PdrbD);
                      final barGroup5 = makeGroupData(5, PdrbE);

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
                                flex: 2,
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
                                                "Pertumbuhan Ekonomi",
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
                                                "PDRB ADHB",
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
                                            child: const Center(
                                              child: Text(
                                                "2017",
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
                                            child: const Center(
                                              child: Text(
                                                " - ",
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
                                                PdrbA.toString(),
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
                                            child: const Center(
                                              child: Text(
                                                "2018",
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
                                                PeA.toStringAsFixed(2),
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
                                                PdrbB.toString(),
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
                                            child: const Center(
                                              child: Text(
                                                "2019",
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
                                                PeB.toStringAsFixed(2),
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
                                                PdrbC.toString(),
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
                                            child: const Center(
                                              child: Text(
                                                "2020",
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
                                                PeC.toStringAsFixed(2),
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
                                                PdrbD.toString(),
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
                                            child: const Center(
                                              child: Text(
                                                "2021",
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
                                                PeD.toStringAsFixed(2),
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
                                                PdrbE.toString(),
                                                textAlign: TextAlign.left,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      flex: 6,
                                      child: Container(
                                        color: Colors.transparent,
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
                                                maxY: 180,
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
                                                          style:
                                                              const TextStyle(
                                                            color: Color(
                                                                0xff7589a2),
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 14,
                                                          ),
                                                        );

                                                        return SideTitleWidget(
                                                            axisSide:
                                                                meta.axisSide,
                                                            space:
                                                                5, //margin top
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
                                                        } else if (value ==
                                                            50) {
                                                          text = '50';
                                                        } else if (value ==
                                                            75) {
                                                          text = '75';
                                                        } else if (value ==
                                                            100) {
                                                          text = '100';
                                                        } else if (value ==
                                                            125) {
                                                          text = '125';
                                                        } else if (value ==
                                                            150) {
                                                          text = '150';
                                                        } else if (value ==
                                                            175) {
                                                          text = '175';
                                                        } else if (value ==
                                                            200) {
                                                          text = '200';
                                                        } else {
                                                          return Container();
                                                        }
                                                        return SideTitleWidget(
                                                          axisSide:
                                                              meta.axisSide,
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
                                                gridData:
                                                    FlGridData(show: false),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 10,
                                            height: 10,
                                            color: Colors.green,
                                          ),
                                          const Text(
                                            " PDRB Atas Dasar Harga Berlaku",
                                            style: TextStyle(fontSize: 10),
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
