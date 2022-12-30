import 'package:bps_cilacap/restAPI/repository_pdrb.dart';
import 'package:flutter/material.dart';

class TabelPdrbLUTanpaMigas extends StatefulWidget {
  const TabelPdrbLUTanpaMigas({super.key});

  @override
  State<TabelPdrbLUTanpaMigas> createState() => _TabelPdrbLUTanpaMigasState();
}

RepositoryPdrb repositorypdrb = RepositoryPdrb();

class _TabelPdrbLUTanpaMigasState extends State<TabelPdrbLUTanpaMigas> {
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
                              isipdrb[index = 9].created_at[0] +
                                  isipdrb[index = 9].created_at[1] +
                                  isipdrb[index = 9].created_at[2] +
                                  isipdrb[index = 9].created_at[3],
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 8].created_at[0] +
                                  isipdrb[index = 8].created_at[1] +
                                  isipdrb[index = 8].created_at[2] +
                                  isipdrb[index = 8].created_at[3],
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 7].created_at[0] +
                                  isipdrb[index = 7].created_at[1] +
                                  isipdrb[index = 7].created_at[2] +
                                  isipdrb[index = 7].created_at[3],
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 6].created_at[0] +
                                  isipdrb[index = 6].created_at[1] +
                                  isipdrb[index = 6].created_at[2] +
                                  isipdrb[index = 6].created_at[3],
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 5].created_at[0] +
                                  isipdrb[index = 5].created_at[1] +
                                  isipdrb[index = 5].created_at[2] +
                                  isipdrb[index = 5].created_at[3],
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
                              isipdrb[index = 9].a.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 8].a.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 7].a.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 6].a.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 5].a.toString(),
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
                              isipdrb[index = 9].b.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 8].b.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 7].b.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 6].b.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 5].b.toString(),
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
                              isipdrb[index = 9].c.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 8].c.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 7].c.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 6].c.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 5].c.toString(),
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
                              isipdrb[index = 9].d.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 8].d.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 7].d.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 6].d.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 5].d.toString(),
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
                              isipdrb[index = 9].e.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 8].e.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 7].e.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 6].e.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 5].e.toString(),
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
                              isipdrb[index = 9].f.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 8].f.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 7].f.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 6].f.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 5].f.toString(),
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
                              isipdrb[index = 9].g.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 8].g.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 7].g.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 6].g.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 5].g.toString(),
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
                              isipdrb[index = 9].h.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 8].h.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 7].h.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 6].h.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 5].h.toString(),
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
                              isipdrb[index = 9].i.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 8].i.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 7].i.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 6].i.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 5].i.toString(),
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
                              isipdrb[index = 9].j.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 8].j.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 7].j.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 6].j.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 5].j.toString(),
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
                              isipdrb[index = 9].k.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 8].k.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 7].k.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 6].k.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 5].k.toString(),
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
                              isipdrb[index = 9].l.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 8].l.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 7].l.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 6].l.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 5].l.toString(),
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
                              isipdrb[index = 9].m_n.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 8].m_n.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 7].m_n.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 6].m_n.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 5].m_n.toString(),
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
                              isipdrb[index = 9].o.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 8].o.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 7].o.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 6].o.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 5].o.toString(),
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
                              isipdrb[index = 9].p.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 8].p.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 7].p.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 6].p.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 5].p.toString(),
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
                              isipdrb[index = 9].q.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 8].q.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 7].q.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 6].q.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 5].q.toString(),
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
                              isipdrb[index = 9].r_s_t_u.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 8].r_s_t_u.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 7].r_s_t_u.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 6].r_s_t_u.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 5].r_s_t_u.toString(),
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
                              isipdrb[index = 9].total.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 8].total.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 7].total.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 6].total.toString(),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Flexible(
                            flex: 2,
                            fit: FlexFit.tight,
                            child: Text(
                              isipdrb[index = 5].total.toString(),
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
          return const Center(
              child: CircularProgressIndicator(
            strokeWidth: 1,
          ));
        },
      ),
    );
  }
}
