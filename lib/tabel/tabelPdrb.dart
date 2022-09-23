// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:bps_cilacap/repository_pdrb.dart';

class tabelPdrb extends StatefulWidget {
  const tabelPdrb({super.key});

  @override
  State<tabelPdrb> createState() => _tabelPdrbState();
}

class _tabelPdrbState extends State<tabelPdrb> {
  RepositoryPdrb repositorypdrb = RepositoryPdrb();

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
            List isiPdrb = snapshot.data as List;
            return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Container(
                        color: Colors.grey,
                        width: screenWidth,
                        height: screenHeight * 0.06,
                        child: Row(
                          children: const [
                            Flexible(
                              flex: 3,
                              fit: FlexFit.tight,
                              child: Text(
                                "IPM & Komponen",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                "2017",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                "2018",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                "2019",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                "2020",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                "2021",
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Colors.transparent,
                        width: screenWidth,
                        height: screenHeight * 0.04,
                        child: Row(
                          children: [
                            const Flexible(
                              flex: 3,
                              fit: FlexFit.tight,
                              child: Text(
                                "UHH",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiPdrb[index = 0].a.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiPdrb[index = 0].b.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiPdrb[index = 0].c.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiPdrb[index = 0].d.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiPdrb[index = 0].e.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      Container(
                        color: Colors.transparent,
                        width: screenWidth,
                        height: screenHeight * 0.04,
                        child: Row(
                          children: [
                            const Flexible(
                              flex: 3,
                              fit: FlexFit.tight,
                              child: Text(
                                "RLS",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiPdrb[index = 0].f.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiPdrb[index = 0].g.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiPdrb[index = 0].h.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiPdrb[index = 0].i.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiPdrb[index = 0].j.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      Container(
                        color: Colors.transparent,
                        width: screenWidth,
                        height: screenHeight * 0.04,
                        child: Row(
                          children: [
                            const Flexible(
                              flex: 3,
                              fit: FlexFit.tight,
                              child: Text(
                                "HLS",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiPdrb[index = 0].k.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiPdrb[index = 0].l.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiPdrb[index = 0].m_n.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiPdrb[index = 0].o.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiPdrb[index = 0].p.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(),
                      Container(
                        color: Colors.transparent,
                        width: screenWidth,
                        height: screenHeight * 0.04,
                        child: Row(
                          children: [
                            const Flexible(
                              flex: 3,
                              fit: FlexFit.tight,
                              child: Text(
                                "PPP",
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiPdrb[index = 0].q.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiPdrb[index = 0].r_s_t_u.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiPdrb[index = 0].a.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiPdrb[index = 0].b.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiPdrb[index = 0].c.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }
          if (snapshot.hasError) {
            return const Text('error');
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
