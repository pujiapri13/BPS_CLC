
import 'package:bps_cilacap/restAPI/repository_distribusi_pdrb.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class GrafikDistPdrbMigas extends StatefulWidget {
  const GrafikDistPdrbMigas({Key? key}) : super(key: key);

  @override
  _GrafikDistPdrbMigasState createState() => _GrafikDistPdrbMigasState();
}

class _GrafikDistPdrbMigasState extends State<GrafikDistPdrbMigas> {
  RepositoryDistPdrb repositorydistpdrb = RepositoryDistPdrb();

  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    Color.fromARGB(255, 19, 224, 19)
  ];
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: repositorydistpdrb.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipdrb = snapshot.data as List;
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
                                  case 1:
                                    text = Text(
                                        isipdrb[index = 4].tanggal[0] +
                                            isipdrb[index = 4].tanggal[1] +
                                            isipdrb[index = 4].tanggal[2] +
                                            isipdrb[index = 4].tanggal[3],
                                        style: style);
                                    break;
                                  case 3:
                                    text = Text(
                                        isipdrb[index = 3].tanggal[0] +
                                            isipdrb[index = 3].tanggal[1] +
                                            isipdrb[index = 3].tanggal[2] +
                                            isipdrb[index = 3].tanggal[3],
                                        style: style);
                                    break;
                                  case 5:
                                    text = Text(
                                        isipdrb[index = 2].tanggal[0] +
                                            isipdrb[index = 2].tanggal[1] +
                                            isipdrb[index = 2].tanggal[2] +
                                            isipdrb[index = 2].tanggal[3],
                                        style: style);
                                    break;
                                  case 7:
                                    text = Text(
                                        isipdrb[index = 1].tanggal[0] +
                                            isipdrb[index = 1].tanggal[1] +
                                            isipdrb[index = 1].tanggal[2] +
                                            isipdrb[index = 1].tanggal[3],
                                        style: style);
                                    break;
                                  case 9:
                                    text = Text(
                                        isipdrb[index = 0].tanggal[0] +
                                            isipdrb[index = 0].tanggal[1] +
                                            isipdrb[index = 0].tanggal[2] +
                                            isipdrb[index = 0].tanggal[3],
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
                                case 10:
                                  text = '100';
                                  break;
                                case 7:
                                  text = '70';
                                  break;
                                case 4:
                                  text = '40';
                                  break;
                                case 0:
                                  text = '0';
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
                      maxX: 10,
                      minY: 0,
                      maxY: 10,
                      lineBarsData: [
                        LineChartBarData(
                          spots: [
                            FlSpot(1, isipdrb[index = 4].total_pdrb / 20),
                            FlSpot(3, isipdrb[index = 3].total_pdrb / 20),
                            FlSpot(5, isipdrb[index = 2].total_pdrb / 20),
                            FlSpot(7, isipdrb[index = 1].total_pdrb / 20),
                            FlSpot(9, isipdrb[index = 0].total_pdrb / 20),
                          ],
                          isCurved: false,
                          gradient: LinearGradient(
                            colors: gradientColors,
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                          barWidth: 3,
                          isStrokeCapRound: true,
                          dotData: FlDotData(
                            show: true,
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
