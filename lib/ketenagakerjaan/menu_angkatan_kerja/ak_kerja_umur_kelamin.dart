import 'package:bps_cilacap/ketenagakerjaan/isi_ak_umur/isi_ak_umur_A.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_ak_umur/isi_ak_umur_B.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_ak_umur/isi_ak_umur_C.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_ak_umur/isi_ak_umur_d.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_ak_umur/isi_ak_umur_e.dart';
import 'package:bps_cilacap/restAPI/repository_penduduk_umur.dart';
import 'package:flutter/material.dart';
import 'package:bps_cilacap/Icons/back_icons_icons.dart';

class AKKerjaUmurKelamin extends StatefulWidget {
  const AKKerjaUmurKelamin({super.key});

  @override
  State<AKKerjaUmurKelamin> createState() => _AKKerjaUmurKelaminState();
}

class _AKKerjaUmurKelaminState extends State<AKKerjaUmurKelamin> {
  RepositoryPendudukUmur repositoryPendudukUmur = RepositoryPendudukUmur();
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Penduduk Bekerja (Umur)',
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
        child: Column(
          children: [
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Column(
                children: [
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
                            "Persentase Penduduk yang Bekerja menurut Kelompok Umur dan Jenis Kelamin Kabupaten Cilacap",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 5,
                    child: Container(
                      height: 100,
                      color: Colors.transparent,
                      child: FutureBuilder(
                        future: repositoryPendudukUmur.getData(),
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            List isitenagakerja = snapshot.data as List;
                            return PageView.builder(
                              itemCount: 1,
                              itemBuilder: (context, index) {
                                String th1 = isitenagakerja[index = 4]
                                        .created_at[0] +
                                    isitenagakerja[index = 4].created_at[1] +
                                    isitenagakerja[index = 4].created_at[2] +
                                    isitenagakerja[index = 4].created_at[3];
                                String th2 = isitenagakerja[index = 3]
                                        .created_at[0] +
                                    isitenagakerja[index = 3].created_at[1] +
                                    isitenagakerja[index = 3].created_at[2] +
                                    isitenagakerja[index = 3].created_at[3];
                                String th3 = isitenagakerja[index = 2]
                                        .created_at[0] +
                                    isitenagakerja[index = 2].created_at[1] +
                                    isitenagakerja[index = 2].created_at[2] +
                                    isitenagakerja[index = 2].created_at[3];
                                String th4 = isitenagakerja[index = 1]
                                        .created_at[0] +
                                    isitenagakerja[index = 1].created_at[1] +
                                    isitenagakerja[index = 1].created_at[2] +
                                    isitenagakerja[index = 1].created_at[3];
                                String th5 = isitenagakerja[index = 0]
                                        .created_at[0] +
                                    isitenagakerja[index = 0].created_at[1] +
                                    isitenagakerja[index = 0].created_at[2] +
                                    isitenagakerja[index = 0].created_at[3];
                                return DefaultTabController(
                                  length: 5,
                                  child: Scaffold(
                                    appBar: AppBar(
                                      backgroundColor: Colors.black,
                                      leading: const Text(
                                        " ",
                                        style: TextStyle(
                                            color: Colors.transparent),
                                      ),
                                      toolbarHeight: screenHeight * 0.01,
                                      bottom: TabBar(
                                        indicatorColor: Colors.white,
                                        tabs: [
                                          Tab(
                                            text: th1,
                                          ),
                                          Tab(
                                            text: th2,
                                          ),
                                          Tab(
                                            text: th3,
                                          ),
                                          Tab(
                                            text: th4,
                                          ),
                                          Tab(
                                            text: th5,
                                          ),
                                        ],
                                      ),
                                    ),
                                    body: const TabBarView(children: [
                                      IsiAkUmurA(),
                                      IsiAkUmurB(),
                                      IsiAkUmurC(),
                                      IsiAkUmurD(),
                                      IsiAkUmurE(),
                                    ]),
                                  ),
                                );
                              },
                            );
                          }
                          if (snapshot.hasError) {
                            return const Text('error');
                          } else {
                            return const Center(
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                              ),
                            );
                          }
                        },
                      ),
                      //     child: DefaultTabController(
                      //       length: 5,
                      //       child: Scaffold(
                      //         appBar: AppBar(
                      //           backgroundColor: Colors.black,
                      //           leading: const Text(
                      //             " ",
                      //             style: TextStyle(color: Colors.transparent),
                      //           ),
                      //           toolbarHeight: screenHeight * 0.01,
                      //           bottom: const TabBar(
                      //             indicatorColor: Colors.white,
                      //             tabs: [
                      //               Tab(text: "2022"),
                      //               Tab(
                      //                 text: "2021",
                      //               ),
                      //               Tab(
                      //                 text: "2020",
                      //               ),
                      //               Tab(
                      //                 text: "2019",
                      //               ),
                      //               Tab(
                      //                 text: "2018",
                      //               ),
                      //             ],
                      //           ),
                      //         ),
                      //         body: const TabBarView(children: [
                      //           IsiAkUmurA(),
                      //           IsiAkUmurB(),
                      //           IsiAkUmurC(),
                      //           IsiAkUmurD(),
                      //           IsiAkUmurE(),
                      //         ]),
                      //       ),
                      //     ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
