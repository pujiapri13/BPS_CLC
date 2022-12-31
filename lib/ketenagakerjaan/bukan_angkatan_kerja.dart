// ignore_for_file: camel_case_types
import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_bak/isi_bak_a.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_bak/isi_bak_b.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_bak/isi_bak_c.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_bak/isi_bak_d.dart';
import 'package:bps_cilacap/ketenagakerjaan/isi_bak/isi_bak_e.dart';
import 'package:bps_cilacap/restAPI/repository_bkn_angkatan_kerja.dart';
import 'package:flutter/material.dart';

class BukanAngkatanKerja extends StatefulWidget {
  const BukanAngkatanKerja({Key? key}) : super(key: key);

  @override
  State<BukanAngkatanKerja> createState() => _BukanAngkatanKerjaState();
}

RepositoryBknAngkatanKerja repositoryBknAngkatanKerja =
    RepositoryBknAngkatanKerja();

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
          actions: [
            IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.white,
                    constraints: BoxConstraints.tight(
                      Size(screenWidth, screenHeight),
                    ),
                    context: context,
                    builder: (context) {
                      return ListView(children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Sekolah",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "   Kegiatan bersekolah di sekolah formal dan nonformal, baik pada pendidikan dasar, pendidikan menengah, atau pendidikai tinggi. Tidak termasuk yang sedang libur sekolah/cuti kuliah.",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Mengurus Rumah Tangga",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                              "   Adalah kegiatan mengurus rumah tangga atau membantu mengurus rumah tangga tanpa mendapat upah/gaji. Seluruh anggota rumah tangga yang melakukan kegiatan kerumah tanggaan, seperti: memasak, mencuci,membersihkan rumah, dsb digolongkan sebagai mengurus rumah tangga. Bagi Pembantu Rumah Tangga yang mengerjakan hal yang sama tetapi mendapat upah/gaji digolongkan sebagai bekerja.",
                              textAlign: TextAlign.justify),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Kegiatan Lainnya",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "   Adalah kegiatan selain bekerja, sekolah, dan mengurus rumah tangga. Kegiatan lainnya yang dicakup di sini adalah kegiatan yang bersifat aktif, seperti: olah raga, piknik, kegiatar keagamaan, kegiatan sosial. Tidak termasuk seperti: tidur, malas-malasan, santai, dll.",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ]);
                    },
                  );
                },
                icon: const Icon(Icons.info_outlined))
          ],
        ),
        body: FutureBuilder(
          future: repositoryBknAngkatanKerja.getData(),
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
                              text: isitenagakerja[index = 4].created_at[0] +
                                  isitenagakerja[index = 4].created_at[1] +
                                  isitenagakerja[index = 4].created_at[2] +
                                  isitenagakerja[index = 4].created_at[3],
                            ),
                            Tab(
                              text: isitenagakerja[index = 3].created_at[0] +
                                  isitenagakerja[index = 3].created_at[1] +
                                  isitenagakerja[index = 3].created_at[2] +
                                  isitenagakerja[index = 3].created_at[3],
                            ),
                            Tab(
                              text: isitenagakerja[index = 2].created_at[0] +
                                  isitenagakerja[index = 2].created_at[1] +
                                  isitenagakerja[index = 2].created_at[2] +
                                  isitenagakerja[index = 2].created_at[3],
                            ),
                            Tab(
                              text: isitenagakerja[index = 1].created_at[0] +
                                  isitenagakerja[index = 1].created_at[1] +
                                  isitenagakerja[index = 1].created_at[2] +
                                  isitenagakerja[index = 1].created_at[3],
                            ),
                            Tab(
                              text: isitenagakerja[index = 0].created_at[0] +
                                  isitenagakerja[index = 0].created_at[1] +
                                  isitenagakerja[index = 0].created_at[2] +
                                  isitenagakerja[index = 0].created_at[3],
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
