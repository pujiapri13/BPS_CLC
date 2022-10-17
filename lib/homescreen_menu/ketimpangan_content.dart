// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ketimpanganContent extends StatefulWidget {
  const ketimpanganContent({super.key});

  @override
  State<ketimpanganContent> createState() => _ketimpanganContentState();
}

class _ketimpanganContentState extends State<ketimpanganContent> {
  final double width = 7;

  late List<BarChartGroupData> rawBarGroups;
  late List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex = -1;

  int th2021 = 2021;
  int th2020 = 2020;
  int th2019 = 2019;
  int th2018 = 2018;

  double PddkRendah2021 = 20.31;
  double PddkRendah2020 = 18.23;
  double PddkRendah2019 = 19.34;
  double PddkRendah2018 = 19.09;

  double PddkMenengah2021 = 36.70;
  double PddkMenengah2020 = 37.41;
  double PddkMenengah2019 = 38.37;
  double PddkMenengah2018 = 38.43;

  double PddkTinggi2021 = 42.99;
  double PddkTinggi2020 = 44.37;
  double PddkTinggi2019 = 42.30;
  double PddkTinggi2018 = 42.48;

  @override
  void initState() {
    super.initState();
    final barGroup1 =
        makeGroupData(1, PddkMenengah2018, PddkRendah2018, PddkTinggi2018);
    final barGroup2 =
        makeGroupData(2, PddkMenengah2019, PddkRendah2019, PddkTinggi2019);
    final barGroup3 =
        makeGroupData(3, PddkMenengah2020, PddkRendah2020, PddkTinggi2020);
    final barGroup4 =
        makeGroupData(4, PddkMenengah2021, PddkRendah2021, PddkTinggi2021);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
    ];

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;
  }

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
          'KETIMPANGAN',
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
                  // constraints: BoxConstraints.loose(
                  //   Size(screenWidth, screenHeight * 0.9),
                  // ),
                  context: context,
                  builder: (context) {
                    return ListView(children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: const [
                                Text(
                                  "   Selain Gini Ratio, salah satu ukuran untuk melihat ketimpangan pendapatan diantara penduduk adalah dengan menggunakan Kriteria Bank Dunia. Pada prinsipnya Kriteria Bank Dunia membagi penduduk ke dalam 3 (tiga) kelompok pendapatan yaitu: 1) 40 persen kelompok penduduk berpendapatan rendah, 2) 40 persen kelompok penduduk berpendapatan sedang, dan 3) 20 persen kelompok berpendapatan tinggi.",
                                  textAlign: TextAlign.justify,
                                ),
                                Text(
                                  "   Pengelompokan seperti ini pada dasarnya sama dengan menggunakan cara desil (decile) yaitu 40 persen pertama sama dengan desil ke-4; 40 persen kedua sama dengan desil ke-8 dan 20 persen terakhir adalah desil ke-10. Dalam menentukan besarnya desil ke-i digunakan rumus :",
                                ),
                                Text(
                                  "   Ketimpangan pendapatan ditentukan berdasarkan besarnya jumlah pendapatan yang diterima oleh kelompok 40 persen penduduk berpendapatan rendah, dengan kriteria sebagai berikut:",
                                ),
                              ],
                            ),
                          ),
                          Image.asset(
                              './assets/images/modal/ketimpangan_modal.jpeg'),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "A. Ketimpangan Tinggi",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "   Bila persentase pendapatan yang diterima oleh kelompok 40 persen penduduk berpendapatan rendah lebih kecil dari 12 persen.",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "B. Ketimpangan Sedang/Moderat",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "   Bila persentase pendapatan yang diterima oleh kelompok 40 persen penduduk berpendapatan rendah antara 12 persen sampai dengan 17 persen.",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "C. Ketimpangan Rendah",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "   Bila persentase pendapatan yang diterima oleh kelompok 40 persen penduduk berpendapatan rendah lebih besar dari 17 persen.",
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
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
        child: Column(children: [
          Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Column(children: [
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Container(
                  height: 100,
                  color: Colors.black,
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 2,
                        horizontal: 5,
                      ),
                      child: Text(
                        "Distribusi Persentase Pendapatan Penduduk Kabupaten Cilacap menurut Kriteria Bank Dunia",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                fit: FlexFit.tight,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                          flex: 4,
                          fit: FlexFit.tight,
                          child: Container(
                            height: screenHeight * 0.05,
                            color: Colors.grey,
                            child: const Center(
                              child: Text(
                                "PDDK(%)",
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
                            child: Center(
                              child: Text(
                                th2021.toString(),
                                style: const TextStyle(
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
                            child: Center(
                              child: Text(
                                th2020.toString(),
                                style: const TextStyle(
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
                            child: Center(
                              child: Text(
                                th2019.toString(),
                                style: const TextStyle(
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
                            child: Center(
                              child: Text(
                                th2018.toString(),
                                style: const TextStyle(
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
                          flex: 4,
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.only(
                                top: 10, left: 5, right: 5),
                            height: screenHeight * 0.05,
                            child: const Center(
                              child: Text(
                                "Rendah (40%)",
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
                              child: Text(PddkRendah2021.toString()),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(PddkRendah2020.toString()),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(PddkRendah2019.toString()),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(PddkRendah2018.toString()),
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
                            child: const Center(
                              child: Text(
                                "Menengah (40%)",
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
                              child: Text(PddkMenengah2021.toString()),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(PddkMenengah2020.toString()),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(PddkMenengah2019.toString()),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(PddkMenengah2018.toString()),
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
                            child: const Center(
                              child: Text(
                                "Tinggi (20%)",
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
                              child: Text(PddkTinggi2021.toString()),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(PddkTinggi2020.toString()),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(PddkTinggi2019.toString()),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(PddkTinggi2018.toString()),
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
                            height: screenHeight * 0.05,
                            color: Colors.grey,
                            child: const Center(
                              child: Text(
                                "Jumlah",
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
                            child: Center(
                              child: Text(
                                (PddkRendah2018 +
                                        PddkMenengah2018 +
                                        PddkTinggi2018)
                                    .toStringAsFixed(0),
                                style: const TextStyle(
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
                            child: Center(
                              child: Text(
                                (PddkRendah2019 +
                                        PddkMenengah2019 +
                                        PddkTinggi2019)
                                    .toStringAsFixed(0),
                                style: const TextStyle(
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
                            child: Center(
                              child: Text(
                                (PddkRendah2020 +
                                        PddkMenengah2020 +
                                        PddkTinggi2020)
                                    .toStringAsFixed(0),
                                style: const TextStyle(
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
                            child: Center(
                              child: Text(
                                (PddkRendah2021 +
                                        PddkMenengah2021 +
                                        PddkTinggi2021)
                                    .toStringAsFixed(0),
                                style: const TextStyle(
                                    color: Colors.black,
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
                flex: 6,
                fit: FlexFit.tight,
                child: Container(
                  color: Colors.transparent,
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    color: const Color(0xff2c4260),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Expanded(
                        child: BarChart(
                          BarChartData(
                            maxY: 70,
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
                                      "",
                                      th2018.toString(),
                                      th2019.toString(),
                                      th2020.toString(),
                                      th2021.toString(),
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
                                  reservedSize: 50,
                                ),
                              ),
                              leftTitles: AxisTitles(
                                sideTitles: SideTitles(
                                  showTitles: true,
                                  reservedSize: 28,
                                  interval: 1,
                                  getTitlesWidget:
                                      (double value, TitleMeta meta) {
                                    const style = TextStyle(
                                      color: Color(0xff7589a2),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    );
                                    String text;
                                    if (value == 15) {
                                      text = '15%';
                                    } else if (value == 30) {
                                      text = '30%';
                                    } else if (value == 50) {
                                      text = '50%';
                                    } else if (value == 100) {
                                      text = '100%';
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
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        color: Colors.amber,
                      ),
                      const Text(
                        " 40% Pddk Rendah",
                        style: TextStyle(fontSize: 10),
                      ),
                    ],
                  ),
                  const Divider(
                    indent: 20,
                    color: Colors.transparent,
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          color: Colors.green,
                        ),
                        const Text(
                          " 40% Pddk Menengah",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    indent: 20,
                    color: Colors.transparent,
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: Row(
                      children: [
                        Container(
                          width: 10,
                          height: 10,
                          color: Colors.blue,
                        ),
                        const Text(
                          " 20% Pddk Tinggi",
                          style: TextStyle(fontSize: 10),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ]),
          ),
        ]),
      ),
    );
  }
}

BarChartGroupData makeGroupData(int x, double y1, double y2, double y3) {
  return BarChartGroupData(barsSpace: 4, x: x, barRods: [
    BarChartRodData(
      toY: y2,
      color: Colors.amber,
      width: 10,
    ),
    BarChartRodData(
      toY: y1,
      color: Colors.green,
      width: 10,
    ),
    BarChartRodData(
      toY: y3,
      color: Colors.blue,
      width: 10,
    ),
  ]);
}
