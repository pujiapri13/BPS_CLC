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
                return Column(
                  children: [
                    Container(
                      color: Colors.blue[200],
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
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 4].tanggal[0] +
                                  isipdrb[index = 4].tanggal[1] +
                                  isipdrb[index = 4].tanggal[2] +
                                  isipdrb[index = 4].tanggal[3],
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 3].tanggal[0] +
                                  isipdrb[index = 3].tanggal[1] +
                                  isipdrb[index = 3].tanggal[2] +
                                  isipdrb[index = 3].tanggal[3],
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 2].tanggal[0] +
                                  isipdrb[index = 2].tanggal[1] +
                                  isipdrb[index = 2].tanggal[2] +
                                  isipdrb[index = 2].tanggal[3],
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 1].tanggal[0] +
                                  isipdrb[index = 1].tanggal[1] +
                                  isipdrb[index = 1].tanggal[2] +
                                  isipdrb[index = 1].tanggal[3],
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 0].tanggal[0] +
                                  isipdrb[index = 0].tanggal[1] +
                                  isipdrb[index = 0].tanggal[2] +
                                  isipdrb[index = 0].tanggal[3],
                              textAlign: TextAlign.center,
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
                              isipdrb[index = 4].a.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 3].a.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 2].a.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 1].a.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 0].a.toString(),
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
                              isipdrb[index = 4].b.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 3].b.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 2].b.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 1].b.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 0].b.toString(),
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
                              isipdrb[index = 4].c.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 3].c.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 2].c.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 1].c.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 0].c.toString(),
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
                              isipdrb[index = 4].d.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 3].d.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 2].d.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 1].d.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 0].d.toString(),
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
                              isipdrb[index = 4].e.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 3].e.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 2].e.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 1].e.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 0].e.toString(),
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
                              isipdrb[index = 4].f.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 3].f.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 2].f.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 1].f.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 0].f.toString(),
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
                              isipdrb[index = 4].g.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 3].g.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 2].g.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 1].g.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 0].g.toString(),
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
                              isipdrb[index = 4].h.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 3].h.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 2].h.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 1].h.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 0].h.toString(),
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
                              isipdrb[index = 4].i.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 3].i.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 2].i.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 1].i.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 0].i.toString(),
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
                              isipdrb[index = 4].j.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 3].j.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 2].j.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 1].j.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 0].j.toString(),
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
                              isipdrb[index = 4].k.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 3].k.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 2].k.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 1].k.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 0].k.toString(),
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
                              isipdrb[index = 4].l.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 3].l.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 2].l.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 1].l.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 0].l.toString(),
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
                              isipdrb[index = 4].m_n.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 3].m_n.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 2].m_n.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 1].m_n.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 0].m_n.toString(),
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
                              isipdrb[index = 4].o.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 3].o.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 2].o.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 1].o.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 0].o.toString(),
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
                              isipdrb[index = 4].p.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 3].p.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 2].p.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 1].p.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 0].p.toString(),
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
                              isipdrb[index = 4].q.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 3].q.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 2].q.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 1].q.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 0].q.toString(),
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
                              isipdrb[index = 4].r_s_t_u.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 3].r_s_t_u.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 2].r_s_t_u.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 1].r_s_t_u.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 0].r_s_t_u.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(),
                    // <-- Total PDRB
                    Container(
                      color: Colors.grey.shade500,
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
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 4].total_pdrb.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 3].total_pdrb.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 2].total_pdrb.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 1].total_pdrb.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 0].total_pdrb.toString(),
                              textAlign: TextAlign.center,
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
          return const Center(child: CircularProgressIndicator(
            strokeWidth: 1,));
        },
      ),
    );
  }
}
