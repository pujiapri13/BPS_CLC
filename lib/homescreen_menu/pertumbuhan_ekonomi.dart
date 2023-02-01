// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/restAPI/repository_pertumbuhan_ekonomi.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class pertumbuhanEkonomi extends StatefulWidget {
  const pertumbuhanEkonomi({super.key});

  @override
  State<pertumbuhanEkonomi> createState() => _pertumbuhanEkonomiState();
}

class _pertumbuhanEkonomiState extends State<pertumbuhanEkonomi> {
  final double width = 7;

  RepositoryPertumbuhanEkonomi repositoryPertumbuhanEkonomi =
      RepositoryPertumbuhanEkonomi();

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
            icon: const Icon(Icons.info_outlined),
          ),
        ],
      ),
      body: Container(
          padding: const EdgeInsets.all(2),
          child: FutureBuilder(
              future: repositoryPertumbuhanEkonomi.getData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  List isipdrb = snapshot.data as List;
                  return PageView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      String thA = isipdrb[index = 0].tahun[0] +
                          isipdrb[index = 0].tahun[1] +
                          isipdrb[index = 0].tahun[2] +
                          isipdrb[index = 0].tahun[3];
                      String thB = isipdrb[index = 1].tahun[0] +
                          isipdrb[index = 1].tahun[1] +
                          isipdrb[index = 1].tahun[2] +
                          isipdrb[index = 1].tahun[3];
                      String thC = isipdrb[index = 2].tahun[0] +
                          isipdrb[index = 2].tahun[1] +
                          isipdrb[index = 2].tahun[2] +
                          isipdrb[index = 2].tahun[3];
                      String thD = isipdrb[index = 3].tahun[0] +
                          isipdrb[index = 3].tahun[1] +
                          isipdrb[index = 3].tahun[2] +
                          isipdrb[index = 3].tahun[3];
                      String thE = isipdrb[index = 4].tahun[0] +
                          isipdrb[index = 4].tahun[1] +
                          isipdrb[index = 4].tahun[2] +
                          isipdrb[index = 4].tahun[3];

                      double PeMigasA =
                          double.parse(isipdrb[index = 0].ekonomi_migas);
                      double PeMigasB =
                          double.parse(isipdrb[index = 1].ekonomi_migas);
                      double PeMigasC =
                          double.parse(isipdrb[index = 2].ekonomi_migas);
                      double PeMigasD =
                          double.parse(isipdrb[index = 3].ekonomi_migas);
                      double PeMigasE =
                          double.parse(isipdrb[index = 4].ekonomi_migas);

                      double PeNonMigasA =
                          double.parse(isipdrb[index = 0].ekonomi_nonmigas);
                      double PeNonMigasB =
                          double.parse(isipdrb[index = 1].ekonomi_nonmigas);
                      double PeNonMigasC =
                          double.parse(isipdrb[index = 2].ekonomi_nonmigas);
                      double PeNonMigasD =
                          double.parse(isipdrb[index = 3].ekonomi_nonmigas);
                      double PeNonMigasE =
                          double.parse(isipdrb[index = 4].ekonomi_nonmigas);

                      BarChartGroupData makeGroupData(
                          int x, double y1, double y2) {
                        return BarChartGroupData(barsSpace: 4, x: x, barRods: [
                          BarChartRodData(
                            toY: y1.toDouble(),
                            color: Colors.cyan,
                            width: 10,
                          ),
                          BarChartRodData(
                            toY: y2.toDouble(),
                            color: Colors.orange,
                            width: 10,
                          ),
                        ]);
                      }

                      final barGroup1 = makeGroupData(1, PeMigasA, PeNonMigasA);
                      final barGroup2 = makeGroupData(2, PeMigasB, PeNonMigasB);
                      final barGroup3 = makeGroupData(3, PeMigasC, PeNonMigasC);
                      final barGroup4 = makeGroupData(4, PeMigasD, PeNonMigasD);
                      final barGroup5 = makeGroupData(5, PeMigasE, PeNonMigasE);

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
                                        height: screenHeight * 0.10,
                                        color: Colors.cyan,
                                        child: const Center(
                                          child: Text(
                                            "Tahun",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        height: screenHeight * 0.10,
                                        color: Colors.cyan,
                                        child: const Center(
                                          child: Text(
                                            "Pertumbuhan Ekonomi Dengan Migas",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        height: screenHeight * 0.10,
                                        color: Colors.cyan,
                                        child: const Center(
                                          child: Text(
                                            "Pertumbuhan Ekonomi Non Migas",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
//TAHUN A
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
                                            thA,
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
                                            PeMigasA.toStringAsFixed(2),
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
                                            PeNonMigasA.toString(),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
//TAHUN B
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
                                            PeMigasB.toStringAsFixed(2),
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
                                            PeNonMigasB.toString(),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
//TAHUN C
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
                                            PeMigasC.toStringAsFixed(2),
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
                                            PeNonMigasC.toString(),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
//TAHUN D
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
                                            thD,
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
                                            PeMigasD.toStringAsFixed(2),
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
                                            PeNonMigasD.toString(),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
//TAHUN E
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
                                            thE,
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
                                            PeMigasE.toStringAsFixed(2),
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
                                            PeNonMigasE.toString(),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
//DIAGRAM
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
                                                        axisSide: meta.axisSide,
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
                                                      color: Color(0xff7589a2),
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
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 10,
                                        height: 10,
                                        color: Colors.cyan,
                                      ),
                                      const Text(
                                        " Pertumbuhan Ekonomi dengan Migas",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 10,
                                        height: 10,
                                        color: Colors.orange,
                                      ),
                                      const Text(
                                        " Pertumbuhan Ekonomi Tanpa Migas",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
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
