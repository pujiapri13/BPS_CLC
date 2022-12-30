import 'package:bps_cilacap/restAPI/repository_pdrb.dart';
import 'package:flutter/material.dart';

class TabelPdrbLUMigas extends StatefulWidget {
  const TabelPdrbLUMigas({super.key});

  @override
  State<TabelPdrbLUMigas> createState() => _TabelPdrbLUMigasState();
}

RepositoryPdrb repositorypdrb = RepositoryPdrb();

class _TabelPdrbLUMigasState extends State<TabelPdrbLUMigas> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: FutureBuilder(
        future: repositorypdrb.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isipdrb = snapshot.data as List;
            return ListView.builder(
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

                return Column(
                  children: [
                    Container(
                      color: Colors.cyan,
                      width: screenWidth,
                      height: screenHeight * 0.1,
                      child: Row(
                        children: [
                          const Flexible(
                            flex: 3,
                            fit: FlexFit.tight,
                            child: Text(
                              "Lapangan Usaha",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              th1,
                              textAlign: TextAlign.center,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              th2,
                              textAlign: TextAlign.center,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              th3,
                              textAlign: TextAlign.center,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              th4,
                              textAlign: TextAlign.center,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              th5,
                              textAlign: TextAlign.center,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    // <-- A
                    Container(
                      color: Colors.transparent,
                      width: screenWidth,
                      height: screenHeight * 0.05,
                      child: Row(
                        children: [
                          const Flexible(
                            flex: 3,
                            fit: FlexFit.tight,
                            child: Text(
                              "A",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              a1.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              a2.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              a3.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              a4.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              a5.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // <-- B
                    Container(
                      color: Colors.grey.shade200,
                      width: screenWidth,
                      height: screenHeight * 0.05,
                      child: Row(
                        children: [
                          const Flexible(
                            flex: 3,
                            fit: FlexFit.tight,
                            child: Text(
                              "B",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              b1.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              b2.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              b3.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              b4.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              b5.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // <-- C
                    Container(
                      color: Colors.transparent,
                      width: screenWidth,
                      height: screenHeight * 0.05,
                      child: Row(
                        children: [
                          const Flexible(
                            flex: 3,
                            fit: FlexFit.tight,
                            child: Text(
                              "C",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              c1.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              c2.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              c3.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              c4.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              c5.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // <-- D
                    Container(
                      color: Colors.grey.shade200,
                      width: screenWidth,
                      height: screenHeight * 0.05,
                      child: Row(
                        children: [
                          const Flexible(
                            flex: 3,
                            fit: FlexFit.tight,
                            child: Text(
                              "D",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              d1.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              d2.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              d3.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              d4.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              d5.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // <-- E
                    Container(
                      color: Colors.transparent,
                      width: screenWidth,
                      height: screenHeight * 0.05,
                      child: Row(
                        children: [
                          const Flexible(
                            flex: 3,
                            fit: FlexFit.tight,
                            child: Text(
                              "E",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              e1.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              e2.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              e3.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              e4.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              e5.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // <-- F
                    Container(
                      color: Colors.grey.shade200,
                      width: screenWidth,
                      height: screenHeight * 0.05,
                      child: Row(
                        children: [
                          const Flexible(
                            flex: 3,
                            fit: FlexFit.tight,
                            child: Text(
                              "F",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              f1.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              f2.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              f3.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              f4.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              f5.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // <-- G
                    Container(
                      color: Colors.transparent,
                      width: screenWidth,
                      height: screenHeight * 0.05,
                      child: Row(
                        children: [
                          const Flexible(
                            flex: 3,
                            fit: FlexFit.tight,
                            child: Text(
                              "G",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              g1.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              g2.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              g3.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              g4.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              g5.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // <-- H
                    Container(
                      color: Colors.grey.shade200,
                      width: screenWidth,
                      height: screenHeight * 0.05,
                      child: Row(
                        children: [
                          const Flexible(
                            flex: 3,
                            fit: FlexFit.tight,
                            child: Text(
                              "H",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              h1.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              h2.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              h3.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              h4.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              h5.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // <-- I
                    Container(
                      color: Colors.transparent,
                      width: screenWidth,
                      height: screenHeight * 0.05,
                      child: Row(
                        children: [
                          const Flexible(
                            flex: 3,
                            fit: FlexFit.tight,
                            child: Text(
                              "I",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              i1.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              i2.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              i3.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              i4.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              i5.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // <-- J
                    Container(
                      color: Colors.grey.shade200,
                      width: screenWidth,
                      height: screenHeight * 0.05,
                      child: Row(
                        children: [
                          const Flexible(
                            flex: 3,
                            fit: FlexFit.tight,
                            child: Text(
                              "J",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              j1.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              j2.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              j3.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              j4.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              j5.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // <-- K
                    Container(
                      color: Colors.transparent,
                      width: screenWidth,
                      height: screenHeight * 0.05,
                      child: Row(
                        children: [
                          const Flexible(
                            flex: 3,
                            fit: FlexFit.tight,
                            child: Text(
                              "K",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              k1.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              k2.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              k3.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              k4.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              k5.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // <-- L
                    Container(
                      color: Colors.grey.shade200,
                      width: screenWidth,
                      height: screenHeight * 0.05,
                      child: Row(
                        children: [
                          const Flexible(
                            flex: 3,
                            fit: FlexFit.tight,
                            child: Text(
                              "L",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              l1.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              l2.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              l3.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              l4.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              l5.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // <-- M_N
                    Container(
                      color: Colors.transparent,
                      width: screenWidth,
                      height: screenHeight * 0.05,
                      child: Row(
                        children: [
                          const Flexible(
                            flex: 3,
                            fit: FlexFit.tight,
                            child: Text(
                              "M_N",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              mN1.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              mN2.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              mN3.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              mN4.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              mN5.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // <-- O
                    Container(
                      color: Colors.grey.shade200,
                      width: screenWidth,
                      height: screenHeight * 0.05,
                      child: Row(
                        children: [
                          const Flexible(
                            flex: 3,
                            fit: FlexFit.tight,
                            child: Text(
                              "O",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              o1.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              o2.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              o3.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              o4.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              o5.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // <-- P
                    Container(
                      color: Colors.transparent,
                      width: screenWidth,
                      height: screenHeight * 0.05,
                      child: Row(
                        children: [
                          const Flexible(
                            flex: 3,
                            fit: FlexFit.tight,
                            child: Text(
                              "P",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              p1.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              p2.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              p3.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              p4.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              p5.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // <-- Q
                    Container(
                      color: Colors.grey.shade200,
                      width: screenWidth,
                      height: screenHeight * 0.05,
                      child: Row(
                        children: [
                          const Flexible(
                            flex: 3,
                            fit: FlexFit.tight,
                            child: Text(
                              "Q",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              q1.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              q2.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              q3.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              q4.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              q5.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    // <-- R_S_T_U
                    Container(
                      color: Colors.transparent,
                      width: screenWidth,
                      height: screenHeight * 0.05,
                      child: Row(
                        children: [
                          const Flexible(
                            flex: 3,
                            fit: FlexFit.tight,
                            child: Text(
                              "R_S_T_U",
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              rSTU1.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              rSTU2.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              rSTU3.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              rSTU4.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              rSTU5.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    // <-- Total PDRB
                    Container(
                      color: Colors.cyan,
                      width: screenWidth,
                      height: screenHeight * 0.05,
                      child: Row(
                        children: [
                          const Flexible(
                            flex: 3,
                            fit: FlexFit.tight,
                            child: Text(
                              "Total PDRB",
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              total1.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              total2.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              total3.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              total4.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              total5.toStringAsFixed(2),
                              textAlign: TextAlign.center,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            );
          }
          if (snapshot.hasError) {
            return const Text('error');
          }
          return const Center(
              child: CircularProgressIndicator(
            strokeWidth: 1,
          ));
        },
      ),
    );
  }
}
