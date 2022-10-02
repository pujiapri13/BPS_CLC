import 'package:bps_cilacap/ketenagakerjaan/isi_body_puk/isi_puk_a.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_body_puk/isi_puk_b.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_body_puk/isi_puk_c.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_body_puk/isi_puk_d.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_body_puk/isi_puk_e.dart';
import 'package:bps_cilacap/restAPI/repository_ipm.dart';
import 'package:flutter/material.dart';

class BodyPuk extends StatefulWidget {
  const BodyPuk({super.key});

  @override
  State<BodyPuk> createState() => _BodyPukState();
}

class _BodyPukState extends State<BodyPuk> {
  RepositoryIpm repositorytenagakerja = RepositoryIpm();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return FutureBuilder(
      future: repositorytenagakerja.getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List isitenagakerja = snapshot.data as List;
          return PageView.builder(
            itemCount: 1,
            itemBuilder: (context, index) {
              return DefaultTabController(
                length: 5,
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.black,
                    leading: const Text(
                      " ",
                      style: TextStyle(color: Colors.transparent),
                    ),
                    toolbarHeight: screenHeight * 0.01,
                    bottom: TabBar(
                      indicatorColor: Colors.white,
                      tabs: [
                        Tab(
                          text: isitenagakerja[index = 4].tanggal[0] +
                              isitenagakerja[index = 4].tanggal[1] +
                              isitenagakerja[index = 4].tanggal[2] +
                              isitenagakerja[index = 4].tanggal[3],
                        ),
                        Tab(
                          text: isitenagakerja[index = 3].tanggal[0] +
                              isitenagakerja[index = 3].tanggal[1] +
                              isitenagakerja[index = 3].tanggal[2] +
                              isitenagakerja[index = 3].tanggal[3],
                        ),
                        Tab(
                          text: isitenagakerja[index = 2].tanggal[0] +
                              isitenagakerja[index = 2].tanggal[1] +
                              isitenagakerja[index = 2].tanggal[2] +
                              isitenagakerja[index = 2].tanggal[3],
                        ),
                        Tab(
                          text: isitenagakerja[index = 1].tanggal[0] +
                              isitenagakerja[index = 1].tanggal[1] +
                              isitenagakerja[index = 1].tanggal[2] +
                              isitenagakerja[index = 1].tanggal[3],
                        ),
                        Tab(
                          text: isitenagakerja[index = 0].tanggal[0] +
                              isitenagakerja[index = 0].tanggal[1] +
                              isitenagakerja[index = 0].tanggal[2] +
                              isitenagakerja[index = 0].tanggal[3],
                        ),
                      ],
                    ),
                  ),
                  body: const TabBarView(children: [
                    IsiPukA(),
                    IsiPukB(),
                    IsiPukC(),
                    IsiPukD(),
                    IsiPukE(),
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
    );
  }
}
