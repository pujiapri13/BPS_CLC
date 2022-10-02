import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class AkTPT extends StatefulWidget {
  const AkTPT({super.key});

  @override
  State<AkTPT> createState() => _AkTPTState();
}

class _AkTPTState extends State<AkTPT> {
  final double width = 7;

  late List<BarChartGroupData> rawBarGroups;
  late List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex = -1;

  int th2021 = 2021;
  int th2020 = 2020;
  int th2019 = 2019;
  int th2018 = 2018;
  int th2017 = 2017;

  double lk2021 = 12.05;
  double lk2020 = 10.59;
  double lk2019 = 8.00;
  double lk2018 = 7.75;
  double lk2017 = 7.56;

  double pr2021 = 6.48;
  double pr2020 = 6.75;
  double pr2019 = 6.09;
  double pr2018 = 7.05;
  double pr2017 = 4.25;

  double jml2021 = 9.97;
  double jml2020 = 9.10;
  double jml2019 = 7.31;
  double jml2018 = 7.48;
  double jml2017 = 6.30;

  @override
  void initState() {
    super.initState();
    final barGroup1 = makeGroupData(0, pr2017, lk2017, jml2017);
    final barGroup2 = makeGroupData(1, pr2018, lk2018, jml2018);
    final barGroup3 = makeGroupData(2, pr2019, lk2019, jml2019);
    final barGroup4 = makeGroupData(3, pr2020, lk2020, jml2020);
    final barGroup5 = makeGroupData(4, pr2021, lk2021, jml2021);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
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
          'Tingkat Pengangguran Terbuka',
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
                        "Tingkat Pengangguran Terbuka (TPT) Kabupaten Cilacap Menurut Jenis Kelamin",
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
                          flex: 3,
                          fit: FlexFit.tight,
                          child: Container(
                            height: screenHeight * 0.05,
                            color: Colors.grey,
                            child: const Center(
                              child: Text(
                                "Jenis Kelamin",
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
                        Flexible(
                          flex: 2,
                          fit: FlexFit.tight,
                          child: Container(
                            color: Colors.grey,
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(
                                th2017.toString(),
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
                          flex: 3,
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.only(
                                top: 10, left: 5, right: 5),
                            height: screenHeight * 0.05,
                            child: const Center(
                              child: Text(
                                "Laki-laki",
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
                              child: Text(lk2021.toString()),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(lk2020.toString()),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(lk2019.toString()),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(lk2018.toString()),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(lk2017.toString()),
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
                                "Perempuan",
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
                              child: Text(pr2021.toString()),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(pr2020.toString()),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(pr2019.toString()),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(pr2018.toString()),
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 2,
                          fit: FlexFit.tight,
                          child: SizedBox(
                            height: screenHeight * 0.05,
                            child: Center(
                              child: Text(pr2017.toString()),
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
                                "Jumlah",
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
                              child: Text(jml2021.toString()),
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
                              child: Text(jml2020.toString()),
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
                              child: Text(jml2019.toString()),
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
                              child: Text(jml2018.toString()),
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
                                jml2017.toString(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Flexible(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: const Text("Sumber Data :"),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: const Text(
                                " - Survey Angkatan Kerja Nasional",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ))
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
                            maxY: 30,
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
                                      th2017.toString(),
                                      th2018.toString(),
                                      th2019.toString(),
                                      th2020.toString(),
                                      th2021.toString()
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
                                    if (value == 5) {
                                      text = '5%';
                                    } else if (value == 10) {
                                      text = '10%';
                                    } else if (value == 15) {
                                      text = '15%';
                                    } else if (value == 20) {
                                      text = '20%';
                                    } else if (value == 25) {
                                      text = '25%';
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
                        width: 15,
                        height: 15,
                        color: Colors.green,
                      ),
                      const Text(" Perempuan"),
                    ],
                  ),
                  const Divider(
                    indent: 20,
                    color: Colors.transparent,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        color: Colors.amber,
                      ),
                      const Text(" Laki-laki"),
                    ],
                  ),
                  const Divider(
                    indent: 20,
                    color: Colors.transparent,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        color: Colors.blue,
                      ),
                      const Text(" Jumlah"),
                    ],
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
      toY: y1,
      color: Colors.green,
      width: 10,
    ),
    BarChartRodData(
      toY: y2,
      color: Colors.amber,
      width: 10,
    ),
    BarChartRodData(
      toY: y3,
      color: Colors.blue,
      width: 10,
    ),
  ]);
}
