// ignore_for_file: camel_case_types, library_private_types_in_public_api
import 'package:bps_cilacap/restAPI/repository_pdrb_adhk_mlu.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class grafikPdrbAdhkMLUMigas extends StatefulWidget {
  const grafikPdrbAdhkMLUMigas({Key? key}) : super(key: key);

  @override
  _grafikPdrbAdhkMLUMigasState createState() => _grafikPdrbAdhkMLUMigasState();
}

class _grafikPdrbAdhkMLUMigasState extends State<grafikPdrbAdhkMLUMigas> {
  RepositoryPdrbAdhkMLU repositorypdrb = RepositoryPdrbAdhkMLU();

  List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color.fromARGB(255, 19, 224, 19)
  ];
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: repositorypdrb.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isipdrb = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              String th1 = isipdrb[index = 4].created_at[0] +
                  isipdrb[index = 4].created_at[1] +
                  isipdrb[index = 4].created_at[2] +
                  isipdrb[index = 4].created_at[3];
              String th2 = isipdrb[index = 3].created_at[0] +
                  isipdrb[index = 3].created_at[1] +
                  isipdrb[index = 3].created_at[2] +
                  isipdrb[index = 3].created_at[3];
              String th3 = isipdrb[index = 2].created_at[0] +
                  isipdrb[index = 2].created_at[1] +
                  isipdrb[index = 2].created_at[2] +
                  isipdrb[index = 2].created_at[3];
              String th4 = isipdrb[index = 1].created_at[0] +
                  isipdrb[index = 1].created_at[1] +
                  isipdrb[index = 1].created_at[2] +
                  isipdrb[index = 1].created_at[3];
              String th5 = isipdrb[index = 0].created_at[0] +
                  isipdrb[index = 0].created_at[1] +
                  isipdrb[index = 0].created_at[2] +
                  isipdrb[index = 0].created_at[3];

              double a1 = double.parse(isipdrb[index = 4].a);
              double a2 = double.parse(isipdrb[index = 3].a);
              double a3 = double.parse(isipdrb[index = 2].a);
              double a4 = double.parse(isipdrb[index = 1].a);
              double a5 = double.parse(isipdrb[index = 0].a);

              double b1 = double.parse(isipdrb[index = 4].b);
              double b2 = double.parse(isipdrb[index = 3].b);
              double b3 = double.parse(isipdrb[index = 2].b);
              double b4 = double.parse(isipdrb[index = 1].b);
              double b5 = double.parse(isipdrb[index = 0].b);

              double c1 = double.parse(isipdrb[index = 4].c);
              double c2 = double.parse(isipdrb[index = 3].c);
              double c3 = double.parse(isipdrb[index = 2].c);
              double c4 = double.parse(isipdrb[index = 1].c);
              double c5 = double.parse(isipdrb[index = 0].c);

              double d1 = double.parse(isipdrb[index = 4].d);
              double d2 = double.parse(isipdrb[index = 3].d);
              double d3 = double.parse(isipdrb[index = 2].d);
              double d4 = double.parse(isipdrb[index = 1].d);
              double d5 = double.parse(isipdrb[index = 0].d);

              double e1 = double.parse(isipdrb[index = 4].e);
              double e2 = double.parse(isipdrb[index = 3].e);
              double e3 = double.parse(isipdrb[index = 2].e);
              double e4 = double.parse(isipdrb[index = 1].e);
              double e5 = double.parse(isipdrb[index = 0].e);

              double f1 = double.parse(isipdrb[index = 4].f);
              double f2 = double.parse(isipdrb[index = 3].f);
              double f3 = double.parse(isipdrb[index = 2].f);
              double f4 = double.parse(isipdrb[index = 1].f);
              double f5 = double.parse(isipdrb[index = 0].f);

              double g1 = double.parse(isipdrb[index = 4].g);
              double g2 = double.parse(isipdrb[index = 3].g);
              double g3 = double.parse(isipdrb[index = 2].g);
              double g4 = double.parse(isipdrb[index = 1].g);
              double g5 = double.parse(isipdrb[index = 0].g);

              double h1 = double.parse(isipdrb[index = 4].h);
              double h2 = double.parse(isipdrb[index = 3].h);
              double h3 = double.parse(isipdrb[index = 2].h);
              double h4 = double.parse(isipdrb[index = 1].h);
              double h5 = double.parse(isipdrb[index = 0].h);

              double i1 = double.parse(isipdrb[index = 4].i);
              double i2 = double.parse(isipdrb[index = 3].i);
              double i3 = double.parse(isipdrb[index = 2].i);
              double i4 = double.parse(isipdrb[index = 1].i);
              double i5 = double.parse(isipdrb[index = 0].i);

              double j1 = double.parse(isipdrb[index = 4].j);
              double j2 = double.parse(isipdrb[index = 3].j);
              double j3 = double.parse(isipdrb[index = 2].j);
              double j4 = double.parse(isipdrb[index = 1].j);
              double j5 = double.parse(isipdrb[index = 0].j);

              double k1 = double.parse(isipdrb[index = 4].k);
              double k2 = double.parse(isipdrb[index = 3].k);
              double k3 = double.parse(isipdrb[index = 2].k);
              double k4 = double.parse(isipdrb[index = 1].k);
              double k5 = double.parse(isipdrb[index = 0].k);

              double l1 = double.parse(isipdrb[index = 4].l);
              double l2 = double.parse(isipdrb[index = 3].l);
              double l3 = double.parse(isipdrb[index = 2].l);
              double l4 = double.parse(isipdrb[index = 1].l);
              double l5 = double.parse(isipdrb[index = 0].l);

              double mN1 = double.parse(isipdrb[index = 4].m_n);
              double mN2 = double.parse(isipdrb[index = 3].m_n);
              double mN3 = double.parse(isipdrb[index = 2].m_n);
              double mN4 = double.parse(isipdrb[index = 1].m_n);
              double mN5 = double.parse(isipdrb[index = 0].m_n);

              double o1 = double.parse(isipdrb[index = 4].o);
              double o2 = double.parse(isipdrb[index = 3].o);
              double o3 = double.parse(isipdrb[index = 2].o);
              double o4 = double.parse(isipdrb[index = 1].o);
              double o5 = double.parse(isipdrb[index = 0].o);

              double p1 = double.parse(isipdrb[index = 4].p);
              double p2 = double.parse(isipdrb[index = 3].p);
              double p3 = double.parse(isipdrb[index = 2].p);
              double p4 = double.parse(isipdrb[index = 1].p);
              double p5 = double.parse(isipdrb[index = 0].p);

              double q1 = double.parse(isipdrb[index = 4].q);
              double q2 = double.parse(isipdrb[index = 3].q);
              double q3 = double.parse(isipdrb[index = 2].q);
              double q4 = double.parse(isipdrb[index = 1].q);
              double q5 = double.parse(isipdrb[index = 0].q);

              double rSTU1 = double.parse(isipdrb[index = 4].r_s_t_u);
              double rSTU2 = double.parse(isipdrb[index = 3].r_s_t_u);
              double rSTU3 = double.parse(isipdrb[index = 2].r_s_t_u);
              double rSTU4 = double.parse(isipdrb[index = 1].r_s_t_u);
              double rSTU5 = double.parse(isipdrb[index = 0].r_s_t_u);

              double total1 = double.parse(isipdrb[index = 4].total);
              double total2 = double.parse(isipdrb[index = 3].total);
              double total3 = double.parse(isipdrb[index = 2].total);
              double total4 = double.parse(isipdrb[index = 1].total);
              double total5 = double.parse(isipdrb[index = 0].total);
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
                                    text = Text(th1, style: style);
                                    break;
                                  case 3:
                                    text = Text(th2, style: style);
                                    break;
                                  case 5:
                                    text = Text(th3, style: style);
                                    break;
                                  case 7:
                                    text = Text(th4, style: style);
                                    break;
                                  case 9:
                                    text = Text(th5, style: style);
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
                            FlSpot(1,
                                double.parse((total1 / 20).toStringAsFixed(2))),
                            FlSpot(3,
                                double.parse((total2 / 20).toStringAsFixed(2))),
                            FlSpot(5,
                                double.parse((total3 / 20).toStringAsFixed(2))),
                            FlSpot(7,
                                double.parse((total4 / 20).toStringAsFixed(2))),
                            FlSpot(9,
                                double.parse((total5 / 20).toStringAsFixed(2))),
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
        return const Center(
            child: CircularProgressIndicator(
          strokeWidth: 1,
        ));
      },
    );
  }
}
