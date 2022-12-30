import 'package:bps_cilacap/ketenagakerjaan/isi_body_puk/isi_puk_a.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_body_puk/isi_puk_b.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_body_puk/isi_puk_c.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_body_puk/isi_puk_d.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_body_puk/isi_puk_e.dart';
import 'package:bps_cilacap/restAPI/repository_tenaga_kerja.dart';
import 'package:flutter/material.dart';

class BodyPuk extends StatefulWidget {
  const BodyPuk({super.key});

  @override
  State<BodyPuk> createState() => _BodyPukState();
}

class _BodyPukState extends State<BodyPuk> {
  RepositoryTenagaKerja repositorytenagakerja = RepositoryTenagaKerja();

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
              String th1 = isitenagakerja[index = 4].created_at[0] +
                  isitenagakerja[index = 4].created_at[1] +
                  isitenagakerja[index = 4].created_at[2] +
                  isitenagakerja[index = 4].created_at[3];
              String th2 = isitenagakerja[index = 3].created_at[0] +
                  isitenagakerja[index = 3].created_at[1] +
                  isitenagakerja[index = 3].created_at[2] +
                  isitenagakerja[index = 3].created_at[3];
              String th3 = isitenagakerja[index = 2].created_at[0] +
                  isitenagakerja[index = 2].created_at[1] +
                  isitenagakerja[index = 2].created_at[2] +
                  isitenagakerja[index = 2].created_at[3];
              String th4 = isitenagakerja[index = 1].created_at[0] +
                  isitenagakerja[index = 1].created_at[1] +
                  isitenagakerja[index = 1].created_at[2] +
                  isitenagakerja[index = 1].created_at[3];
              String th5 = isitenagakerja[index = 0].created_at[0] +
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
                      style: TextStyle(color: Colors.transparent),
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
                          text: th5.toString(),
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
