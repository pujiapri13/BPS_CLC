// ignore_for_file: camel_case_types, prefer_interpolation_to_compose_strings

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/restAPI/repository_kemiskinan.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PerkembanganKemiskinan extends StatefulWidget {
  const PerkembanganKemiskinan({Key? key}) : super(key: key);

  @override
  State<PerkembanganKemiskinan> createState() => _PerkembanganKemiskinanState();
}

RepositoryKemiskinan repositorykemiskinan = RepositoryKemiskinan();

class _PerkembanganKemiskinanState extends State<PerkembanganKemiskinan> {
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
            'PERKEMBANGAN KEMISKINAN',
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
        body: FutureBuilder(
          future: repositorykemiskinan.getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List isikemiskinan = snapshot.data as List;
              return ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  String th1 = (isikemiskinan[index = 0].tanggal[0] +
                          isikemiskinan[index = 0].tanggal[1] +
                          isikemiskinan[index = 0].tanggal[2] +
                          isikemiskinan[index = 0].tanggal[3])
                      .toString();
                  String th2 = (isikemiskinan[index = 1].tanggal[0] +
                          isikemiskinan[index = 1].tanggal[1] +
                          isikemiskinan[index = 1].tanggal[2] +
                          isikemiskinan[index = 1].tanggal[3])
                      .toString();
                  String th3 = (isikemiskinan[index = 2].tanggal[0] +
                          isikemiskinan[index = 2].tanggal[1] +
                          isikemiskinan[index = 2].tanggal[2] +
                          isikemiskinan[index = 2].tanggal[3])
                      .toString();
                  String th4 = (isikemiskinan[index = 3].tanggal[0] +
                          isikemiskinan[index = 3].tanggal[1] +
                          isikemiskinan[index = 3].tanggal[2] +
                          isikemiskinan[index = 3].tanggal[3])
                      .toString();
                  String th5 = (isikemiskinan[index = 4].tanggal[0] +
                          isikemiskinan[index = 4].tanggal[1] +
                          isikemiskinan[index = 4].tanggal[2] +
                          isikemiskinan[index = 4].tanggal[3])
                      .toString();

                  double jpm1 = isikemiskinan[index = 0].pddk_miskin;
                  double jpm2 = isikemiskinan[index = 1].pddk_miskin;
                  double jpm3 = isikemiskinan[index = 2].pddk_miskin;
                  double jpm4 = isikemiskinan[index = 3].pddk_miskin;
                  double jpm5 = isikemiskinan[index = 4].pddk_miskin;

                  double p0_1 = isikemiskinan[index = 0].p0;
                  double p0_2 = isikemiskinan[index = 1].p0;
                  double p0_3 = isikemiskinan[index = 2].p0;
                  double p0_4 = isikemiskinan[index = 3].p0;
                  double p0_5 = isikemiskinan[index = 4].p0;

                  double p1_1 = isikemiskinan[index = 0].p1;
                  double p1_2 = isikemiskinan[index = 1].p1;
                  double p1_3 = isikemiskinan[index = 2].p1;
                  double p1_4 = isikemiskinan[index = 3].p1;
                  double p1_5 = isikemiskinan[index = 4].p1;

                  double p2_1 = isikemiskinan[index = 0].p2;
                  double p2_2 = isikemiskinan[index = 1].p2;
                  double p2_3 = isikemiskinan[index = 2].p2;
                  double p2_4 = isikemiskinan[index = 3].p2;
                  double p2_5 = isikemiskinan[index = 4].p2;

                  double gk1 = isikemiskinan[index = 0].gk;
                  double gk2 = isikemiskinan[index = 1].gk;
                  double gk3 = isikemiskinan[index = 2].gk;
                  double gk4 = isikemiskinan[index = 3].gk;
                  double gk5 = isikemiskinan[index = 4].gk;

                  // diagram batang GK & JPM
                  BarChartGroupData makeGroupData(
                      int x, double gk, double jpm) {
                    return BarChartGroupData(barsSpace: 4, x: x, barRods: [
                      BarChartRodData(
                        toY: gk.toDouble(),
                        color: Colors.amber,
                        width: 20,
                      ),
                      BarChartRodData(
                        toY: jpm.toDouble(),
                        color: Colors.green,
                        width: 20,
                      ),
                    ]);
                  }

                  final barGroup1 = makeGroupData(0, gk1, jpm1);
                  final barGroup2 = makeGroupData(1, gk2, jpm2);
                  final barGroup3 = makeGroupData(2, gk3, jpm3);
                  final barGroup4 = makeGroupData(3, gk4, jpm4);
                  final barGroup5 = makeGroupData(4, gk5, jpm5);

                  final items = [
                    barGroup5,
                    barGroup4,
                    barGroup3,
                    barGroup2,
                    barGroup1,
                  ];
                  late List<BarChartGroupData> rawBarGroups;
                  late List<BarChartGroupData> showingBarGroups;

                  rawBarGroups = items;
                  showingBarGroups = rawBarGroups;

                  // grafik
                  List<Color> gradientColorsA = [
                    const Color(0xff23b6e6),
                    const Color.fromARGB(255, 19, 224, 19)
                  ];
                  List<Color> gradientColorsB = [Colors.red, Colors.yellow];
                  return Container(
                    padding: const EdgeInsets.all(2),
                    child: Column(
                      children: [
                        Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 2),
                            child: const Text(
                              "Perkembangan Kemiskinan Kabupaten Cilacap",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )),
                        SizedBox(
                          height: screenHeight * 0.7,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      color: Colors.grey,
                                      child: const Text(
                                        "Rincian",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      color: Colors.grey,
                                      child: Text(
                                        th1,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      color: Colors.grey,
                                      child: Text(
                                        th2,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      color: Colors.grey,
                                      child: Text(
                                        th3,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      color: Colors.grey,
                                      child: Text(
                                        th4,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      color: Colors.grey,
                                      child: Text(
                                        th5,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: const Text(
                                        "Jumlah Penduduk Miskin(ribu)",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        jpm1.toString(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        jpm2.toString(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        jpm3.toString(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        jpm4.toString(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        jpm5.toString(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(),
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: const Text(
                                        "Persentase Penduduk Miskin (P0)",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_1.toString(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_2.toString(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_3.toString(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_4.toString(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p0_5.toString(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(),
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: const Text(
                                        "Indeks Kedalaman Kemiskinan (P1)",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_1.toString(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_2.toString(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_3.toString(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_4.toString(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p1_5.toString(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(),
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: const Text(
                                        "Indeks Keparahan Kemiskinan (P2)",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_1.toString(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_2.toString(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_3.toString(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_4.toString(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: Text(
                                        p2_5.toString(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(),
                              Row(
                                children: [
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 10),
                                      child: const Text(
                                        "Garis Kemiskinan(ribu rupiah)",
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding:
                                          const EdgeInsets.symmetric(vertical: 10),
                                      child: Text(
                                        gk1.toString(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding:
                                          const EdgeInsets.symmetric(vertical: 10),
                                      child: Text(
                                        gk2.toString(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding:
                                          const EdgeInsets.symmetric(vertical: 10),
                                      child: Text(
                                        gk3.toString(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding:
                                          const EdgeInsets.symmetric(vertical: 10),
                                      child: Text(
                                        gk4.toString(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    fit: FlexFit.tight,
                                    flex: 2,
                                    child: Container(
                                      padding:
                                          const EdgeInsets.symmetric(vertical: 10),
                                      child: Text(
                                        gk5.toString(),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Colors.transparent,
                          height: screenHeight * 0.02,
                        ),
                        Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 2),
                            child: Text(
                              "Garis Kemiskinan dan Jumlah Penduduk Miskin Kabupaten Cilacap, " +
                                  th5 +
                                  " - " +
                                  th1,
                              style: const TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                          height: screenHeight * 0.7,
                          child: Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            color: const Color(0xff2c4260),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: BarChart(
                                BarChartData(
                                  maxY: 510,
                                  titlesData: FlTitlesData(
                                    show: true,
                                    rightTitles: AxisTitles(
                                      sideTitles: SideTitles(showTitles: false),
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
                                            (double value, TitleMeta meta) {
                                          List<String> titles = [
                                            th5.toString(),
                                            th4.toString(),
                                            th3.toString(),
                                            th2.toString(),
                                            th1.toString(),
                                          ];

                                          Widget text = Text(
                                            titles[value.toInt()],
                                            style: const TextStyle(
                                              color: Color(0xff7589a2),
                                              fontWeight: FontWeight.bold,
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
                                        reservedSize: 40,
                                        interval: 1,
                                        getTitlesWidget:
                                            (double value, TitleMeta meta) {
                                          const style = TextStyle(
                                            color: Color(0xff7589a2),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                          );
                                          String text;
                                          if (value == 100) {
                                            text = '100k';
                                          } else if (value == 200) {
                                            text = '200k';
                                          } else if (value == 300) {
                                            text = '300k';
                                          } else if (value == 400) {
                                            text = '400k';
                                          } else if (value == 500) {
                                            text = '500k';
                                          } else {
                                            return Container();
                                          }
                                          return SideTitleWidget(
                                            axisSide: meta.axisSide,
                                            space: 0,
                                            child: Text(text, style: style),
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
                        Divider(
                          color: Colors.transparent,
                          height: screenHeight * 0.02,
                        ),
                        Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 2),
                            child: Text(
                              "Persentase Penduduk Miskin (P0) Kabupaten Cilacap, " +
                                  th5.toString() +
                                  " - " +
                                  th1.toString(),
                              style: const TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                          height: screenHeight * 0.5,
                          child: Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            color: const Color(0xff2c4260),
                            child: LineChart(
                              LineChartData(
                                gridData: FlGridData(
                                  show: true,
                                  drawVerticalLine: true,
                                  horizontalInterval: 1,
                                  verticalInterval: 1,
                                  getDrawingHorizontalLine: (value) {
                                    return FlLine(
                                      color: Colors.transparent,
                                      strokeWidth: 1,
                                    );
                                  },
                                  getDrawingVerticalLine: (value) {
                                    return FlLine(
                                      color: Colors.transparent,
                                      strokeWidth: 1,
                                    );
                                  },
                                ),
                                titlesData: FlTitlesData(
                                  show: true,
                                  rightTitles: AxisTitles(
                                    sideTitles: SideTitles(showTitles: false),
                                  ),
                                  topTitles: AxisTitles(
                                    sideTitles: SideTitles(showTitles: false),
                                  ),
                                  bottomTitles: AxisTitles(
                                    sideTitles: SideTitles(
                                        showTitles: true,
                                        reservedSize: 30,
                                        interval: 1,
                                        getTitlesWidget:
                                            (double value, TitleMeta meta) {
                                          const style = TextStyle(
                                            color: Color(0xff68737d),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          );
                                          Widget text;
                                          switch (value.toInt()) {
                                            case 1:
                                              text = Text(th1.toString(),
                                                  style: style);
                                              break;
                                            case 3:
                                              text = Text(th2.toString(),
                                                  style: style);
                                              break;
                                            case 5:
                                              text = Text(th3.toString(),
                                                  style: style);
                                              break;
                                            case 7:
                                              text = Text(th4.toString(),
                                                  style: style);
                                              break;
                                            case 9:
                                              text = Text(th5.toString(),
                                                  style: style);
                                              break;
                                            default:
                                              text =
                                                  const Text('', style: style);
                                              break;
                                          }
                                          return SideTitleWidget(
                                            axisSide: meta.axisSide,
                                            space: 8.0,
                                            child: text,
                                          );
                                        }),
                                  ),
                                  leftTitles: AxisTitles(
                                    sideTitles: SideTitles(
                                      showTitles: true,
                                      interval: 1,
                                      getTitlesWidget:
                                          (double value, TitleMeta meta) {
                                        const style = TextStyle(
                                          color: Color(0xff67727d),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        );
                                        String text;
                                        switch (value.toInt()) {
                                          case 5:
                                            text = '5';
                                            break;
                                          case 10:
                                            text = '10';
                                            break;
                                          case 15:
                                            text = '15';
                                            break;
                                          case 20:
                                            text = '20';
                                            break;
                                          default:
                                            return Container();
                                        }
                                        return Text(text,
                                            style: style,
                                            textAlign: TextAlign.left);
                                      },
                                      reservedSize: 42,
                                    ),
                                  ),
                                ),
                                borderData: FlBorderData(
                                  show: false,
                                ),
                                minX: 0,
                                maxX: 10,
                                maxY: 25,
                                minY: 0,
                                lineBarsData: [
                                  LineChartBarData(
                                    spots: [
                                      FlSpot(1, p0_1),
                                      FlSpot(3, p0_2),
                                      FlSpot(5, p0_3),
                                      FlSpot(7, p0_4),
                                      FlSpot(9, p0_5),
                                    ],
                                    isCurved: true,
                                    gradient: LinearGradient(
                                      colors: gradientColorsA,
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                    ),
                                    barWidth: 10,
                                    isStrokeCapRound: true,
                                    dotData: FlDotData(
                                      show: false,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          color: Colors.transparent,
                          height: screenHeight * 0.02,
                        ),
                        Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 2),
                            child: Text(
                              "Indeks Kedalaman Kemiskinan (P1) dan Indeks Keparahan Kemiskinan (P2) Kabupaten Cilacap, " +
                                  th5.toString() +
                                  "-" +
                                  th1.toString(),
                              style: const TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            )),
                        SizedBox(
                          height: screenHeight * 0.5,
                          child: Card(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                            color: const Color(0xff2c4260),
                            child: LineChart(
                              LineChartData(
                                gridData: FlGridData(
                                  show: true,
                                  drawVerticalLine: true,
                                  horizontalInterval: 1,
                                  verticalInterval: 1,
                                  getDrawingHorizontalLine: (value) {
                                    return FlLine(
                                      color: Colors.transparent,
                                      strokeWidth: 1,
                                    );
                                  },
                                  getDrawingVerticalLine: (value) {
                                    return FlLine(
                                      color: Colors.transparent,
                                      strokeWidth: 1,
                                    );
                                  },
                                ),
                                titlesData: FlTitlesData(
                                  show: true,
                                  rightTitles: AxisTitles(
                                    sideTitles: SideTitles(showTitles: false),
                                  ),
                                  topTitles: AxisTitles(
                                      sideTitles:
                                          SideTitles(showTitles: false)),
                                  bottomTitles: AxisTitles(
                                    sideTitles: SideTitles(
                                        showTitles: true,
                                        reservedSize: 30,
                                        interval: 1,
                                        getTitlesWidget:
                                            (double value, TitleMeta meta) {
                                          const style = TextStyle(
                                            color: Color(0xff68737d),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          );
                                          Widget text;
                                          switch (value.toInt()) {
                                            case 1:
                                              text = Text(th1.toString(),
                                                  style: style);
                                              break;
                                            case 3:
                                              text = Text(th2.toString(),
                                                  style: style);
                                              break;
                                            case 5:
                                              text = Text(th3.toString(),
                                                  style: style);
                                              break;
                                            case 7:
                                              text = Text(th4.toString(),
                                                  style: style);
                                              break;
                                            case 9:
                                              text = Text(th5.toString(),
                                                  style: style);
                                              break;
                                            default:
                                              text =
                                                  const Text('', style: style);
                                              break;
                                          }
                                          return SideTitleWidget(
                                            axisSide: meta.axisSide,
                                            space: 8.0,
                                            child: text,
                                          );
                                        }),
                                  ),
                                  leftTitles: AxisTitles(
                                    sideTitles: SideTitles(
                                      showTitles: true,
                                      interval: 1,
                                      getTitlesWidget:
                                          (double value, TitleMeta meta) {
                                        const style = TextStyle(
                                          color: Color(0xff67727d),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        );
                                        String text;
                                        switch (value.toInt()) {
                                          case 1:
                                            text = '1';
                                            break;
                                          case 2:
                                            text = '2';
                                            break;
                                          case 3:
                                            text = '3';
                                            break;
                                          default:
                                            return Container();
                                        }
                                        return Text(text,
                                            style: style,
                                            textAlign: TextAlign.left);
                                      },
                                      reservedSize: 42,
                                    ),
                                  ),
                                ),
                                borderData: FlBorderData(
                                  show: false,
                                ),
                                minX: 0,
                                maxX: 10,
                                maxY: 4,
                                minY: 0,
                                lineBarsData: [
                                  LineChartBarData(
                                    spots: [
                                      FlSpot(1, p1_1 / 100),
                                      FlSpot(3, p1_2),
                                      FlSpot(5, p1_3),
                                      FlSpot(7, p1_4),
                                      FlSpot(9, p1_5),
                                    ],
                                    isCurved: true,
                                    gradient: LinearGradient(
                                      colors: gradientColorsA,
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                    ),
                                    barWidth: 10,
                                    isStrokeCapRound: true,
                                    dotData: FlDotData(
                                      show: false,
                                    ),
                                  ),
                                  LineChartBarData(
                                    spots: [
                                      FlSpot(1, p2_1),
                                      FlSpot(3, p2_2),
                                      FlSpot(5, p2_3),
                                      FlSpot(7, p2_4),
                                      FlSpot(9, p2_5),
                                    ],
                                    isCurved: true,
                                    gradient: LinearGradient(
                                      colors: gradientColorsB,
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                    ),
                                    barWidth: 10,
                                    isStrokeCapRound: true,
                                    dotData: FlDotData(
                                      show: false,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                  gradient:
                                      LinearGradient(colors: gradientColorsA)),
                            ),
                            const Text("P1"),
                            const Divider(
                              color: Colors.transparent,
                              indent: 20,
                            ),
                            Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                  gradient:
                                      LinearGradient(colors: gradientColorsB)),
                            ),
                            const Text("P2"),
                          ],
                        )
                      ],
                    ),
                  );
                },
              );
            }
            if (snapshot.hasError) {
              return const Text('Database Error');
            } else {
              return const Center(
                  child: CircularProgressIndicator(strokeWidth: 3));
            }
          },
        ));
  }
}
