import 'package:bps_cilacap/Icons/back_icons_icons.dart';
import 'package:bps_cilacap/ketenagakerjaan/body_puk.dart';
import 'package:flutter/material.dart';

class PendudukUsiaKerja extends StatefulWidget {
  const PendudukUsiaKerja({super.key});

  @override
  State<PendudukUsiaKerja> createState() => _PendudukUsiaKerjaState();
}

class _PendudukUsiaKerjaState extends State<PendudukUsiaKerja> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        MediaQuery.of(context).padding.bottom;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perkembangan PUK"),
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
                    Size(screenWidth, screenHeight * 0.3),
                  ),
                  context: context,
                  builder: (context) {
                    return Column(
                      children: [
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 1,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Tingkat Partisipasi Angkatan Kerja (TPAK)",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 3,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Tingkat partisipasi angkatan kerja (TPAK) mengindikasikan besarnya penduduk usia kerja yang aktif secara ekonomi."
                              "TPAP diukur sebagai presentase jumlah angkatan kerja (bekerja dan belum bekerja) terhadap jumlah penduduk usia kerja.",
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 1,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Tingkat Kesempatan Kerja (TKK)",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 3,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Tingkat kesempatan kerja (TKK) mengindikasikan besarnya penduduk usia kerja yang bekerja atau sementara tidak bekerja."
                              "TKK diukur sebagai presentase jumlah penduduk yang bekerja terhadap jumlah penduduk yang termasuk angkatan kerja.",
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 1,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Tingkat Pengangguran Terbuka (TPT)",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Flexible(
                          fit: FlexFit.tight,
                          flex: 3,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: const Text(
                              "Tingkat pengangguran terbuka (TPT) memberikan indikasi tentang penduduk usia kerja yang termasuk dalam pengangguran."
                              "TPT dihitung berdasarkan perbandingan antara jumlah pengangguran (mencari kerja) dengan jumlah angkatan kerja"
                              "dan dinyatakan dalam presentase.",
                              style: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              icon: const Icon(Icons.info_outlined))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(2),
        child: Column(
          children: [
            Container(
              height: screenHeight * 0.15,
              color: Colors.black,
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  child: Text(
                    "Persentase Penduduk Usia Kerja(=> 15 tahun) Kabupaten Cilacap menurut Kegiatan dan Jenis Kelamin",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Flexible(
              child: SizedBox(
                height: screenHeight * 0.80,
                child: const BodyPuk(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
