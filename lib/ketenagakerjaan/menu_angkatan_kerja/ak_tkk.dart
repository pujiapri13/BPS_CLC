import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/restAPI/repository_tkk.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class AkTKK extends StatefulWidget {
  const AkTKK({super.key});

  @override
  State<AkTKK> createState() => _AkTKKState();
}

class _AkTKKState extends State<AkTKK> {
  RepositoryTkk repositoryTkk = RepositoryTkk();
  final double width = 7;

  late List<BarChartGroupData> rawBarGroups;
  late List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex = -1;

  @override
  void initState() {
    super.initState();
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
            'Tingkat Kesempatan Kerja',
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
          future: repositoryTkk.getData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List isitkk = snapshot.data as List;
              return PageView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  String th1 = isitkk[index = 4].created_at[0] +
                      isitkk[index = 4].created_at[1] +
                      isitkk[index = 4].created_at[2] +
                      isitkk[index = 4].created_at[3];
                  String th2 = isitkk[index = 3].created_at[0] +
                      isitkk[index = 3].created_at[1] +
                      isitkk[index = 3].created_at[2] +
                      isitkk[index = 3].created_at[3];
                  String th3 = isitkk[index = 2].created_at[0] +
                      isitkk[index = 2].created_at[1] +
                      isitkk[index = 2].created_at[2] +
                      isitkk[index = 2].created_at[3];
                  String th4 = isitkk[index = 1].created_at[0] +
                      isitkk[index = 1].created_at[1] +
                      isitkk[index = 1].created_at[2] +
                      isitkk[index = 1].created_at[3];
                  String th5 = isitkk[index = 0].created_at[0] +
                      isitkk[index = 0].created_at[1] +
                      isitkk[index = 0].created_at[2] +
                      isitkk[index = 0].created_at[3];

                  double lk1 = double.parse(isitkk[index = 4].lk);
                  double lk2 = double.parse(isitkk[index = 3].lk);
                  double lk3 = double.parse(isitkk[index = 2].lk);
                  double lk4 = double.parse(isitkk[index = 1].lk);
                  double lk5 = double.parse(isitkk[index = 0].lk);

                  double pr1 = double.parse(isitkk[index = 4].pr);
                  double pr2 = double.parse(isitkk[index = 3].pr);
                  double pr3 = double.parse(isitkk[index = 2].pr);
                  double pr4 = double.parse(isitkk[index = 1].pr);
                  double pr5 = double.parse(isitkk[index = 0].pr);

                  double jml1 = double.parse(isitkk[index = 4].jumlah);
                  double jml2 = double.parse(isitkk[index = 3].jumlah);
                  double jml3 = double.parse(isitkk[index = 2].jumlah);
                  double jml4 = double.parse(isitkk[index = 1].jumlah);
                  double jml5 = double.parse(isitkk[index = 0].jumlah);

                  final barGroup1 = makeGroupData(0, pr5, lk5, jml5);
                  final barGroup2 = makeGroupData(1, pr4, lk4, jml4);
                  final barGroup3 = makeGroupData(2, pr3, lk3, jml3);
                  final barGroup4 = makeGroupData(3, pr2, lk2, jml2);
                  final barGroup5 = makeGroupData(4, pr1, lk1, jml1);

                  final items = [
                    barGroup5,
                    barGroup4,
                    barGroup3,
                    barGroup2,
                    barGroup1,
                  ];

                  rawBarGroups = items;

                  showingBarGroups = rawBarGroups;

                  return Container(
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
                                    "Tingkat Kesempatan Kerja (TKK) Kabupaten Cilacap Menurut Jenis Kelamin",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
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
                                        color: Colors.cyan,
                                        child: const Center(
                                          child: Text(
                                            "Jenis Kelamin",
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
                                        height: screenHeight * 0.05,
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
                                        height: screenHeight * 0.05,
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
                                        height: screenHeight * 0.05,
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
                                        height: screenHeight * 0.05,
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
                                        height: screenHeight * 0.05,
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
                                          child: Text(lk1.toString()),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: SizedBox(
                                        height: screenHeight * 0.05,
                                        child: Center(
                                          child: Text(lk2.toString()),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: SizedBox(
                                        height: screenHeight * 0.05,
                                        child: Center(
                                          child: Text(lk3.toString()),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: SizedBox(
                                        height: screenHeight * 0.05,
                                        child: Center(
                                          child: Text(lk4.toString()),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: SizedBox(
                                        height: screenHeight * 0.05,
                                        child: Center(
                                          child: Text(lk5.toString()),
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
                                          child: Text(pr1.toString()),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: SizedBox(
                                        height: screenHeight * 0.05,
                                        child: Center(
                                          child: Text(pr2.toString()),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: SizedBox(
                                        height: screenHeight * 0.05,
                                        child: Center(
                                          child: Text(pr3.toString()),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: SizedBox(
                                        height: screenHeight * 0.05,
                                        child: Center(
                                          child: Text(pr4.toString()),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: SizedBox(
                                        height: screenHeight * 0.05,
                                        child: Center(
                                          child: Text(pr5.toString()),
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
                                        color: Colors.cyan,
                                        padding: const EdgeInsets.only(
                                            top: 10, left: 5, right: 5),
                                        height: screenHeight * 0.05,
                                        child: const Center(
                                          child: Text(
                                            "Jumlah",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        color: Colors.cyan,
                                        height: screenHeight * 0.05,
                                        child: Center(
                                          child: Text(
                                            jml1.toString(),
                                            style:
                                                const TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        color: Colors.cyan,
                                        height: screenHeight * 0.05,
                                        child: Center(
                                          child: Text(
                                            jml2.toString(),
                                            style:
                                                const TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        color: Colors.cyan,
                                        height: screenHeight * 0.05,
                                        child: Center(
                                          child: Text(
                                            jml3.toString(),
                                            style:
                                                const TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        color: Colors.cyan,
                                        height: screenHeight * 0.05,
                                        child: Center(
                                          child: Text(
                                            jml4.toString(),
                                            style:
                                                const TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                      flex: 2,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        color: Colors.cyan,
                                        height: screenHeight * 0.05,
                                        child: Center(
                                          child: Text(
                                            jml5.toString(),
                                            style:
                                                const TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Flexible(
                                    flex: 1,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: const Text("Sumber Data :"),
                                        ),
                                        Container(
                                          alignment: Alignment.centerLeft,
                                          child: const Text(
                                            " - Survey Angkatan Kerja Nasional",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
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
                                        maxY: 150,
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
                                              getTitlesWidget: (double value,
                                                  TitleMeta meta) {
                                                List<String> titles = [
                                                  th5.toString(),
                                                  th4.toString(),
                                                  th3.toString(),
                                                  th2.toString(),
                                                  th1.toString()
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
                                              getTitlesWidget: (double value,
                                                  TitleMeta meta) {
                                                const style = TextStyle(
                                                  color: Color(0xff7589a2),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14,
                                                );
                                                String text;
                                                if (value == 10) {
                                                  text = '10%';
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
                                                  child:
                                                      Text(text, style: style),
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
                  );
                },
              );
            }
            if (snapshot.hasError) {
              return const Center(child: Text("Data Belum Tersedia"));
            } else {
              return const Center(
                  child: CircularProgressIndicator(
                strokeWidth: 1,
              ));
            }
          },
        ));
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
