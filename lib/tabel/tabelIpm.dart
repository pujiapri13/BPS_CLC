// ignore_for_file: file_names

import 'package:bps_cilacap/restAPI/repository_ipm.dart';
import 'package:flutter/material.dart';

class tabelIpm extends StatefulWidget {
  const tabelIpm({super.key});

  @override
  State<tabelIpm> createState() => _tabelIpmState();
}

class _tabelIpmState extends State<tabelIpm> {
  RepositoryIpm repositoryipm = RepositoryIpm();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: FutureBuilder(
        future: repositoryipm.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List isiIpm = snapshot.data as List;
            return PageView.builder(
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
                          children: [
                            const Flexible(
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
                                isiIpm[index = 4].tanggal[0] +
                                    isiIpm[index = 4].tanggal[1] +
                                    isiIpm[index = 4].tanggal[2] +
                                    isiIpm[index = 4].tanggal[3],
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiIpm[index = 3].tanggal[0] +
                                    isiIpm[index = 3].tanggal[1] +
                                    isiIpm[index = 3].tanggal[2] +
                                    isiIpm[index = 3].tanggal[3],
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiIpm[index = 2].tanggal[0] +
                                    isiIpm[index = 2].tanggal[1] +
                                    isiIpm[index = 2].tanggal[2] +
                                    isiIpm[index = 2].tanggal[3],
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiIpm[index = 1].tanggal[0] +
                                    isiIpm[index = 1].tanggal[1] +
                                    isiIpm[index = 1].tanggal[2] +
                                    isiIpm[index = 1].tanggal[3],
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiIpm[index = 0].tanggal[0] +
                                    isiIpm[index = 0].tanggal[1] +
                                    isiIpm[index = 0].tanggal[2] +
                                    isiIpm[index = 0].tanggal[3],
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
                                isiIpm[index = 4].uhh.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiIpm[index = 3].uhh.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiIpm[index = 2].uhh.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiIpm[index = 1].uhh.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiIpm[index = 0].uhh.toString(),
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
                                isiIpm[index = 4].rls.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiIpm[index = 3].rls.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiIpm[index = 2].rls.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiIpm[index = 1].rls.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiIpm[index = 0].rls.toString(),
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
                                isiIpm[index = 4].hls.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiIpm[index = 3].hls.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiIpm[index = 2].hls.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiIpm[index = 1].hls.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiIpm[index = 0].hls.toString(),
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
                                isiIpm[index = 4].ppp.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiIpm[index = 3].ppp.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiIpm[index = 2].ppp.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiIpm[index = 1].ppp.toString(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Text(
                                isiIpm[index = 0].ppp.toString(),
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
// ignore_for_file: camel_case_types
