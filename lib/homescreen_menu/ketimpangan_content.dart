// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/restAPI/repository_ketimpangan.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ketimpanganContent extends StatefulWidget {
  const ketimpanganContent({super.key});

  @override
  State<ketimpanganContent> createState() => _ketimpanganContentState();
}

RepositoryKetimpangan repositoryketimpangan = RepositoryKetimpangan();

class _ketimpanganContentState extends State<ketimpanganContent> {
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
        body: FutureBuilder(
          future: repositoryketimpangan.getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List isiketimpangan = snapshot.data as List;
              return ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  String th1 = isiketimpangan[index = 0].created_at[0] +
                      isiketimpangan[index = 0].created_at[1] +
                      isiketimpangan[index = 0].created_at[2] +
                      isiketimpangan[index = 0].created_at[3];
                  String th2 = isiketimpangan[index = 1].created_at[0] +
                      isiketimpangan[index = 1].created_at[1] +
                      isiketimpangan[index = 1].created_at[2] +
                      isiketimpangan[index = 1].created_at[3];
                  String th3 = isiketimpangan[index = 2].created_at[0] +
                      isiketimpangan[index = 2].created_at[1] +
                      isiketimpangan[index = 2].created_at[2] +
                      isiketimpangan[index = 2].created_at[3];
                  String th4 = isiketimpangan[index = 3].created_at[0] +
                      isiketimpangan[index = 3].created_at[1] +
                      isiketimpangan[index = 3].created_at[2] +
                      isiketimpangan[index = 3].created_at[3];
                  String th5 = isiketimpangan[index = 4].created_at[0] +
                      isiketimpangan[index = 4].created_at[1] +
                      isiketimpangan[index = 4].created_at[2] +
                      isiketimpangan[index = 4].created_at[3];

                  double PddkRendah1 =
                      double.parse(isiketimpangan[index = 0].rendah);
                  double PddkRendah2 =
                      double.parse(isiketimpangan[index = 1].rendah);
                  double PddkRendah3 =
                      double.parse(isiketimpangan[index = 2].rendah);
                  double PddkRendah4 =
                      double.parse(isiketimpangan[index = 3].rendah);
                  double PddkRendah5 =
                      double.parse(isiketimpangan[index = 4].rendah);

                  double PddkMenengah1 =
                      double.parse(isiketimpangan[index = 0].menengah);
                  double PddkMenengah2 =
                      double.parse(isiketimpangan[index = 1].menengah);
                  double PddkMenengah3 =
                      double.parse(isiketimpangan[index = 2].menengah);
                  double PddkMenengah4 =
                      double.parse(isiketimpangan[index = 3].menengah);
                  double PddkMenengah5 =
                      double.parse(isiketimpangan[index = 4].menengah);

                  double PddkTinggi1 =
                      double.parse(isiketimpangan[index = 0].tinggi);
                  double PddkTinggi2 =
                      double.parse(isiketimpangan[index = 1].tinggi);
                  double PddkTinggi3 =
                      double.parse(isiketimpangan[index = 2].tinggi);
                  double PddkTinggi4 =
                      double.parse(isiketimpangan[index = 3].tinggi);
                  double PddkTinggi5 =
                      double.parse(isiketimpangan[index = 4].tinggi);

                  BarChartGroupData makeGroupData(
                      int x, double y1, double y2, double y3) {
                    return BarChartGroupData(barsSpace: 5, x: x, barRods: [
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

                  final barGroup1 =
                      makeGroupData(1, PddkMenengah5, PddkRendah5, PddkTinggi5);
                  final barGroup2 =
                      makeGroupData(2, PddkMenengah4, PddkRendah4, PddkTinggi4);
                  final barGroup3 =
                      makeGroupData(3, PddkMenengah3, PddkRendah3, PddkTinggi3);
                  final barGroup4 =
                      makeGroupData(4, PddkMenengah2, PddkRendah2, PddkTinggi2);
                  final barGroup5 =
                      makeGroupData(5, PddkMenengah1, PddkRendah1, PddkTinggi1);

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
                  return SingleChildScrollView(
                    padding: const EdgeInsets.all(5),
                    child: Wrap(
                      children: [
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
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Divider(
                          color: Colors.white,
                          height: 10,
                          thickness: 10,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Flexible(
                                  flex: 4,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    height: screenHeight * 0.07,
                                    color: Colors.cyan,
                                    child: const Center(
                                      child: Text(
                                        "PDDK(%)",
                                        style: TextStyle(
                                            color: Colors.white,
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
                                    color: Colors.cyan,
                                    height: screenHeight * 0.07,
                                    child: Center(
                                      child: Text(
                                        th1.toString(),
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
                                    height: screenHeight * 0.07,
                                    child: Center(
                                      child: Text(
                                        th2.toString(),
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
                                    height: screenHeight * 0.07,
                                    child: Center(
                                      child: Text(
                                        th3.toString(),
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
                                    height: screenHeight * 0.07,
                                    child: Center(
                                      child: Text(
                                        th4.toString(),
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
                                    height: screenHeight * 0.07,
                                    child: Center(
                                      child: Text(
                                        th5.toString(),
                                        style: const TextStyle(
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
                                    height: screenHeight * 0.07,
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
                                    height: screenHeight * 0.07,
                                    child: Center(
                                      child: Text(PddkRendah1.toString()),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    height: screenHeight * 0.07,
                                    child: Center(
                                      child: Text(PddkRendah2.toString()),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    height: screenHeight * 0.07,
                                    child: Center(
                                      child: Text(PddkRendah3.toString()),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    height: screenHeight * 0.07,
                                    child: Center(
                                      child: Text(PddkRendah4.toString()),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    height: screenHeight * 0.07,
                                    child: Center(
                                      child: Text(PddkRendah5.toString()),
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
                                    height: screenHeight * 0.07,
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
                                    height: screenHeight * 0.07,
                                    child: Center(
                                      child: Text(PddkMenengah1.toString()),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    height: screenHeight * 0.07,
                                    child: Center(
                                      child: Text(PddkMenengah2.toString()),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    height: screenHeight * 0.07,
                                    child: Center(
                                      child: Text(PddkMenengah3.toString()),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    height: screenHeight * 0.07,
                                    child: Center(
                                      child: Text(PddkMenengah4.toString()),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    height: screenHeight * 0.07,
                                    child: Center(
                                      child: Text(PddkMenengah5.toString()),
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
                                    height: screenHeight * 0.07,
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
                                    height: screenHeight * 0.07,
                                    child: Center(
                                      child: Text(PddkTinggi1.toString()),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    height: screenHeight * 0.07,
                                    child: Center(
                                      child: Text(PddkTinggi2.toString()),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    height: screenHeight * 0.07,
                                    child: Center(
                                      child: Text(PddkTinggi3.toString()),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    height: screenHeight * 0.07,
                                    child: Center(
                                      child: Text(PddkTinggi4.toString()),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 2,
                                  fit: FlexFit.tight,
                                  child: SizedBox(
                                    height: screenHeight * 0.07,
                                    child: Center(
                                      child: Text(PddkTinggi5.toString()),
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
                                    height: screenHeight * 0.07,
                                    color: Colors.cyan,
                                    child: const Center(
                                      child: Text(
                                        "Jumlah",
                                        style: TextStyle(
                                            color: Colors.white,
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
                                    color: Colors.cyan,
                                    height: screenHeight * 0.07,
                                    child: Center(
                                      child: Text(
                                        (PddkRendah1 +
                                                PddkMenengah1 +
                                                PddkTinggi1)
                                            .toStringAsFixed(0),
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
                                    height: screenHeight * 0.07,
                                    child: Center(
                                      child: Text(
                                        (PddkRendah2 +
                                                PddkMenengah2 +
                                                PddkTinggi2)
                                            .toStringAsFixed(0),
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
                                    height: screenHeight * 0.07,
                                    child: Center(
                                      child: Text(
                                        (PddkRendah3 +
                                                PddkMenengah3 +
                                                PddkTinggi3)
                                            .toStringAsFixed(0),
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
                                    height: screenHeight * 0.07,
                                    child: Center(
                                      child: Text(
                                        (PddkRendah4 +
                                                PddkMenengah4 +
                                                PddkTinggi4)
                                            .toStringAsFixed(0),
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
                                    height: screenHeight * 0.07,
                                    child: Center(
                                      child: Text(
                                        (PddkRendah5 +
                                                PddkMenengah5 +
                                                PddkTinggi5)
                                            .toStringAsFixed(0),
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
                        Container(
                          color: Colors.transparent,
                          height: 300,
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
                                        sideTitles:
                                            SideTitles(showTitles: false),
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
                      ],
                    ),
                  );
                  // return Container(
                  //   height: screenHeight,
                  //   width: screenWeight,
                  //   padding: const EdgeInsets.all(2),
                  //   child: Column(children: [
                  //     Flexible(
                  //       flex: 2,
                  //       fit: FlexFit.tight,
                  //       child: Column(children: [
                  //         Flexible(
                  //           flex: 1,
                  //           fit: FlexFit.tight,
                  //           child: Container(
                  //             height: 100,
                  //             color: Colors.black,
                  //             child: const Center(
                  //               child: Padding(
                  //                 padding: EdgeInsets.symmetric(
                  //                   vertical: 2,
                  //                   horizontal: 5,
                  //                 ),
                  //                 child: Text(
                  //                   "Distribusi Persentase Pendapatan Penduduk Kabupaten Cilacap menurut Kriteria Bank Dunia",
                  //                   style: TextStyle(
                  //                       color: Colors.white, fontSize: 17),
                  //                   textAlign: TextAlign.center,
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //         Flexible(
                  //           flex: 3,
                  //           fit: FlexFit.tight,
                  //           child: Column(
                  //             children: [
                  //               Row(
                  //                 children: [
                  //                   Flexible(
                  //                     flex: 4,
                  //                     fit: FlexFit.tight,
                  //                     child: Container(
                  //                       height: screenHeight * 0.07,
                  //                       color: Colors.cyan,
                  //                       child: const Center(
                  //                         child: Text(
                  //                           "PDDK(%)",
                  //                           style: TextStyle(
                  //                               color: Colors.white,
                  //                               fontWeight: FontWeight.bold),
                  //                           textAlign: TextAlign.center,
                  //                         ),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Flexible(
                  //                     flex: 2,
                  //                     fit: FlexFit.tight,
                  //                     child: Container(
                  //                       color: Colors.cyan,
                  //                       height: screenHeight * 0.07,
                  //                       child: Center(
                  //                         child: Text(
                  //                           th1.toString(),
                  //                           style: const TextStyle(
                  //                               color: Colors.white,
                  //                               fontWeight: FontWeight.bold),
                  //                         ),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Flexible(
                  //                     flex: 2,
                  //                     fit: FlexFit.tight,
                  //                     child: Container(
                  //                       color: Colors.cyan,
                  //                       height: screenHeight * 0.07,
                  //                       child: Center(
                  //                         child: Text(
                  //                           th2.toString(),
                  //                           style: const TextStyle(
                  //                               color: Colors.white,
                  //                               fontWeight: FontWeight.bold),
                  //                         ),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Flexible(
                  //                     flex: 2,
                  //                     fit: FlexFit.tight,
                  //                     child: Container(
                  //                       color: Colors.cyan,
                  //                       height: screenHeight * 0.07,
                  //                       child: Center(
                  //                         child: Text(
                  //                           th3.toString(),
                  //                           style: const TextStyle(
                  //                               color: Colors.white,
                  //                               fontWeight: FontWeight.bold),
                  //                         ),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Flexible(
                  //                     flex: 2,
                  //                     fit: FlexFit.tight,
                  //                     child: Container(
                  //                       color: Colors.cyan,
                  //                       height: screenHeight * 0.07,
                  //                       child: Center(
                  //                         child: Text(
                  //                           th4.toString(),
                  //                           style: const TextStyle(
                  //                               color: Colors.white,
                  //                               fontWeight: FontWeight.bold),
                  //                         ),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Flexible(
                  //                     flex: 2,
                  //                     fit: FlexFit.tight,
                  //                     child: Container(
                  //                       color: Colors.cyan,
                  //                       height: screenHeight * 0.07,
                  //                       child: Center(
                  //                         child: Text(
                  //                           th5.toString(),
                  //                           style: const TextStyle(
                  //                               color: Colors.white,
                  //                               fontWeight: FontWeight.bold),
                  //                         ),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //               Row(
                  //                 children: [
                  //                   Flexible(
                  //                     flex: 4,
                  //                     fit: FlexFit.tight,
                  //                     child: Container(
                  //                       padding: const EdgeInsets.only(
                  //                           top: 10, left: 5, right: 5),
                  //                       height: screenHeight * 0.07,
                  //                       child: const Center(
                  //                         child: Text(
                  //                           "Rendah (40%)",
                  //                           textAlign: TextAlign.left,
                  //                         ),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Flexible(
                  //                     flex: 2,
                  //                     fit: FlexFit.tight,
                  //                     child: SizedBox(
                  //                       height: screenHeight * 0.07,
                  //                       child: Center(
                  //                         child: Text(PddkRendah1.toString()),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Flexible(
                  //                     flex: 2,
                  //                     fit: FlexFit.tight,
                  //                     child: SizedBox(
                  //                       height: screenHeight * 0.07,
                  //                       child: Center(
                  //                         child: Text(PddkRendah2.toString()),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Flexible(
                  //                     flex: 2,
                  //                     fit: FlexFit.tight,
                  //                     child: SizedBox(
                  //                       height: screenHeight * 0.07,
                  //                       child: Center(
                  //                         child: Text(PddkRendah3.toString()),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Flexible(
                  //                     flex: 2,
                  //                     fit: FlexFit.tight,
                  //                     child: SizedBox(
                  //                       height: screenHeight * 0.07,
                  //                       child: Center(
                  //                         child: Text(PddkRendah4.toString()),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Flexible(
                  //                     flex: 2,
                  //                     fit: FlexFit.tight,
                  //                     child: SizedBox(
                  //                       height: screenHeight * 0.07,
                  //                       child: Center(
                  //                         child: Text(PddkRendah5.toString()),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //               Row(
                  //                 children: [
                  //                   Flexible(
                  //                     flex: 4,
                  //                     fit: FlexFit.tight,
                  //                     child: Container(
                  //                       padding: const EdgeInsets.only(
                  //                           top: 10, left: 5, right: 5),
                  //                       height: screenHeight * 0.07,
                  //                       child: const Center(
                  //                         child: Text(
                  //                           "Menengah (40%)",
                  //                           textAlign: TextAlign.left,
                  //                         ),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Flexible(
                  //                     flex: 2,
                  //                     fit: FlexFit.tight,
                  //                     child: SizedBox(
                  //                       height: screenHeight * 0.07,
                  //                       child: Center(
                  //                         child: Text(PddkMenengah1.toString()),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Flexible(
                  //                     flex: 2,
                  //                     fit: FlexFit.tight,
                  //                     child: SizedBox(
                  //                       height: screenHeight * 0.07,
                  //                       child: Center(
                  //                         child: Text(PddkMenengah2.toString()),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Flexible(
                  //                     flex: 2,
                  //                     fit: FlexFit.tight,
                  //                     child: SizedBox(
                  //                       height: screenHeight * 0.07,
                  //                       child: Center(
                  //                         child: Text(PddkMenengah3.toString()),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Flexible(
                  //                     flex: 2,
                  //                     fit: FlexFit.tight,
                  //                     child: SizedBox(
                  //                       height: screenHeight * 0.07,
                  //                       child: Center(
                  //                         child: Text(PddkMenengah4.toString()),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Flexible(
                  //                     flex: 2,
                  //                     fit: FlexFit.tight,
                  //                     child: SizedBox(
                  //                       height: screenHeight * 0.07,
                  //                       child: Center(
                  //                         child: Text(PddkMenengah5.toString()),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //               Row(
                  //                 children: [
                  //                   Flexible(
                  //                     flex: 4,
                  //                     fit: FlexFit.tight,
                  //                     child: Container(
                  //                       padding: const EdgeInsets.only(
                  //                           top: 10, left: 5, right: 5),
                  //                       height: screenHeight * 0.07,
                  //                       child: const Center(
                  //                         child: Text(
                  //                           "Tinggi (20%)",
                  //                           textAlign: TextAlign.left,
                  //                         ),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Flexible(
                  //                     flex: 2,
                  //                     fit: FlexFit.tight,
                  //                     child: SizedBox(
                  //                       height: screenHeight * 0.07,
                  //                       child: Center(
                  //                         child: Text(PddkTinggi1.toString()),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Flexible(
                  //                     flex: 2,
                  //                     fit: FlexFit.tight,
                  //                     child: SizedBox(
                  //                       height: screenHeight * 0.07,
                  //                       child: Center(
                  //                         child: Text(PddkTinggi2.toString()),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Flexible(
                  //                     flex: 2,
                  //                     fit: FlexFit.tight,
                  //                     child: SizedBox(
                  //                       height: screenHeight * 0.07,
                  //                       child: Center(
                  //                         child: Text(PddkTinggi3.toString()),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Flexible(
                  //                     flex: 2,
                  //                     fit: FlexFit.tight,
                  //                     child: SizedBox(
                  //                       height: screenHeight * 0.07,
                  //                       child: Center(
                  //                         child: Text(PddkTinggi4.toString()),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Flexible(
                  //                     flex: 2,
                  //                     fit: FlexFit.tight,
                  //                     child: SizedBox(
                  //                       height: screenHeight * 0.07,
                  //                       child: Center(
                  //                         child: Text(PddkTinggi5.toString()),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //               Row(
                  //                 children: [
                  //                   Flexible(
                  //                     flex: 4,
                  //                     fit: FlexFit.tight,
                  //                     child: Container(
                  //                       height: screenHeight * 0.07,
                  //                       color: Colors.cyan,
                  //                       child: const Center(
                  //                         child: Text(
                  //                           "Jumlah",
                  //                           style: TextStyle(
                  //                               color: Colors.white,
                  //                               fontWeight: FontWeight.bold),
                  //                           textAlign: TextAlign.center,
                  //                         ),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Flexible(
                  //                     flex: 2,
                  //                     fit: FlexFit.tight,
                  //                     child: Container(
                  //                       color: Colors.cyan,
                  //                       height: screenHeight * 0.07,
                  //                       child: Center(
                  //                         child: Text(
                  //                           (PddkRendah1 +
                  //                                   PddkMenengah1 +
                  //                                   PddkTinggi1)
                  //                               .toStringAsFixed(0),
                  //                           style: const TextStyle(
                  //                               color: Colors.white,
                  //                               fontWeight: FontWeight.bold),
                  //                         ),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Flexible(
                  //                     flex: 2,
                  //                     fit: FlexFit.tight,
                  //                     child: Container(
                  //                       color: Colors.cyan,
                  //                       height: screenHeight * 0.07,
                  //                       child: Center(
                  //                         child: Text(
                  //                           (PddkRendah2 +
                  //                                   PddkMenengah2 +
                  //                                   PddkTinggi2)
                  //                               .toStringAsFixed(0),
                  //                           style: const TextStyle(
                  //                               color: Colors.white,
                  //                               fontWeight: FontWeight.bold),
                  //                         ),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Flexible(
                  //                     flex: 2,
                  //                     fit: FlexFit.tight,
                  //                     child: Container(
                  //                       color: Colors.cyan,
                  //                       height: screenHeight * 0.07,
                  //                       child: Center(
                  //                         child: Text(
                  //                           (PddkRendah3 +
                  //                                   PddkMenengah3 +
                  //                                   PddkTinggi3)
                  //                               .toStringAsFixed(0),
                  //                           style: const TextStyle(
                  //                               color: Colors.white,
                  //                               fontWeight: FontWeight.bold),
                  //                         ),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Flexible(
                  //                     flex: 2,
                  //                     fit: FlexFit.tight,
                  //                     child: Container(
                  //                       color: Colors.cyan,
                  //                       height: screenHeight * 0.07,
                  //                       child: Center(
                  //                         child: Text(
                  //                           (PddkRendah4 +
                  //                                   PddkMenengah4 +
                  //                                   PddkTinggi4)
                  //                               .toStringAsFixed(0),
                  //                           style: const TextStyle(
                  //                               color: Colors.white,
                  //                               fontWeight: FontWeight.bold),
                  //                         ),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                   Flexible(
                  //                     flex: 2,
                  //                     fit: FlexFit.tight,
                  //                     child: Container(
                  //                       color: Colors.cyan,
                  //                       height: screenHeight * 0.07,
                  //                       child: Center(
                  //                         child: Text(
                  //                           (PddkRendah5 +
                  //                                   PddkMenengah5 +
                  //                                   PddkTinggi5)
                  //                               .toStringAsFixed(0),
                  //                           style: const TextStyle(
                  //                               color: Colors.white,
                  //                               fontWeight: FontWeight.bold),
                  //                         ),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ],
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //         Flexible(
                  //           flex: 6,
                  //           fit: FlexFit.tight,
                  //           child: Container(
                  //             color: Colors.transparent,
                  //             child: Card(
                  //               elevation: 0,
                  //               shape: RoundedRectangleBorder(
                  //                   borderRadius: BorderRadius.circular(4)),
                  //               color: const Color(0xff2c4260),
                  //               child: Padding(
                  //                 padding: const EdgeInsets.all(15),
                  //                 child: Expanded(
                  //                   child: BarChart(
                  //                     BarChartData(
                  //                       maxY: 70,
                  //                       titlesData: FlTitlesData(
                  //                         show: true,
                  //                         rightTitles: AxisTitles(
                  //                           sideTitles:
                  //                               SideTitles(showTitles: false),
                  //                         ),
                  //                         topTitles: AxisTitles(
                  //                           sideTitles: SideTitles(
                  //                             showTitles: false,
                  //                           ),
                  //                         ),
                  //                         bottomTitles: AxisTitles(
                  //                           sideTitles: SideTitles(
                  //                             showTitles: true,
                  //                             getTitlesWidget: (double value,
                  //                                 TitleMeta meta) {
                  //                               List<String> titles = [
                  //                                 "",
                  //                                 th5.toString(),
                  //                                 th4.toString(),
                  //                                 th3.toString(),
                  //                                 th2.toString(),
                  //                                 th1.toString(),
                  //                               ];

                  //                               Widget text = Text(
                  //                                 titles[value.toInt()],
                  //                                 style: const TextStyle(
                  //                                   color: Color(0xff7589a2),
                  //                                   fontWeight: FontWeight.bold,
                  //                                   fontSize: 14,
                  //                                 ),
                  //                               );

                  //                               return SideTitleWidget(
                  //                                   axisSide: meta.axisSide,
                  //                                   space: 5, //margin top
                  //                                   child: text);
                  //                             },
                  //                             reservedSize: 50,
                  //                           ),
                  //                         ),
                  //                         leftTitles: AxisTitles(
                  //                           sideTitles: SideTitles(
                  //                             showTitles: true,
                  //                             reservedSize: 28,
                  //                             interval: 1,
                  //                             getTitlesWidget: (double value,
                  //                                 TitleMeta meta) {
                  //                               const style = TextStyle(
                  //                                 color: Color(0xff7589a2),
                  //                                 fontWeight: FontWeight.bold,
                  //                                 fontSize: 14,
                  //                               );
                  //                               String text;
                  //                               if (value == 15) {
                  //                                 text = '15%';
                  //                               } else if (value == 30) {
                  //                                 text = '30%';
                  //                               } else if (value == 50) {
                  //                                 text = '50%';
                  //                               } else if (value == 100) {
                  //                                 text = '100%';
                  //                               } else {
                  //                                 return Container();
                  //                               }
                  //                               return SideTitleWidget(
                  //                                 axisSide: meta.axisSide,
                  //                                 space: 0,
                  //                                 child:
                  //                                     Text(text, style: style),
                  //                               );
                  //                             },
                  //                           ),
                  //                         ),
                  //                       ),
                  //                       borderData: FlBorderData(
                  //                         show: false,
                  //                       ),
                  //                       barGroups: showingBarGroups,
                  //                       gridData: FlGridData(show: false),
                  //                     ),
                  //                   ),
                  //                 ),
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //         Row(
                  //           mainAxisAlignment: MainAxisAlignment.center,
                  //           children: [
                  //             Row(
                  //               children: [
                  //                 Container(
                  //                   width: 10,
                  //                   height: 10,
                  //                   color: Colors.amber,
                  //                 ),
                  //                 const Text(
                  //                   " 40% Pddk Rendah",
                  //                   style: TextStyle(fontSize: 10),
                  //                 ),
                  //               ],
                  //             ),
                  //             const Divider(
                  //               indent: 20,
                  //               color: Colors.transparent,
                  //             ),
                  //             Flexible(
                  //               fit: FlexFit.tight,
                  //               flex: 1,
                  //               child: Row(
                  //                 children: [
                  //                   Container(
                  //                     width: 10,
                  //                     height: 10,
                  //                     color: Colors.green,
                  //                   ),
                  //                   const Text(
                  //                     " 40% Pddk Menengah",
                  //                     style: TextStyle(fontSize: 10),
                  //                   ),
                  //                 ],
                  //               ),
                  //             ),
                  //             const Divider(
                  //               indent: 20,
                  //               color: Colors.transparent,
                  //             ),
                  //             Flexible(
                  //               fit: FlexFit.tight,
                  //               flex: 1,
                  //               child: Row(
                  //                 children: [
                  //                   Container(
                  //                     width: 10,
                  //                     height: 10,
                  //                     color: Colors.blue,
                  //                   ),
                  //                   const Text(
                  //                     " 20% Pddk Tinggi",
                  //                     style: TextStyle(fontSize: 10),
                  //                   ),
                  //                 ],
                  //               ),
                  //             ),
                  //           ],
                  //         )
                  //       ]),
                  //     ),
                  //   ]),
                  // );
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
