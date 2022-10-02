// ignore_for_file: camel_case_types
import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_bak/isi_bak_a.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_bak/isi_bak_b.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_bak/isi_bak_c.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_bak/isi_bak_d.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_bak/isi_bak_e.dart';
import 'package:bps_cilacap/restAPI/repository_ipm.dart';
import 'package:flutter/material.dart';

class BukanAngkatanKerja extends StatefulWidget {
  const BukanAngkatanKerja({Key? key}) : super(key: key);

  @override
  State<BukanAngkatanKerja> createState() => _BukanAngkatanKerjaState();
}

RepositoryIpm repositorytenagakerja = RepositoryIpm();

class _BukanAngkatanKerjaState extends State<BukanAngkatanKerja> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Bukan Angkatan Kerja'),
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
        body: FutureBuilder(
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
                        IsiBakA(),
                        IsiBakB(),
                        IsiBakC(),
                        IsiBakD(),
                        IsiBakE(),
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
        ));
  }
}
