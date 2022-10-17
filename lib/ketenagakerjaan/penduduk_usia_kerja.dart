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
                    Size(screenWidth, screenHeight),
                  ),
                  context: context,
                  builder: (context) {
                    return ListView(children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "   Konsep/definisi ketenagakerjaan yang digunakan BPS merujuk pada rekomendasi International Labor Organization (ILO) sebagaimana tercantum dalam buku ' Surveys of economically Active Population, employment, Unemployment and Underemployment' An ILO Manual on Concept and Methods, ILO 1992.",
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "   Hal ini dimaksudkan terutama agar data ketenagakerjaan yang dihasilkan dari berbagai survey di Indonesia dapat dibandingkar secara internasional, tanpa mengesampingkan kondisi ketenagakerjaan spesifik Indonesia.",
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Tingkat Partisipasi Angkatan Kerja (TPAK)",
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "   Menurut konsep Labor Force Framework, penduduk dibagi ke dalam dua kelompok, yaitu : Usia Kerja dan Bukan Usia Kerja",
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Penduduk Usia Kerja",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "   Indonesia menggunakan batas bawah usia kerja 15 tahun dan tanpa batas atas usia kerja. Penduduk Usia Kerja dibagi ke dala dua kelompok, yaitu:",
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 15, right: 5),
                        child: const Text(
                          "1. Angkatan Kerja",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 25, right: 5),
                        child: const Text(
                          "   Konsep angkatan kerja merujuk pada kegiatan utama yang dilakukan oleh penduduk usia kerja selama periode tertentu Angkatan kerja adalah penduduk usia kerja yang bekerja atau punya pekerjaan namun sementara tidak bekerja dan penganggur.",
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 15, right: 5),
                        child: const Text(
                          "2. Bukan Angkatan Kerja",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 25, right: 5),
                        child: const Text(
                          "   Penduduk usia kerja termasuk dalam bukan angkatan kerja mencakup: penduduk yang bersekolah, mengurus rumah tangga, dan melakukan kegiatan lainnya.",
                        ),
                      ),
                    ]);
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
