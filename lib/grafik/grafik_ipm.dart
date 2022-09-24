// ignore_for_file: camel_case_types, library_private_types_in_public_api

import 'package:bps_cilacap/carousel/carousel_3.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class grafikIpm extends StatefulWidget {
  const grafikIpm({Key? key}) : super(key: key);

  @override
  _grafikIpmState createState() => _grafikIpmState();
}

class _grafikIpmState extends State<grafikIpm> {
  List<Color> gradientColorsUhh = [
    const Color(0xff23b6e6),
    const Color.fromARGB(255, 30, 31, 30)
  ];
  List<Color> gradientColorsRls = [
    const Color.fromARGB(255, 35, 87, 230),
    const Color.fromARGB(255, 211, 2, 148),
  ];
  List<Color> gradientColorsHls = [
    const Color.fromARGB(255, 11, 211, 28),
    const Color.fromARGB(255, 43, 10, 133),
  ];
  List<Color> gradientColorsPpp = [
    const Color.fromARGB(255, 155, 230, 35),
    const Color.fromARGB(255, 211, 2, 2),
  ];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: repositoryipm.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isiipm = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(2),
                  ),
                  color: Color(
                    0xff232d37,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 18.0, left: 12.0, top: 24, bottom: 12),
                  child: LineChart(
                    LineChartData(
                      gridData: FlGridData(
                        show: true,
                        drawVerticalLine: true,
                        horizontalInterval: 1,
                        verticalInterval: 1,
                        getDrawingHorizontalLine: (value) {
                          return FlLine(
                            color: const Color(0xff37434d),
                            strokeWidth: 1,
                          );
                        },
                        getDrawingVerticalLine: (value) {
                          return FlLine(
                            color: const Color(0xff37434d),
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
                              getTitlesWidget: (double value, TitleMeta meta) {
                                const style = TextStyle(
                                  color: Color(0xff68737d),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                );
                                Widget text;
                                switch (value.toInt()) {
                                  case 0:
                                    text = Text(
                                        isiipm[index = 4].tanggal[0] +
                                            isiipm[index = 4].tanggal[1] +
                                            isiipm[index = 4].tanggal[2] +
                                            isiipm[index = 4].tanggal[3],
                                        style: style);
                                    break;
                                  case 2:
                                    text = Text(
                                        isiipm[index = 3].tanggal[0] +
                                            isiipm[index = 3].tanggal[1] +
                                            isiipm[index = 3].tanggal[2] +
                                            isiipm[index = 3].tanggal[3],
                                        style: style);
                                    break;
                                  case 4:
                                    text = Text(
                                        isiipm[index = 2].tanggal[0] +
                                            isiipm[index = 2].tanggal[1] +
                                            isiipm[index = 2].tanggal[2] +
                                            isiipm[index = 2].tanggal[3],
                                        style: style);
                                    break;
                                  case 6:
                                    text = Text(
                                        isiipm[index = 1].tanggal[0] +
                                            isiipm[index = 1].tanggal[1] +
                                            isiipm[index = 1].tanggal[2] +
                                            isiipm[index = 1].tanggal[3],
                                        style: style);
                                    break;
                                  case 8:
                                    text = Text(
                                        isiipm[index = 0].tanggal[0] +
                                            isiipm[index = 0].tanggal[1] +
                                            isiipm[index = 0].tanggal[2] +
                                            isiipm[index = 0].tanggal[3],
                                        style: style);
                                    break;
                                  default:
                                    text = const Text('', style: style);
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
                            getTitlesWidget: (double value, TitleMeta meta) {
                              const style = TextStyle(
                                color: Color(0xff67727d),
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              );
                              String text;
                              switch (value.toInt()) {
                                case -6:
                                  text = '-6';
                                  break;
                                case -4:
                                  text = '-4';
                                  break;
                                case -2:
                                  text = '-2';
                                  break;
                                case 0:
                                  text = '0';
                                  break;
                                case 2:
                                  text = '2';
                                  break;
                                case 4:
                                  text = '4';
                                  break;
                                case 6:
                                  text = '6';
                                  break;
                                case 8:
                                  text = '8';
                                  break;
                                case 10:
                                  text = '10';
                                  break;
                                default:
                                  return Container();
                              }

                              return Text(text,
                                  style: style, textAlign: TextAlign.left);
                            },
                            reservedSize: 42,
                          ),
                        ),
                      ),
                      borderData: FlBorderData(
                          show: true,
                          border: Border.all(
                              color: const Color(0xff37434d), width: 1)),
                      minX: 0,
                      maxX: 8,
                      minY: -6,
                      maxY: 10,
                      lineBarsData: [
                        LineChartBarData(
                          spots: [
                            FlSpot(0, isiipm[index = 4].uhh / 10),
                            FlSpot(2, isiipm[index = 3].uhh / 10),
                            FlSpot(4, isiipm[index = 2].uhh / 10),
                            FlSpot(6, isiipm[index = 1].uhh / 10),
                            FlSpot(8, isiipm[index = 0].uhh / 10),
                          ],
                          isCurved: true,
                          gradient: LinearGradient(
                            colors: gradientColorsUhh,
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          barWidth: 3,
                          isStrokeCapRound: true,
                          dotData: FlDotData(
                            show: false,
                          ),
                        ),
                        LineChartBarData(
                          spots: [
                            FlSpot(0, isiipm[index = 4].rls / 10),
                            FlSpot(2, isiipm[index = 3].rls / 10),
                            FlSpot(4, isiipm[index = 2].rls / 10),
                            FlSpot(6, isiipm[index = 1].rls / 10),
                            FlSpot(8, isiipm[index = 0].rls / 10),
                          ],
                          isCurved: true,
                          gradient: LinearGradient(
                            colors: gradientColorsRls,
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          barWidth: 3,
                          isStrokeCapRound: true,
                          dotData: FlDotData(
                            show: false,
                          ),
                        ),
                        LineChartBarData(
                          spots: [
                            FlSpot(0, isiipm[index = 4].hls / 10),
                            FlSpot(2, isiipm[index = 3].hls / 10),
                            FlSpot(4, isiipm[index = 2].hls / 10),
                            FlSpot(6, isiipm[index = 1].hls / 10),
                            FlSpot(8, isiipm[index = 0].hls / 10),
                          ],
                          isCurved: true,
                          gradient: LinearGradient(
                            colors: gradientColorsHls,
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          barWidth: 3,
                          isStrokeCapRound: true,
                          dotData: FlDotData(
                            show: false,
                          ),
                        ),
                        LineChartBarData(
                          spots: [
                            FlSpot(0, isiipm[index = 4].ppp / 10),
                            FlSpot(2, isiipm[index = 3].ppp / 10),
                            FlSpot(4, isiipm[index = 2].ppp / 10),
                            FlSpot(6, isiipm[index = 1].ppp / 10),
                            FlSpot(8, isiipm[index = 0].ppp / 10),
                          ],
                          isCurved: true,
                          gradient: LinearGradient(
                            colors: gradientColorsPpp,
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          barWidth: 3,
                          isStrokeCapRound: true,
                          dotData: FlDotData(
                            show: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        }
        if (snapshot.hasError) {
          return const Text("Database Error");
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
